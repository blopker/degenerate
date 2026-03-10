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

    test('returns ApiSuccess on 200', () async {
      final result = await api.getItem(itemId: 'x');

      expect(result, isA<ApiSuccess>());
    });

    test('returns ApiError on non-2xx', () async {
      client.nextResponse = ApiResponse(statusCode: 404, body: 'not found');
      final result = await api.getItem(itemId: 'x');

      expect(result, isA<ApiError>());
      final error = result as ApiError;
      expect(error.statusCode, equals(404));
      expect(error.rawBody, equals('not found'));
    });
  });
}
