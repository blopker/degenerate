import 'dart:convert';

import 'package:degenerate_runtime/testing.dart';
import 'package:test/test.dart';

final class _TestApi with ApiExecutor {
  _TestApi(this.apiConfig);
  @override
  final ApiConfig apiConfig;
}

void main() {
  group('ApiExecutor', () {
    test('execute returns ApiSuccess on 2xx', () async {
      final client = RecordingClient(
        nextResponse: ApiResponse(statusCode: 200, body: jsonEncode({'id': 1})),
      );
      final api = _TestApi(ApiConfig(client: client));

      final result = await api.execute<Map<String, dynamic>, Never>(
        const ApiRequest(method: 'GET', path: '/test'),
        onSuccess: (r) => jsonDecode(r.body) as Map<String, dynamic>,
      );

      expect(result, isA<ApiSuccess<Map<String, dynamic>, Never>>());
      final success = result as ApiSuccess<Map<String, dynamic>, Never>;
      expect(success.data, {'id': 1});
      expect(success.statusCode, 200);
    });

    test('execute returns ApiError on 4xx', () async {
      final client = RecordingClient(
        nextResponse: ApiResponse(statusCode: 404, body: 'not found'),
      );
      final api = _TestApi(ApiConfig(client: client));

      final result = await api.execute<String, String>(
        const ApiRequest(method: 'GET', path: '/test'),
        onSuccess: (r) => r.body,
        onError: (r) => r.body,
      );

      expect(result, isA<ApiError<String, String>>());
      final error = result as ApiError<String, String>;
      expect(error.statusCode, 404);
      expect(error.error, 'not found');
    });

    test('execute returns ApiException on network failure', () async {
      final client = RecordingClient(
        onRequest: (_) => throw Exception('connection refused'),
      );
      final api = _TestApi(ApiConfig(client: client));

      final result = await api.execute<String, Never>(
        const ApiRequest(method: 'GET', path: '/test'),
        onSuccess: (r) => r.body,
      );

      expect(result, isA<ApiException<String, Never>>());
    });

    test(
      'execute returns ApiParseException on deserialization failure',
      () async {
        final client = RecordingClient(
          nextResponse: ApiResponse(statusCode: 200, body: 'not json'),
        );
        final api = _TestApi(ApiConfig(client: client));

        final result = await api.execute<Map<String, dynamic>, Never>(
          const ApiRequest(method: 'GET', path: '/test'),
          onSuccess: (r) => jsonDecode(r.body) as Map<String, dynamic>,
        );

        expect(result, isA<ApiParseException<Map<String, dynamic>, Never>>());
      },
    );
  });
}
