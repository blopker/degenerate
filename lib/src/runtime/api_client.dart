// GENERATED CODE — DO NOT MODIFY BY HAND

import 'dart:async';

/// The contract any HTTP client must satisfy.
///
/// Implementations are provided for `package:http`, Dio, or any custom client.
/// The generator emits code that only calls these methods.
abstract interface class ApiClient {
  /// Send a request and return a typed response.
  Future<ApiResponse> send(ApiRequest request);

  /// Base URL for all requests. Must not have a trailing slash.
  Uri get baseUrl;

  /// Close/dispose underlying resources.
  Future<void> close();
}

/// An outgoing API request.
final class ApiRequest {
  final String method;
  final String path;
  final Map<String, String> headers;
  final Map<String, String> queryParameters;
  final Object? body;
  final String? contentType;

  const ApiRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.queryParameters = const {},
    this.body,
    this.contentType,
  });

  /// Resolve this request against a base URL.
  Uri resolveUri(Uri baseUrl) {
    final resolved = baseUrl.resolve(path);
    return queryParameters.isEmpty
        ? resolved
        : resolved.replace(
            queryParameters: {...resolved.queryParameters, ...queryParameters},
          );
  }
}

/// A raw API response before deserialization.
final class ApiResponse {
  final int statusCode;
  final Map<String, String> headers;
  final String body;

  const ApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.body,
  });

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
