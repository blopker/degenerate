import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:http/http.dart' as http;

/// [ApiClient] implementation backed by `package:http`.
final class HttpApiClient implements ApiClient {
  final http.Client _inner;
  @override
  final Uri baseUrl;

  HttpApiClient({required this.baseUrl, http.Client? inner})
    : _inner = inner ?? http.Client();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final uri = request.resolveUri(baseUrl);
    final httpRequest = http.Request(request.method, uri)
      ..headers.addAll(request.resolvedHeaders());
    if (request.contentType != null) {
      httpRequest.headers['content-type'] = request.contentType!;
    }
    if (request.body != null) {
      final body = request.body;
      if (body is String) {
        httpRequest.body = body;
      } else if (body is List<int>) {
        httpRequest.bodyBytes = body;
      } else {
        throw UnsupportedError(
          'HttpApiClient only supports String and List<int> request bodies.',
        );
      }
    }
    final streamed = await _inner.send(httpRequest);
    final bytes = await streamed.stream.toBytes();
    return ApiResponse(
      statusCode: streamed.statusCode,
      headers: streamed.headers,
      body: utf8.decode(bytes, allowMalformed: true),
      bodyBytes: bytes,
    );
  }

  @override
  Future<void> close() async => _inner.close();
}
