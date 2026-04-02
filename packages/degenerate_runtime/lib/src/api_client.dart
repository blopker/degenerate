import 'dart:convert';
import 'dart:typed_data';

import 'package:degenerate_runtime/src/request_options.dart';
import 'package:degenerate_runtime/src/streamed_api_response.dart';

/// The contract any HTTP client must satisfy.
abstract interface class ApiClient {
  /// Send a request and return a buffered response.
  Future<ApiResponse> send(ApiRequest request);

  /// Send a request and return a streaming response.
  ///
  /// Used for Server-Sent Events and other streaming formats where
  /// the response body should not be fully buffered.
  Future<StreamedApiResponse> sendStreaming(ApiRequest request);

  /// Base URL for all requests. Must not have a trailing slash.
  Uri get baseUrl;

  /// Close/dispose underlying resources.
  Future<void> close();
}

/// A single query parameter with encoding options.
final class ApiQueryParameter {
  /// Creates a new [ApiQueryParameter].
  const ApiQueryParameter({
    required this.name,
    required this.value,
    this.allowReserved = false,
  });

  /// The parameter name.
  final String name;

  /// The parameter value.
  final String value;

  /// Whether reserved characters should be left unencoded.
  final bool allowReserved;
}

/// An outgoing API request.
final class ApiRequest {
  /// Creates a new [ApiRequest].
  const ApiRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.queryParameters = const {},
    this.queryParametersList = const [],
    this.cookies = const {},
    this.body,
    this.contentType,
    this.options,
  });

  /// The HTTP method (e.g. GET, POST).
  final String method;

  /// The request path relative to the base URL.
  final String path;

  /// HTTP headers to include in the request.
  final Map<String, String> headers;

  /// Simple key-value query parameters.
  final Map<String, String> queryParameters;

  /// Query parameters with encoding options.
  final List<ApiQueryParameter> queryParametersList;

  /// Cookies to include in the request.
  final Map<String, String> cookies;

  /// The request body.
  final Object? body;

  /// The content type of the request body.
  final String? contentType;

  /// Additional request options.
  final RequestOptions? options;

  /// Create a copy with selected fields replaced.
  ApiRequest copyWith({
    String? method,
    String? path,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    List<ApiQueryParameter>? queryParametersList,
    Map<String, String>? cookies,
    Object? Function()? body,
    String? Function()? contentType,
    RequestOptions? options,
  }) {
    return ApiRequest(
      method: method ?? this.method,
      path: path ?? this.path,
      headers: headers ?? this.headers,
      queryParameters: queryParameters ?? this.queryParameters,
      queryParametersList: queryParametersList ?? this.queryParametersList,
      cookies: cookies ?? this.cookies,
      body: body != null ? body() : this.body,
      contentType: contentType != null ? contentType() : this.contentType,
      options: options ?? this.options,
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
    if (queryParameters.isEmpty && queryParametersList.isEmpty) return resolved;

    final queryParts = <String>[];
    if (resolved.hasQuery) {
      queryParts.add(resolved.query);
    }
    for (final entry in queryParameters.entries) {
      final key = Uri.encodeQueryComponent(entry.key);
      final val = Uri.encodeQueryComponent(entry.value);
      queryParts.add('$key=$val');
    }
    for (final entry in queryParametersList) {
      final encode = entry.allowReserved
          ? _encodeQueryComponentAllowReserved
          : Uri.encodeQueryComponent;
      queryParts.add('${encode(entry.name)}=${encode(entry.value)}');
    }
    return resolved.replace(query: queryParts.join('&'));
  }

  /// Returns headers with cookies merged into a Cookie header.
  Map<String, String> resolvedHeaders() {
    if (cookies.isEmpty) return headers;
    final cookieHeader = cookies.entries
        .map((entry) => '${entry.key}=${_encodeCookieValue(entry.value)}')
        .join('; ');
    return {
      ...headers,
      'Cookie': headers.containsKey('Cookie')
          ? '${headers['Cookie']}; $cookieHeader'
          : cookieHeader,
    };
  }
}

String _encodeCookieValue(String value) {
  return value
      .replaceAll('%', '%25')
      .replaceAll(';', '%3B')
      .replaceAll('=', '%3D');
}

const _unreservedOrReservedQueryChars =
    r"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:/?#[]@!$&'()*+,;=";

String _encodeQueryComponentAllowReserved(String value) {
  final buffer = StringBuffer();
  for (final byte in utf8.encode(value)) {
    final char = String.fromCharCode(byte);
    if (_unreservedOrReservedQueryChars.contains(char)) {
      buffer.write(char);
    } else {
      buffer.write('%${byte.toRadixString(16).toUpperCase().padLeft(2, '0')}');
    }
  }
  return buffer.toString();
}

/// A raw API response before deserialization.
final class ApiResponse {
  /// Creates a new [ApiResponse].
  ApiResponse({
    required this.statusCode,
    required this.body,
    this.headers = const {},
    List<int>? bodyBytes,
  }) : bodyBytes = switch (bodyBytes) {
         Uint8List() => bodyBytes,
         List<int>() => Uint8List.fromList(bodyBytes),
         null => Uint8List.fromList(utf8.encode(body)),
       };

  /// The HTTP status code.
  final int statusCode;

  /// The response headers.
  final Map<String, String> headers;

  /// The response body as a string.
  final String body;

  /// The response body as raw bytes.
  final Uint8List bodyBytes;

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
