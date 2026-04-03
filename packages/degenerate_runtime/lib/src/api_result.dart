import 'package:degenerate_runtime/src/api_client.dart';

/// The result of an API operation.
///
/// [T] is the success data type, [E] is the typed error schema (if any).
sealed class ApiResult<T, E> {
  const ApiResult();

  /// Returns the success data, or throws if the result is an error/exception.
  ///
  /// On [ApiError], throws the error result itself.
  /// On [ApiException], rethrows the original exception.
  T get dataOrThrow;
}

/// A successful API response containing deserialized data.
final class ApiSuccess<T, E> extends ApiResult<T, E> {
  /// Creates a successful API result with the given [data] and [statusCode].
  const ApiSuccess(
    this.data, {
    required this.statusCode,
    this.headers = const {},
  });

  /// The deserialized response data.
  final T data;

  /// The HTTP status code of the response.
  final int statusCode;

  /// The response headers.
  final Map<String, String> headers;

  @override
  T get dataOrThrow => data;

  @override
  String toString() => 'ApiSuccess($statusCode, $data)';
}

/// A non-2xx API response, optionally containing a typed error body.
final class ApiError<T, E> extends ApiResult<T, E> implements Exception {
  /// Creates an error API result with the given [statusCode].
  const ApiError({
    required this.statusCode,
    this.error,
    this.rawError,
    this.headers = const {},
  });

  /// The HTTP status code of the error response.
  final int statusCode;

  /// The deserialized error body, if available.
  final E? error;

  /// The raw error body as a string.
  final String? rawError;

  /// The response headers.
  final Map<String, String> headers;

  @override
  T get dataOrThrow => throw this;

  @override
  String toString() => error != null
      ? 'ApiError($statusCode, $error)'
      : 'ApiError($statusCode, $rawError)';
}

/// Network-level failure (DNS, timeout, connection refused).
class ApiException<T, E> extends ApiResult<T, E> {
  /// Creates an API exception result wrapping the given [exception].
  const ApiException(this.exception, this.stackTrace);

  /// The underlying exception that caused the failure.
  final Object exception;

  /// The stack trace of the original exception.
  final StackTrace stackTrace;

  @override
  T get dataOrThrow => Error.throwWithStackTrace(exception, stackTrace);

  @override
  String toString() => 'ApiException($exception)';
}

/// The server returned a response but it could not be deserialized.
///
/// This typically means the server violated its own OpenAPI spec
/// (e.g. returning null for a required field). The original [response]
/// is preserved so callers can fall back to manual parsing.
final class ApiParseException<T, E> extends ApiException<T, E> {
  /// Creates a parse exception wrapping the original [response].
  const ApiParseException(
    super.exception,
    super.stackTrace, {
    required this.response,
  });

  /// The original response that failed to deserialize.
  final ApiResponse response;

  @override
  String toString() => 'ApiParseException(${response.statusCode}, $exception)';
}

/// Thrown when a streaming request receives a non-2xx response.
///
/// Streaming methods return `Stream<T>` instead of `ApiResult`, so
/// errors are surfaced as exceptions rather than result variants.
final class ApiStreamError implements Exception {
  /// Creates a stream error with the given [statusCode].
  const ApiStreamError({
    required this.statusCode,
    this.rawError,
    this.headers = const {},
  });

  /// The HTTP status code of the error response.
  final int statusCode;

  /// The raw error body as a string.
  final String? rawError;

  /// The response headers.
  final Map<String, String> headers;

  @override
  String toString() => 'ApiStreamError($statusCode, $rawError)';
}
