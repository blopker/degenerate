import 'package:test/test.dart';

import 'support/generated_client.dart';

void main() {
  test(
    'plain-text scalar response codecs remain typed and lint clean',
    () async {
      final result = await runGeneratedClient(
        {},
        '''
  final client = RecordingClient();
  final api = DefaultApi(ApiConfig(client: client));
  client.nextResponse = ApiResponse(statusCode: 200, body: 'TRUE');
  final bool flag = (await api.flag()).dataOrThrow;
  client.nextResponse = ApiResponse(statusCode: 200, body: '42');
  final int count = (await api.count()).dataOrThrow;
  client.nextResponse = ApiResponse(statusCode: 200, body: '3.5');
  final double ratio = (await api.ratio()).dataOrThrow;
  print(jsonEncode([flag, count, ratio]));
''',
        analyze: true,
        paths: {
          for (final entry in {
            'flag': 'boolean',
            'count': 'integer',
            'ratio': 'number',
          }.entries)
            '/${entry.key}': {
              'get': {
                'operationId': entry.key,
                'responses': {
                  '200': {
                    'description': 'Scalar value',
                    'content': {
                      'text/plain': {
                        'schema': {'type': entry.value},
                      },
                    },
                  },
                },
              },
            },
        },
      );
      expect(result, [true, 42, 3.5]);
    },
  );
}
