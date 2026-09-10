import 'package:test/test.dart';

import 'support/generated_client.dart';

Map<String, dynamic> _json(Map<String, dynamic> schema) => {
  'description': 'Response',
  'content': {
    'application/json': {'schema': schema},
  },
};

Map<String, dynamic> _object(String field, String type) => {
  'type': 'object',
  'required': [field],
  'properties': {
    field: {'type': type},
  },
};

void main() {
  test(
    'model names containing Uint8List do not introduce byte imports',
    () async {
      final result = await runGeneratedClient(
        {'Uint8ListPayload': _object('id', 'string')},
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '{"id":"x"}'));
  final value = (await DefaultApi(ApiConfig(client: client)).fetch()).dataOrThrow as FetchSuccess200;
  print(jsonEncode(value.data.id));
''',
        analyze: true,
        paths: {
          '/value': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                '200': _json({
                  r'$ref': '#/components/schemas/Uint8ListPayload',
                }),
                '201': _json({'type': 'integer'}),
              },
            },
          },
        },
      );
      expect(result, 'x');
    },
  );

  test(
    'response variants avoid existing discriminator variant names',
    () async {
      final result = await runGeneratedClient(
        {
          'Payload': _object('id', 'string'),
          'Fetch': {
            'oneOf': [
              {r'$ref': '#/components/schemas/Payload'},
            ],
            'discriminator': {
              'propertyName': 'kind',
              'mapping': {'success200': '#/components/schemas/Payload'},
            },
          },
        },
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 201, body: '42'));
  final value = (await DefaultApi(ApiConfig(client: client)).fetch()).dataOrThrow as FetchSuccess2201;
  print(jsonEncode([value.data, Fetch.fromJson({'kind': 'success200', 'id': 'x'}) is FetchSuccess200]));
''',
        analyze: true,
        paths: {
          '/value': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                '200': _json({'type': 'string'}),
                '201': _json({'type': 'integer'}),
              },
            },
          },
        },
      );
      expect(result, [42, true]);
    },
  );

  test('unsupported media still emits analyzable response variants', () async {
    final result = await runGeneratedClient(
      {'Payload': _object('id', 'string')},
      '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: 'unsupported', headers: {'Content-Type': 'multipart/form-data'}));
  final result = await DefaultApi(ApiConfig(client: client)).fetch();
  print(jsonEncode(result is ApiParseException));
''',
      analyze: true,
      paths: {
        '/value': {
          'get': {
            'operationId': 'fetch',
            'responses': {
              '200': {
                'description': 'Multipart or JSON',
                'content': {
                  'multipart/form-data': {
                    'schema': {r'$ref': '#/components/schemas/Payload'},
                  },
                  'application/json': {
                    'schema': {'type': 'integer'},
                  },
                },
              },
            },
          },
        },
      },
    );
    expect(result, true);
  });

  test(
    'unwrapping preserves typed variants and collapses identical shapes',
    () async {
      final result = await runGeneratedClient(
        {
          'NumberEnvelope': _object('value', 'integer'),
          'TextEnvelope': _object('value', 'string'),
        },
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '{"value":42}'));
  final api = DefaultApi(ApiConfig(client: client));
  final first = (await api.fetch()).dataOrThrow as FetchSuccess200;
  final int number = first.data;
  final ApiResult<int, Never> same = await api.fetchSame();
  client.nextResponse = ApiResponse(statusCode: 201, body: '{"value":"text"}');
  final second = (await api.fetch()).dataOrThrow as FetchSuccess201;
  final String text = second.data;
  print(jsonEncode([number, same.dataOrThrow, text]));
''',
        analyze: true,
        unwrapFields: ['value'],
        paths: {
          for (final op in ['fetch', 'fetchSame'])
            '/$op': {
              'get': {
                'operationId': op,
                'responses': {
                  '200': _json({
                    r'$ref': '#/components/schemas/NumberEnvelope',
                  }),
                  '201': _json({
                    r'$ref':
                        '#/components/schemas/${op == 'fetch' ? 'TextEnvelope' : 'NumberEnvelope'}',
                  }),
                },
              },
            },
        },
      );
      expect(result, [42, 42, 'text']);
    },
  );

  test(
    'binary media variants retain bytes and nullable JSON stays typed',
    () async {
      final result = await runGeneratedClient(
        {},
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 200, body: '', bodyBytes: [255, 0, 1], headers: {'Content-Type': 'application/octet-stream'}));
  final api = DefaultApi(ApiConfig(client: client));
  final binary = (await api.fetch()).dataOrThrow as FetchSuccess200ApplicationOctetStream;
  client.nextResponse = ApiResponse(statusCode: 200, body: 'null', headers: {'Content-Type': 'application/json'});
  final nullable = (await api.fetch()).dataOrThrow as FetchSuccess200ApplicationJson;
  final String? value = nullable.data;
  print(jsonEncode([binary.data, value]));
''',
        analyze: true,
        paths: {
          '/value': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                '200': {
                  'description': 'Binary or JSON',
                  'content': {
                    'application/octet-stream': {
                      'schema': {'type': 'string', 'format': 'binary'},
                    },
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
      expect(result, [
        [255, 0, 1],
        null,
      ]);
    },
  );

  test(
    'response names avoid model, runtime, and cross-tag collisions',
    () async {
      final result = await runGeneratedClient(
        {
          'FetchSuccess': _object('value', 'string'),
          'FetchSuccess2200': _object('id', 'integer'),
        },
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 201, body: '42'));
  final first = (await FirstApi(ApiConfig(client: client)).api()).dataOrThrow as ApiSuccess2201;
  final second = (await SecondApi(ApiConfig(client: client)).api()).dataOrThrow as ApiSuccess3201;
  final third = (await DefaultApi(ApiConfig(client: client)).fetch()).dataOrThrow as FetchSuccess3201;
  print(jsonEncode([first.data, second.data, third.data]));
''',
        analyze: true,
        paths: {
          '/fetch': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                '200': _json({'type': 'string'}),
                '201': _json({'type': 'integer'}),
              },
            },
          },
          for (final tag in ['First', 'Second'])
            '/$tag': {
              'get': {
                'tags': [tag],
                'operationId': 'api',
                'responses': {
                  '200': _json({'type': 'string'}),
                  '201': _json({'type': 'integer'}),
                },
              },
            },
        },
      );
      expect(result, [42, 42, 42]);
    },
  );

  test(
    'union payloads and default errors pass strict generated analysis',
    () async {
      final result = await runGeneratedClient(
        {
          'Value': {
            'oneOf': [
              {'type': 'string'},
              {'type': 'integer'},
            ],
          },
        },
        '''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 400, body: '42'));
  final result = await DefaultApi(ApiConfig(client: client)).fetch();
  final payload = (result as ApiError<void, FetchError>).error as FetchError400;
  print(jsonEncode(payload.data.toJson()));
''',
        analyze: true,
        paths: {
          '/value': {
            'get': {
              'operationId': 'fetch',
              'responses': {
                '204': {'description': 'Empty'},
                '400': _json({r'$ref': '#/components/schemas/Value'}),
                'default': _json({'type': 'boolean'}),
              },
            },
          },
        },
      );
      expect(result, 42);
    },
  );

  test(
    'response files cannot overwrite models with normalized names',
    () async {
      final result = await runGeneratedClient(
        {'N0Success': _object('id', 'string')},
        r'''
  final client = RecordingClient(nextResponse: ApiResponse(statusCode: 201, body: '42'));
  final result = await DefaultApi(ApiConfig(client: client)).$0();
  print(jsonEncode([const N0Success(id: 'kept').id, result is ApiSuccess]));
''',
        analyze: true,
        paths: {
          '/value': {
            'get': {
              'operationId': '0',
              'responses': {
                '200': _json({'type': 'string'}),
                '201': _json({'type': 'integer'}),
              },
            },
          },
        },
      );
      expect(result, ['kept', true]);
    },
  );

  test('inline status responses support exhaustive typed switching', () async {
    final result = await runGeneratedClient(
      {},
      '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final output = <Object?>[];
  for (final entry in <int, Object>{
    200: {'accessToken': 'jwt'},
    201: {'userId': 42},
    401: {'errorMessage': 'denied'},
    418: {'defaultErrorMessage': 'teapot'},
  }.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: jsonEncode(entry.value));
    final ApiResult<PostAuthSuccess, PostAuthError> result = await api.postAuth();
    output.add(switch (result) {
      ApiSuccess(:final data) => switch (data) {
        PostAuthSuccess200(:final data) => data.accessToken,
        PostAuthSuccess201(:final data) => data.userId,
        PostAuthSuccessUnknown() => 'unknown',
      },
      ApiError(:final error) => switch (error) {
        PostAuthError401(:final data) => data.errorMessage,
        PostAuthErrorDefault(:final data) => data.defaultErrorMessage,
        null => 'empty',
      },
      ApiException() => 'exception',
    });
  }
  const PostAuthResponse201 created = PostAuthResponse201(userId: 7);
  const PostAuthResponseDefault fallback = PostAuthResponseDefault(defaultErrorMessage: 'fallback');
  output.addAll([created.userId, fallback.defaultErrorMessage]);
  print(jsonEncode(output));
''',
      paths: {
        '/auth': {
          'post': {
            'operationId': 'postAuth',
            'responses': {
              '200': _json(_object('accessToken', 'string')),
              '201': _json(_object('userId', 'integer')),
              '401': _json(_object('errorMessage', 'string')),
              'default': _json(_object('defaultErrorMessage', 'string')),
            },
          },
        },
      },
    );
    expect(result, ['jwt', 42, 'denied', 'teapot', 7, 'fallback']);
  });

  test(
    'empty and range variants preserve status dispatch and unknown bytes',
    () async {
      final result = await runGeneratedClient(
        {},
        '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  final output = <Object?>[];
  for (final entry in <int, String>{200: 'true', 204: '', 250: 'future', 409: '"conflict"', 422: '42', 503: 'false', 302: 'moved'}.entries) {
    client.nextResponse = ApiResponse(statusCode: entry.key, body: entry.value, headers: {'x-trace': 'trace'});
    final ApiResult<DeleteItemSuccess, DeleteItemError> result = await api.deleteItem();
    output.add(switch (result) {
      ApiSuccess(:final data) => switch (data) {
        DeleteItemSuccess200(:final data) => data,
        DeleteItemSuccess204() => 'empty',
        DeleteItemSuccessUnknown(:final response) => [response.statusCode, response.bodyBytes, response.headers['x-trace']],
      },
      ApiError(:final error) => switch (error) {
        DeleteItemError409(:final data) => data,
        DeleteItemError4xx(:final data) => data,
        DeleteItemError5xx(:final data) => data,
        DeleteItemErrorUnknown(:final response) => [response.statusCode, response.body],
        null => 'empty error',
      },
      ApiException() => 'exception',
    });
  }
  client.nextResponse = ApiResponse(statusCode: 200, body: 'not json');
  output.add(await api.deleteItem() is ApiParseException);
  print(jsonEncode(output));
''',
        analyze: true,
        paths: {
          '/item': {
            'delete': {
              'operationId': 'deleteItem',
              'responses': {
                '200': _json({'type': 'boolean'}),
                '204': {'description': 'No content'},
                '409': _json({'type': 'string'}),
                '4XX': _json({'type': 'integer'}),
                '5XX': _json({'type': 'boolean'}),
              },
            },
          },
        },
      );
      expect(result, [
        true,
        'empty',
        [250, 'future'.codeUnits, 'trace'],
        'conflict',
        42,
        false,
        [302, 'moved'],
        true,
      ]);
    },
  );
}
