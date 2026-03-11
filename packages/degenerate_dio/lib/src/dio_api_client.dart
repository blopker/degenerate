import 'dart:async';
import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:dio/dio.dart' as dio;

/// [ApiClient] implementation backed by `package:dio`.
///
/// Configure default headers, interceptors, and cancellation through
/// [ApiConfig] rather than on the [Dio] instance — the generated client
/// manages these concerns. Use the [Dio] instance for low-level settings
/// like proxy configuration or custom [HttpClientAdapter]s.
///
/// **Timeouts:** [ApiConfig.timeout] applies a single overall deadline to the
/// entire request. For more granular control (separate connect, send, and
/// receive timeouts), leave [ApiConfig.timeout] null and configure
/// [Dio.options.connectTimeout], [Dio.options.sendTimeout], and
/// [Dio.options.receiveTimeout] directly — they will surface as
/// [TimeoutException] in [ApiException].
final class DioApiClient implements ApiClient {
  final dio.Dio _inner;
  @override
  final Uri baseUrl;

  DioApiClient({required this.baseUrl, dio.Dio? inner})
    : _inner = inner ?? dio.Dio();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final uri = request.resolveUri(baseUrl);
    final headers = request.resolvedHeaders();

    // Bridge our CancelToken to Dio's native CancelToken for socket-level cancellation.
    final cancelToken = request.options?.cancelToken;
    dio.CancelToken? dioCancelToken;
    if (cancelToken != null) {
      if (cancelToken.isCancelled) throw const CancelledException();
      dioCancelToken = dio.CancelToken();
      cancelToken.whenCancelled.then((_) {
        if (!dioCancelToken!.isCancelled) {
          dioCancelToken!.cancel();
        }
      });
    }

    try {
      final Object? data;
      if (request.body is List<ApiMultipartField>) {
        final fields = request.body as List<ApiMultipartField>;
        final formData = dio.FormData();
        for (final field in fields) {
          switch (field) {
            case ApiMultipartTextField():
              formData.fields.add(MapEntry(field.name, field.value));
            case ApiMultipartFileField():
              formData.files.add(MapEntry(
                field.name,
                dio.MultipartFile.fromBytes(
                  field.bytes,
                  filename: field.filename ?? field.name,
                  contentType: field.contentType != null
                      ? dio.DioMediaType.parse(field.contentType!)
                      : null,
                ),
              ));
          }
        }
        data = formData;
      } else {
        data = request.body;
      }
      final response = await _inner.requestUri<List<int>>(
        uri,
        options: dio.Options(
          method: request.method,
          headers: headers.isNotEmpty ? headers : null,
          contentType: request.body is List<ApiMultipartField>
              ? null
              : request.contentType,
          responseType: dio.ResponseType.bytes,
          // Let us handle status codes ourselves.
          validateStatus: (_) => true,
        ),
        data: data,
        cancelToken: dioCancelToken,
      );
      final bytes = response.data ?? const <int>[];
      return ApiResponse(
        statusCode: response.statusCode ?? 0,
        headers: response.headers.map.map((k, v) => MapEntry(k, v.join(', '))),
        body: utf8.decode(bytes, allowMalformed: true),
        bodyBytes: bytes,
      );
    } on dio.DioException catch (e) {
      if (e.type == dio.DioExceptionType.cancel) {
        throw const CancelledException();
      }
      // Convert Dio's native timeout exceptions to TimeoutException.
      if (e.type == dio.DioExceptionType.connectionTimeout ||
          e.type == dio.DioExceptionType.sendTimeout ||
          e.type == dio.DioExceptionType.receiveTimeout) {
        throw TimeoutException(e.message ?? 'Request timed out');
      }
      if (e.response != null) {
        final r = e.response!;
        final bytes = switch (r.data) {
          List<int>() => r.data as List<int>,
          String() => utf8.encode(r.data as String),
          null => const <int>[],
          _ => utf8.encode(r.data.toString()),
        };
        return ApiResponse(
          statusCode: r.statusCode ?? 0,
          headers: r.headers.map.map((k, v) => MapEntry(k, v.join(', '))),
          body: utf8.decode(bytes, allowMalformed: true),
          bodyBytes: bytes,
        );
      }
      rethrow;
    }
  }

  @override
  Future<void> close() async => _inner.close();
}
