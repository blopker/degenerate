import 'package:test/test.dart';

import 'support/generated_client.dart';

Map<String, dynamic> _response(String type) => {
  'description': type,
  'content': {
    'application/json': {
      'schema': {r'$ref': '#/components/schemas/$type'},
    },
  },
};

void main() {
  final schemas = <String, dynamic>{
    'Item': {
      'type': 'object',
      'required': ['id'],
      'properties': {
        'id': {'type': 'string'},
      },
    },
    'Job': {
      'type': 'object',
      'required': ['job'],
      'properties': {
        'job': {'type': 'string'},
      },
    },
    'Invalid': {
      'type': 'object',
      'required': ['field'],
      'properties': {
        'field': {'type': 'string'},
      },
    },
    'Conflict': {
      'type': 'object',
      'required': ['version'],
      'properties': {
        'version': {'type': 'integer'},
      },
    },
  };

  test('declared empty success is represented by a nullable result', () async {
    final result = await runGeneratedClient(
      schemas,
      '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 204, body: ''));
  final api = DefaultApi(ApiConfig(client: client));
  final Item? empty = (await api.getItem()).dataOrThrow;
  client.nextResponse = ApiResponse(statusCode: 200, body: '{"id":"1"}');
  final Item? item = (await api.getItem()).dataOrThrow;
  print(jsonEncode([empty, item?.id]));
''',
      paths: {
        '/item': {
          'get': {
            'operationId': 'getItem',
            'responses': {
              '200': _response('Item'),
              '204': {'description': 'No item'},
            },
          },
        },
      },
    );
    expect(result, [null, '1']);
  });

  test(
    'success and error variants dispatch by status with typed unions',
    () async {
      final result = await runGeneratedClient(
        schemas,
        '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final output = <Object?>[];
  for (final entry in <int, String>{200: '{"id":"1"}', 202: '{"job":"2"}', 400: '{"field":"name"}', 409: '{"version":3}'}.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: entry.value);
    final ApiResult<OneOf2<Item, Job>, OneOf2<Invalid, Conflict>> result = await api.submit();
    output.add(switch (result) {
      ApiSuccess(:final data) => data.toJson(),
      ApiError(:final error) => error?.toJson(),
      _ => result.toString(),
    });
  }
  print(jsonEncode(output));
''',
        paths: {
          '/submit': {
            'post': {
              'operationId': 'submit',
              'responses': {
                '200': _response('Item'),
                '202': _response('Job'),
                '400': _response('Invalid'),
                '409': _response('Conflict'),
                'default': _response('Invalid'),
              },
            },
          },
        },
      );
      expect(result, [
        {'id': '1'},
        {'job': '2'},
        {'field': 'name'},
        {'version': 3},
      ]);
    },
  );

  test(
    'multiple media types select decoding using response Content-Type',
    () async {
      final result = await runGeneratedClient(
        schemas,
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: 'plain', headers: {'Content-Type': 'text/plain; charset=utf-8'}));
  final api = DefaultApi(ApiConfig(client: client));
  final first = (await api.getItem()).dataOrThrow.toJson();
  client.nextResponse = ApiResponse(statusCode: 200, body: '{"id":"1"}', headers: {'content-type': 'application/json'});
  print(jsonEncode([first, (await api.getItem()).dataOrThrow.toJson()]));
''',
        paths: {
          '/item': {
            'get': {
              'operationId': 'getItem',
              'responses': {
                '200': {
                  'description': 'Item or text',
                  'content': {
                    'application/json': {
                      'schema': {r'$ref': '#/components/schemas/Item'},
                    },
                    'text/plain': {
                      'schema': {'type': 'string'},
                    },
                  },
                },
              },
            },
          },
        },
      );
      expect(result, [
        'plain',
        {'id': '1'},
      ]);
    },
  );

  test('status ranges decode with exact statuses taking precedence', () async {
    final result = await runGeneratedClient(
      schemas,
      '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final output = <Object?>[];
  for (final entry in <int, String>{200: '{"id":"1"}', 299: '{"job":"2"}', 422: '{"field":"name"}', 409: '{"version":3}'}.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: entry.value);
    final ApiResult<OneOf2<Item, Job>, OneOf2<Invalid, Conflict>> result = await api.submit();
    output.add(switch (result) {
      ApiSuccess(:final data) => data.toJson(),
      ApiError(:final error) => error?.toJson(),
      _ => result.toString(),
    });
  }
  print(jsonEncode(output));
''',
      paths: {
        '/submit': {
          'post': {
            'operationId': 'submit',
            'responses': {
              '200': _response('Item'),
              '2XX': _response('Job'),
              '409': _response('Conflict'),
              '4XX': _response('Invalid'),
            },
          },
        },
      },
    );
    expect(result, [
      {'id': '1'},
      {'job': '2'},
      {'field': 'name'},
      {'version': 3},
    ]);
  });

  test(
    'JSON strings and declared nullable bodies retain their wire values',
    () async {
      final result = await runGeneratedClient(
        {},
        '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final output = <String?>[];
  for (final body in ['"hello"', 'null']) {
    client.nextResponse = ApiResponse(statusCode: 200, body: body);
    final String? value = (await api.getValue()).dataOrThrow;
    output.add(value);
  }
  print(jsonEncode(output));
''',
        paths: {
          '/value': {
            'get': {
              'operationId': 'getValue',
              'responses': {
                '200': {
                  'description': 'Nullable string',
                  'content': {
                    'application/json': {
                      'schema': {
                        'type': ['string', 'null'],
                      },
                    },
                  },
                },
              },
            },
          },
        },
      );
      expect(result, ['hello', null]);
    },
  );

  test('media parameters select the more specific declared shape', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '3', headers: {'Content-Type': 'application/json; profile="number"'}));
  final api = DefaultApi(ApiConfig(client: client));
  print(jsonEncode((await api.getValue()).dataOrThrow.toJson()));
''',
      paths: {
        '/value': {
          'get': {
            'operationId': 'getValue',
            'responses': {
              '200': {
                'description': 'Profiled value',
                'content': {
                  'application/json': {
                    'schema': {'type': 'string'},
                  },
                  'application/json; profile=number': {
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
}
