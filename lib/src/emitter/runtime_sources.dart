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
    final resolved = baseUrl.resolve(path);
    return queryParameters.isEmpty
        ? resolved
        : resolved.replace(queryParameters: {
            ...resolved.queryParameters,
            ...queryParameters,
          });
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
''';

const apiResultSource = r'''
/// The result of an API operation.
sealed class ApiResult<T> {
  const ApiResult();
}

final class ApiSuccess<T> extends ApiResult<T> {
  final T data;
  final int statusCode;
  final Map<String, String> headers;

  const ApiSuccess(
    this.data, {
    required this.statusCode,
    this.headers = const {},
  });
}

final class ApiError<T> extends ApiResult<T> {
  final int statusCode;
  final Object? error;
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
final class ApiException<T> extends ApiResult<T> {
  final Object exception;
  final StackTrace stackTrace;

  const ApiException(this.exception, this.stackTrace);
}
''';
