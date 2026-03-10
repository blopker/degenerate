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

      expect(client.lastRequest!.queryParameters, contains('fields'));
    });

    test('omits query parameters when not provided', () async {
      await api.getItem(itemId: 'x');

      expect(client.lastRequest!.queryParameters, isEmpty);
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
      client.nextResponse = const ApiResponse(
        statusCode: 404,
        body: 'not found',
      );
      final result = await api.getItem(itemId: 'x');

      expect(result, isA<ApiError>());
      final error = result as ApiError;
      expect(error.statusCode, equals(404));
      expect(error.rawBody, equals('not found'));
    });
  });
}
