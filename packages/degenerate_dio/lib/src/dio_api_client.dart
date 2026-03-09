import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:dio/dio.dart' as dio;

/// [ApiClient] implementation backed by `package:dio`.
final class DioApiClient implements ApiClient {
  final dio.Dio _inner;
  @override
  final Uri baseUrl;

  DioApiClient({required this.baseUrl, dio.Dio? inner})
      : _inner = inner ?? dio.Dio();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final uri = request.resolveUri(baseUrl);
    try {
      final response = await _inner.requestUri<String>(
        uri,
        options: dio.Options(
          method: request.method,
          headers: request.headers.isNotEmpty ? request.headers : null,
          contentType: request.contentType,
          responseType: dio.ResponseType.plain,
          // Let us handle status codes ourselves.
          validateStatus: (_) => true,
        ),
        data: request.body,
      );
      return ApiResponse(
        statusCode: response.statusCode ?? 0,
        headers: response.headers.map.map(
          (k, v) => MapEntry(k, v.join(', ')),
        ),
        body: response.data ?? '',
      );
    } on dio.DioException catch (e) {
      if (e.response != null) {
        final r = e.response!;
        return ApiResponse(
          statusCode: r.statusCode ?? 0,
          headers: r.headers.map.map(
            (k, v) => MapEntry(k, v.join(', ')),
          ),
          body: r.data?.toString() ?? '',
        );
      }
      rethrow;
    }
  }

  @override
  Future<void> close() async => _inner.close();
}
