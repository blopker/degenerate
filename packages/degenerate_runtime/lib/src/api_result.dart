import 'api_client.dart';

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

  @override
  String toString() => 'ApiSuccess($statusCode, $data)';
}

final class ApiError<T, E> extends ApiResult<T, E> {
  final int statusCode;
  final E? error;
  final String? rawError;
  final Map<String, String> headers;

  const ApiError({
    required this.statusCode,
    this.error,
    this.rawError,
    this.headers = const {},
  });

  @override
  String toString() =>
      error != null ? 'ApiError($statusCode, $error)' : 'ApiError($statusCode, $rawError)';
}

/// Network-level failure (DNS, timeout, connection refused).
class ApiException<T, E> extends ApiResult<T, E> {
  final Object exception;
  final StackTrace stackTrace;

  const ApiException(this.exception, this.stackTrace);

  @override
  String toString() => 'ApiException($exception)';
}

/// The server returned a response but it could not be deserialized.
///
/// This typically means the server violated its own OpenAPI spec
/// (e.g. returning null for a required field). The original [response]
/// is preserved so callers can fall back to manual parsing.
final class ApiParseException<T, E> extends ApiException<T, E> {
  final ApiResponse response;

  const ApiParseException(
    super.exception,
    super.stackTrace, {
    required this.response,
  });

  @override
  String toString() => 'ApiParseException(${response.statusCode}, $exception)';
}

/// Thrown when a streaming request receives a non-2xx response.
///
/// Streaming methods return `Stream<T>` instead of `ApiResult`, so
/// errors are surfaced as exceptions rather than result variants.
final class ApiStreamError implements Exception {
  final int statusCode;
  final String? rawError;
  final Map<String, String> headers;

  const ApiStreamError({
    required this.statusCode,
    this.rawError,
    this.headers = const {},
  });

  @override
  String toString() => 'ApiStreamError($statusCode, $rawError)';
}
