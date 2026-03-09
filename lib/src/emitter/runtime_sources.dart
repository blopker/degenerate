/// Canonical source for runtime files emitted into generated packages.
///
/// This is the single source of truth for all runtime client code.
/// The emitter reads from these constants to produce the generated files.
library;

const apiClientSource = r'''
/// The contract any HTTP client must satisfy.
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
    // Concatenate the base path with the request path (don't use Uri.resolve,
    // which treats leading "/" as absolute from the host).
    var basePath = baseUrl.path;
    if (basePath.endsWith('/')) basePath = basePath.substring(0, basePath.length - 1);
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

  const ApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.body,
  });

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
''';

const apiConfigSource = r'''
import 'api_client.dart';

/// Configuration for the generated API classes.
final class ApiConfig {
  final ApiClient client;
  final List<Interceptor> interceptors;
  final Map<String, String> defaultHeaders;
  final Duration? timeout;

  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.timeout,
  });
}

/// Intercept requests/responses for auth, logging, retries, etc.
abstract interface class Interceptor {
  Future<ApiRequest> onRequest(ApiRequest request);
  Future<ApiResponse> onResponse(ApiResponse response);
  Future<ApiResponse> onError(
    Object error,
    StackTrace stack,
    ApiRequest request,
  );
}

/// Base interceptor with no-op defaults.
///
/// Extend this to only override the hooks you need:
/// ```dart
/// class AuthInterceptor extends BaseInterceptor {
///   @override
///   Future<ApiRequest> onRequest(ApiRequest request) async {
///     return ApiRequest(
///       method: request.method,
///       path: request.path,
///       headers: {...request.headers, 'Authorization': 'Bearer $token'},
///       queryParameters: request.queryParameters,
///       body: request.body,
///     );
///   }
/// }
/// ```
class BaseInterceptor implements Interceptor {
  const BaseInterceptor();

  @override
  Future<ApiRequest> onRequest(ApiRequest request) async => request;

  @override
  Future<ApiResponse> onResponse(ApiResponse response) async => response;

  @override
  Future<ApiResponse> onError(
    Object error,
    StackTrace stack,
    ApiRequest request,
  ) async => throw error;
}
''';

const apiResultSource = r'''
/// The result of an API operation.
///
/// [T] is the success data type, [E] is the typed error schema (if any).
sealed class ApiResult<T, E> {
  const ApiResult();
}

final class ApiSuccess<T, E> extends ApiResult<T, E> {
  final T data;
  final int statusCode;
  final Map<String, String> headers;

  const ApiSuccess(
    this.data, {
    required this.statusCode,
    this.headers = const {},
  });
}

final class ApiError<T, E> extends ApiResult<T, E> {
  final int statusCode;
  final E? error;
  final String? rawBody;
  final Map<String, String> headers;

  const ApiError({
    required this.statusCode,
    this.error,
    this.rawBody,
    this.headers = const {},
  });
}

/// Network-level failure (DNS, timeout, connection refused).
final class ApiException<T, E> extends ApiResult<T, E> {
  final Object exception;
  final StackTrace stackTrace;

  const ApiException(this.exception, this.stackTrace);
}
''';
