import 'package:test/test.dart';

import 'support/generated_client.dart';

void main() {
  test(
    'requests omit readOnly fields and responses omit writeOnly requirements',
    () async {
      final result = await runGeneratedClient(
        {
          'Account': {
            'type': 'object',
            'required': ['id', 'password'],
            'properties': {
              'id': {'type': 'string', 'readOnly': true},
              'password': {'type': 'string', 'writeOnly': true},
              'children': {
                'type': 'array',
                'items': {r'$ref': '#/components/schemas/Account'},
              },
            },
          },
        },
        '''
  final client = RecordingClient(nextResponse: ApiResponse(
    statusCode: 201, body: jsonEncode({'id': '1', 'children': [{'id': '2'}]}),
  ));
  final result = await DefaultApi(ApiConfig(client: client)).createAccount(
    body: const AccountRequest(password: 'input', children: [AccountRequest(password: 'child')]),
  );
  final account = result.dataOrThrow;
  print(jsonEncode([jsonDecode(client.lastRequest!.body! as String), account.toJson()]));
''',
        paths: {
          '/accounts': {
            'post': {
              'operationId': 'createAccount',
              'requestBody': {
                'required': true,
                'content': {
                  'application/json': {
                    'schema': {r'$ref': '#/components/schemas/Account'},
                  },
                },
              },
              'responses': {
                '201': {
                  'description': 'Created',
                  'content': {
                    'application/json': {
                      'schema': {r'$ref': '#/components/schemas/Account'},
                    },
                  },
                },
              },
            },
          },
        },
      );
      expect(result, [
        {
          'password': 'input',
          'children': [
            {'password': 'child'},
          ],
        },
        {
          'id': '1',
          'children': [
            {'id': '2'},
          ],
        },
      ]);
    },
  );
}
