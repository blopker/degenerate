import 'dart:convert';
import 'dart:typed_data';

/// The contract any HTTP client must satisfy.
abstract interface class ApiClient {
  /// Send a request and return a response.
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

  /// Create a copy with selected fields replaced.
  ApiRequest copyWith({
    String? method,
    String? path,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Object? Function()? body,
    String? Function()? contentType,
  }) {
    return ApiRequest(
      method: method ?? this.method,
      path: path ?? this.path,
      headers: headers ?? this.headers,
      queryParameters: queryParameters ?? this.queryParameters,
      body: body != null ? body() : this.body,
      contentType: contentType != null ? contentType() : this.contentType,
    );
  }

  /// Resolve this request against a base URL.
  Uri resolveUri(Uri baseUrl) {
    var basePath = baseUrl.path;
    if (basePath.endsWith('/')) {
      basePath = basePath.substring(0, basePath.length - 1);
    }
    final fullPath = '$basePath$path';
    final resolved = baseUrl.replace(path: fullPath);
    if (queryParameters.isEmpty) return resolved;
    final existing = resolved.queryParameters;
    return resolved.replace(
      queryParameters: existing.isEmpty
          ? queryParameters
          : {...existing, ...queryParameters},
    );
  }
}

/// A raw API response before deserialization.
final class ApiResponse {
  final int statusCode;
  final Map<String, String> headers;
  final String body;
  final Uint8List bodyBytes;

  ApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.body,
    List<int>? bodyBytes,
  }) : bodyBytes = switch (bodyBytes) {
         Uint8List() => bodyBytes,
         List<int>() => Uint8List.fromList(bodyBytes),
         null => Uint8List.fromList(utf8.encode(body)),
       };

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
