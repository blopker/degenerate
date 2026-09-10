import 'dart:convert';

import 'package:degenerate/src/generator.dart';
import 'package:test/test.dart';

import 'support/generated_client.dart';

Map<String, dynamic> _response(String type) => {
  'description': type,
  'content': {
    'application/json': {
      'schema': {'type': type},
    },
  },
};

Map<String, dynamic> _paths(Map<String, dynamic> responses) => {
  '/value': {
    'get': {
      'operationId': 'getValue',
      'responses': {
        '204': {'description': 'No content'},
        ...responses,
      },
    },
  },
};

void main() {
  for (final (name, responses, pattern) in [
    ('full range', {'4XX': _response('string')}, 'case >= 400 && < 500:'),
    (
      'range with an exact override',
      {'4XX': _response('string'), '409': _response('integer')},
      'case >= 400 && < 409 || >= 410 && < 500:',
    ),
    (
      'sparse statuses',
      {
        for (final status in [400, 401, 404, 499])
          '$status': _response('string'),
      },
      'case 400 || 401 || 404 || 499:',
    ),
  ]) {
    test('$name uses compact status patterns', () async {
      final files = await Generator(
        GeneratorConfig(
          inputPath: '-',
          stdinContent: jsonEncode({
            'openapi': '3.1.0',
            'info': {'title': 'Status patterns', 'version': '1.0'},
            'paths': _paths(responses),
          }),
          packageName: 'generated',
          dryRun: true,
          quiet: true,
        ),
      ).generate();
      final source =
          files['models/get_value_error.dart'] ??
          files['apis/default_api.dart']!;
      expect(source, contains(pattern));
      expect(
        RegExp('^case ', multiLine: true).allMatches(source).length,
        lessThanOrEqualTo(2),
      );
    });
  }

  test(
    'range boundaries, exact overrides, and default decoding stay distinct',
    () async {
      final result = await runGeneratedClient(
        {},
        '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final values = <Object?>[];
  for (final entry in <int, Object>{399: true, 400: 'range', 408: 'range', 409: 1, 410: 'range', 499: 'range', 500: false}.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: jsonEncode(entry.value));
    final result = await api.getValue();
    values.add(switch (result) {
      ApiError(:final error) => switch (error) {
        GetValueError4xx(:final data) => data,
        GetValueError409(:final data) => data,
        GetValueErrorDefault(:final data) => data,
        null => null,
      },
      _ => result.toString(),
    });
  }
  print(jsonEncode(values));
''',
        paths: _paths({
          '4XX': _response('string'),
          '409': _response('integer'),
          'default': _response('boolean'),
        }),
      );
      expect(result, [true, 'range', 'range', 1, 'range', 'range', false]);
    },
  );
}
