import 'dart:convert';
import 'dart:io';

import 'package:degenerate/src/generator.dart';
import 'package:test/test.dart';

/// Compile and run freshly generated code so field type errors cannot hide
/// behind syntactically valid emitter output or stale snapshots.
Future<dynamic> _runClient(
  Map<String, dynamic> schemas,
  String program, {
  required OmittableMode mode,
  Map<String, dynamic> paths = const {},
}) async {
  final root = Directory('outputs/omittable_tests')
    ..createSync(recursive: true);
  final dir = root.createTempSync('client_');
  addTearDown(() => dir.deleteSync(recursive: true));
  final files = await Generator(
    GeneratorConfig(
      inputPath: '-',
      stdinContent: jsonEncode({
        'openapi': '3.1.0',
        'info': {'title': 'Regression', 'version': '1.0'},
        'paths': paths,
        'components': {'schemas': schemas},
      }),
      packageName: 'generated',
      dryRun: true,
      quiet: true,
      omittable: mode,
    ),
  ).generate();
  for (final entry in files.entries.where((e) => e.key.endsWith('.dart'))) {
    final file = File('${dir.path}/${entry.key}');
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(entry.value);
  }
  final runner = File('${dir.path}/probe.dart')
    ..writeAsStringSync('''
import 'dart:convert';
import 'generated.dart';
import 'package:degenerate_runtime/testing.dart';

Future<void> main() async {
$program
}
''');
  final result = await Process.run(Platform.resolvedExecutable, [
    '--packages=${File('.dart_tool/package_config.json').absolute.path}',
    runner.path,
  ]);
  expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  return jsonDecode(result.stdout as String);
}

Map<String, dynamic> _operation(
  String name, {
  String location = 'query',
  String style = 'form',
  bool explode = true,
  bool allowReserved = false,
}) => {
  'get': {
    'operationId': name,
    'parameters': [
      {
        'name': 'filter',
        'in': location,
        'required': location == 'path',
        'style': style,
        'explode': explode,
        if (allowReserved) 'allowReserved': true,
        'schema': {r'$ref': '#/components/schemas/Filter'},
      },
    ],
    'responses': {
      '204': {'description': 'Done'},
    },
  },
};

void main() {
  for (final mode in OmittableMode.values) {
    group(mode.name, () {
      test('binary fields encode base64 and preserve null presence', () async {
        final result = await _runClient(
          {
            'Blob': {
              'type': 'object',
              'required': ['data'],
              'properties': {
                'data': {
                  'type': ['string', 'null'],
                  'format': 'byte',
                },
                'thumb': {
                  'type': ['string', 'null'],
                  'format': 'binary',
                },
                'raw': {'type': 'string', 'format': 'byte'},
                'chunks': {
                  'type': 'array',
                  'items': {
                    'type': ['string', 'null'],
                    'format': 'byte',
                  },
                },
              },
            },
          },
          '''
  print(jsonEncode([
    Blob.fromJson({'data': null}).toJson(),
    Blob.fromJson({'data': 'AQID', 'thumb': null, 'raw': null}).toJson(),
    Blob.fromJson({
      'data': 'AQID', 'thumb': 'BAU=', 'raw': 'Bg==',
      'chunks': ['Bw==', null],
    }).toJson(),
  ]));
''',
          mode: mode,
        );
        expect(result, [
          {'data': null},
          {
            'data': 'AQID',
            if (mode != OmittableMode.off) 'thumb': null,
            if (mode == OmittableMode.all) 'raw': null,
          },
          {
            'data': 'AQID',
            'thumb': 'BAU=',
            'raw': 'Bg==',
            'chunks': ['Bw==', null],
          },
        ]);
      });

      test(
        'object query and path parameters send scalars and omit nulls',
        () async {
          final result = await _runClient(
            {
              'Filter': {
                'type': 'object',
                'required': ['requiredTerm'],
                'properties': {
                  'term': {
                    'type': ['string', 'null'],
                  },
                  'count': {
                    'type': ['integer', 'null'],
                  },
                  'plain': {'type': 'string'},
                  'enabled': {'type': 'boolean', 'default': true},
                  'requiredTerm': {
                    'type': ['string', 'null'],
                  },
                },
              },
            },
            '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 204, body: ''));
  final api = DefaultApi(ApiConfig(client: client));
  final results = <Object>[];
  for (final json in <Map<String, dynamic>>[
    {'requiredTerm': null},
    {'requiredTerm': null, 'term': null, 'count': null, 'plain': null},
    {'requiredTerm': null, 'term': 'a/b', 'count': 3, 'plain': 'x y', 'enabled': true},
  ]) {
    final filter = Filter.fromJson(json);
    for (final call in [api.deep, api.form, api.joined, api.reserved]) {
      await call(filter: filter);
      results.add(client.lastRequest!.resolveUri(client.baseUrl).queryParameters);
    }
    await api.path(filter: filter);
    results.add(client.lastRequest!.path);
    await api.explodedPath(filter: filter);
    results.add(client.lastRequest!.path);
  }
  await api.deep();
  results.add(client.lastRequest!.queryParameters);
  print(jsonEncode(results));
''',
            mode: mode,
            paths: {
              '/deep': _operation('deep', style: 'deepObject'),
              '/form': _operation('form'),
              '/joined': _operation('joined', explode: false),
              '/reserved': _operation(
                'reserved',
                explode: false,
                allowReserved: true,
              ),
              '/path/{filter}': _operation(
                'path',
                location: 'path',
                style: 'simple',
                explode: false,
              ),
              '/exploded/{filter}': _operation(
                'explodedPath',
                location: 'path',
                style: 'simple',
              ),
            },
          );
          const empty = [
            <String, String>{},
            <String, String>{},
            {'filter': ''},
            {'filter': ''},
            '/path/',
            '/exploded/',
          ];
          expect(result, [
            ...empty,
            ...empty,
            {
              'filter[term]': 'a/b',
              'filter[count]': '3',
              'filter[plain]': 'x y',
              'filter[enabled]': 'true',
            },
            {'term': 'a/b', 'count': '3', 'plain': 'x y', 'enabled': 'true'},
            {'filter': 'term,a/b,count,3,plain,x y,enabled,true'},
            {'filter': 'term,a/b,count,3,plain,x y,enabled,true'},
            '/path/term,a%2Fb,count,3,plain,x%20y,enabled,true',
            '/exploded/term=a%2Fb,count=3,plain=x%20y,enabled=true',
            <String, dynamic>{},
          ]);
        },
      );

      test(
        'Omittable schema and references coexist with the runtime wrapper',
        () async {
          final result = await _runClient(
            {
              'OmittableModel': {
                'type': 'object',
                'properties': {
                  'id': {'type': 'string'},
                },
              },
              'Omittable': {
                'type': 'object',
                'properties': {
                  'name': {
                    'type': ['string', 'null'],
                  },
                  'other': {r'$ref': '#/components/schemas/OmittableModel'},
                },
              },
              'Container': {
                'type': 'object',
                'properties': {
                  'entry': {r'$ref': '#/components/schemas/Omittable'},
                },
              },
            },
            '''
  final model = Container.fromJson({
    'entry': {'name': 'ok', 'other': {'id': '1'}},
  });
  print(jsonEncode([model.toJson(), const Omittable('runtime').value]));
''',
            mode: mode,
          );
          expect(result, [
            {
              'entry': {
                'name': 'ok',
                'other': {'id': '1'},
              },
            },
            'runtime',
          ]);
        },
      );
    });
  }
}
