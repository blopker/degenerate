import 'package:test/test.dart';

import 'support/generated_client.dart';

Map<String, dynamic> _jsonResponse(Map<String, dynamic> schema) => {
  'description': 'Response',
  'content': {
    'application/json': {'schema': schema},
  },
};

void main() {
  for (final errors in [false, true]) {
    test(
      'response variants preserve per-status nullability (errors=$errors)',
      () async {
        final statuses = errors ? [400, 401, 402] : [200, 201, 202];
        final result = await runGeneratedClient(
          {},
          '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: ${statuses[1]}, body: 'null'));
  final result = await DefaultApi(ApiConfig(client: client)).fetch();
  print(jsonEncode(switch (result) {
    ApiSuccess(:final data) => ${errors ? 'null' : '(data as FetchSuccess201).data'},
    ApiError(:final error) => ${errors ? '(error as FetchError401).data' : 'null'},
    _ => 'failed',
  }));
''',
          paths: {
            '/fetch': {
              'get': {
                'operationId': 'fetch',
                'responses': {
                  '${statuses[0]}': _jsonResponse({'type': 'string'}),
                  '${statuses[1]}': _jsonResponse({
                    'type': ['string', 'null'],
                  }),
                  '${statuses[2]}': _jsonResponse({'type': 'integer'}),
                },
              },
            },
          },
        );
        expect(result, isNull);
      },
    );
  }

  test('declared success stays separate from the default error type', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final values = <Object?>[];
  for (final entry in <int, Object>{200: 'declared', 201: 'compatible', 500: 3}.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: jsonEncode(entry.value));
    final ApiResult<String, int> result = await api.fetch();
    values.add(switch (result) {
      ApiSuccess(:final data) => data,
      ApiError(:final error) => error,
      _ => result.toString(),
    });
  }
  print(jsonEncode(values));
''',
      paths: {
        '/fetch': {
          'get': {
            'operationId': 'fetch',
            'responses': {
              '200': _jsonResponse({'type': 'string'}),
              'default': _jsonResponse({'type': 'integer'}),
            },
          },
        },
      },
    );
    expect(result, ['declared', 'compatible', 3]);
  });

  test('an empty default does not make a declared success nullable', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '"value"'));
  final ApiResult<String, Never> result = await DefaultApi(ApiConfig(client: client)).fetch();
  print(jsonEncode(result.dataOrThrow.length));
''',
      paths: {
        '/fetch': {
          'get': {
            'operationId': 'fetch',
            'responses': {
              '200': _jsonResponse({'type': 'string'}),
              'default': {'description': 'Unexpected error'},
            },
          },
        },
      },
    );
    expect(result, 5);
  });

  test('default supplies both types when no success is declared', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final values = <int?>[];
  for (final status in [200, 500]) {
    client.nextResponse = ApiResponse(statusCode: status, body: '3');
    final ApiResult<int, int> result = await api.fetch();
    values.add(switch (result) {
      ApiSuccess(:final data) => data,
      ApiError(:final error) => error,
      _ => -1,
    });
  }
  print(jsonEncode(values));
''',
      paths: {
        '/fetch': {
          'get': {
            'operationId': 'fetch',
            'responses': {
              'default': _jsonResponse({'type': 'integer'}),
            },
          },
        },
      },
    );
    expect(result, [3, 3]);
  });

  test('response media ranges select the matching decoder', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '3', headers: {'Content-Type': 'text/plain'}));
  print(jsonEncode(((await DefaultApi(ApiConfig(client: client)).fetch()).dataOrThrow as FetchSuccess200Text).data));
''',
      paths: {
        '/fetch': {
          'get': {
            'operationId': 'fetch',
            'responses': {
              '200': {
                'description': 'JSON or text',
                'content': {
                  'application/json': {
                    'schema': {'type': 'string'},
                  },
                  'text/*': {
                    'schema': {'type': 'integer'},
                  },
                },
              },
            },
          },
        },
      },
    );
    expect(result, 3);
  });

  test(
    'more than nine response shapes retain directly typed payloads',
    () async {
      final schemas = <String, dynamic>{
        for (var i = 0; i < 11; i++)
          'Shape$i': {
            'type': 'object',
            'required': ['value$i'],
            'properties': {
              'value$i': {'type': 'integer'},
            },
          },
      };
      final result = await runGeneratedClient(
        schemas,
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 210, body: '{"value10":10}'));
  final result = (await DefaultApi(ApiConfig(client: client)).fetch()).dataOrThrow as FetchSuccess210;
  final Shape10 data = result.data;
  print(jsonEncode(data.toJson()));
''',
        paths: {
          '/fetch': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                for (var i = 0; i < 11; i++)
                  '${200 + i}': _jsonResponse({
                    r'$ref': '#/components/schemas/Shape$i',
                  }),
              },
            },
          },
        },
      );
      expect(result, {'value10': 10});
    },
  );
}
