import 'dart:typed_data';

import 'package:degenerate_runtime/testing.dart';
import 'package:spec_03_operations_parameters_request_body/spec_03_operations_parameters_request_body.dart';
import 'package:test/test.dart';

void main() {
  late RecordingClient client;
  late ItemsApi api;

  setUp(() {
    client = RecordingClient();
    api = ItemsApi(ApiConfig(client: client));
  });

  group('getItem', () {
    test('sends GET with path parameter', () async {
      await api.getItem(itemId: 'abc-123');

      expect(client.lastRequest!.method, equals('GET'));
      expect(client.lastRequest!.path, equals('/items/abc-123'));
    });

    test('URL-encodes path parameters', () async {
      await api.getItem(itemId: 'has spaces/and/slashes');

      expect(
        client.lastRequest!.path,
        equals('/items/has%20spaces%2Fand%2Fslashes'),
      );
    });

    test('sends query parameters when provided', () async {
      await api.getItem(itemId: 'x', fields: ['name', 'status']);

      expect(client.lastRequest!.queryParametersList, hasLength(1));
      expect(
        client.lastRequest!.queryParametersList.single.name,
        equals('fields'),
      );
      expect(
        client.lastRequest!.queryParametersList.single.value,
        equals('name,status'),
      );
      expect(
        client.lastRequest!.queryParametersList.single.allowReserved,
        isTrue,
      );
    });

    test(
      'preserves reserved characters for allowReserved query params',
      () async {
        await api.getItem(itemId: 'x', fields: ['name', 'status/owner']);

        final uri = client.lastRequest!.resolveUri(client.baseUrl);
        expect(
          uri.toString(),
          equals('http://localhost/items/x?fields=name,status/owner'),
        );
      },
    );

    test('serializes pipeDelimited arrays into single query values', () async {
      await api.getItem(itemId: 'x', tagsPipe: ['name', 'status']);

      expect(
        client.lastRequest!.queryParameters['tagsPipe'],
        equals('name|status'),
      );
      final uri = client.lastRequest!.resolveUri(client.baseUrl);
      expect(
        uri.toString(),
        equals('http://localhost/items/x?tagsPipe=name%7Cstatus'),
      );
    });

    test('serializes spaceDelimited arrays into single query values', () async {
      await api.getItem(itemId: 'x', tagsSpace: ['name', 'status']);

      expect(
        client.lastRequest!.queryParameters['tagsSpace'],
        equals('name status'),
      );
      final uri = client.lastRequest!.resolveUri(client.baseUrl);
      expect(
        uri.toString(),
        equals('http://localhost/items/x?tagsSpace=name+status'),
      );
    });

    test('serializes deepObject params into bracketed query keys', () async {
      await api.getItem(
        itemId: 'x',
        filter: const GetItemFilter(status: 'active', limit: 10),
      );

      expect(
        client.lastRequest!.queryParameters['filter[status]'],
        equals('active'),
      );
      expect(
        client.lastRequest!.queryParameters['filter[limit]'],
        equals('10'),
      );
      final uri = client.lastRequest!.resolveUri(client.baseUrl);
      expect(
        uri.toString(),
        equals(
          'http://localhost/items/x?filter%5Bstatus%5D=active&filter%5Blimit%5D=10',
        ),
      );
    });

    test('omits query parameters when not provided', () async {
      await api.getItem(itemId: 'x');

      expect(client.lastRequest!.queryParameters, isEmpty);
      expect(client.lastRequest!.queryParametersList, isEmpty);
    });

    test('sends header parameter when provided', () async {
      await api.getItem(itemId: 'x', xTraceId: 'trace-abc');

      expect(client.lastRequest!.headers['X-Trace-Id'], equals('trace-abc'));
    });

    test('omits header parameter when not provided', () async {
      await api.getItem(itemId: 'x');

      expect(client.lastRequest!.headers, isNot(contains('X-Trace-Id')));
    });

    test('sends cookie parameter when provided', () async {
      await api.getItem(itemId: 'x', session: 'sess-123');

      expect(client.lastRequest!.cookies['session'], equals('sess-123'));
      expect(
        client.lastRequest!.resolvedHeaders()['Cookie'],
        equals('session=sess-123'),
      );
    });

    test('returns ApiSuccess on 200', () async {
      final result = await api.getItem(itemId: 'x');

      expect(result, isA<ApiSuccess<void, Never>>());
    });

    test('returns ApiError on non-2xx', () async {
      client.nextResponse = ApiResponse(statusCode: 404, body: 'not found');
      final result = await api.getItem(itemId: 'x');

      expect(result, isA<ApiError<void, Never>>());
      final error = result as ApiError<void, Never>;
      expect(error.statusCode, equals(404));
      expect(error.rawError, equals('not found'));
    });
  });

  group('uploadFile (multipart/form-data)', () {
    test('sends POST with multipart body fields', () async {
      final bytes = Uint8List.fromList([0x89, 0x50, 0x4E, 0x47]);
      await api.uploadFile(
        body: UploadFileRequest(file: bytes, description: 'A photo'),
      );

      expect(client.lastRequest!.method, equals('POST'));
      expect(client.lastRequest!.path, equals('/upload'));
      expect(client.lastRequest!.body, isA<List<ApiMultipartField>>());

      final fields = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields, hasLength(2));

      // File field
      expect(fields[0], isA<ApiMultipartFileField>());
      final file = fields[0] as ApiMultipartFileField;
      expect(file.name, equals('file'));
      expect(file.bytes, equals(bytes));

      // Text field
      expect(fields[1], isA<ApiMultipartTextField>());
      final desc = fields[1] as ApiMultipartTextField;
      expect(desc.name, equals('description'));
      expect(desc.value, equals('A photo'));
    });

    test('includes optional text field when provided', () async {
      await api.uploadFile(
        body: UploadFileRequest(
          file: Uint8List(0),
          description: 'test',
          tags: 'a,b',
        ),
      );

      final fields = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields, hasLength(3));
      final tags = fields[2] as ApiMultipartTextField;
      expect(tags.name, equals('tags'));
      expect(tags.value, equals('a,b'));
    });

    test('omits optional text field when null', () async {
      await api.uploadFile(
        body: UploadFileRequest(
          file: Uint8List(0),
          description: 'test',
        ),
      );

      final fields = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields, hasLength(2));
    });

    test('sets contentType to multipart/form-data', () async {
      await api.uploadFile(
        body: UploadFileRequest(file: Uint8List(0), description: 'test'),
      );

      expect(client.lastRequest!.contentType, equals('multipart/form-data'));
    });
  });

  group('createToken (application/x-www-form-urlencoded)', () {
    test('sends POST with form-urlencoded body', () async {
      await api.createToken(
        body: const CreateTokenRequest(grantType: 'client_credentials'),
      );

      expect(client.lastRequest!.method, equals('POST'));
      expect(client.lastRequest!.path, equals('/token'));
      expect(client.lastRequest!.body, isA<String>());
      expect(
        client.lastRequest!.body! as String,
        equals('grant_type=client_credentials'),
      );
    });

    test('includes optional fields when provided', () async {
      await api.createToken(
        body: const CreateTokenRequest(
          grantType: 'client_credentials',
          scope: 'read write',
          timeout: 3600,
        ),
      );

      final body = client.lastRequest!.body! as String;
      expect(body, contains('grant_type=client_credentials'));
      expect(body, contains('scope=read+write'));
      expect(body, contains('timeout=3600'));
      // Fields joined by &
      expect(body.split('&'), hasLength(3));
    });

    test('omits optional fields when null', () async {
      await api.createToken(
        body: const CreateTokenRequest(grantType: 'password'),
      );

      final body = client.lastRequest!.body! as String;
      expect(body, equals('grant_type=password'));
    });

    test('URL-encodes special characters in values', () async {
      await api.createToken(
        body: const CreateTokenRequest(
          grantType: 'urn:ietf:params:oauth:grant-type:jwt-bearer',
          scope: 'a&b=c',
        ),
      );

      final body = client.lastRequest!.body! as String;
      final parts = body.split('&');
      // grant_type value should be encoded
      expect(
        parts[0],
        equals(
          'grant_type=${Uri.encodeQueryComponent('urn:ietf:params:oauth:grant-type:jwt-bearer')}',
        ),
      );
      // scope value with & and = should be encoded
      expect(parts[1], equals('scope=a%26b%3Dc'));
    });

    test('sets Content-Type header', () async {
      await api.createToken(
        body: const CreateTokenRequest(grantType: 'test'),
      );

      expect(
        client.lastRequest!.headers['Content-Type'],
        equals('application/x-www-form-urlencoded'),
      );
    });
  });
}
