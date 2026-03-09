import '../api_client.dart';
import '../interceptor.dart';

/// Middleware that retries failed requests with exponential backoff.
///
/// By default retries on 429 (rate limited) and 5xx (server errors),
/// as well as network-level exceptions.
///
/// ```dart
/// final config = ApiConfig(
///   client: myClient,
///   interceptors: [
///     RetryInterceptor(maxRetries: 3),
///   ],
/// );
/// ```
class RetryInterceptor implements Interceptor {
  /// Maximum number of retries (not counting the initial attempt).
  final int maxRetries;

  /// Delay before the first retry. Subsequent retries multiply by 2.
  final Duration initialDelay;

  /// Custom predicate to decide whether a response should be retried.
  /// If null, retries on 429 and 5xx.
  final bool Function(ApiResponse response)? retryWhen;

  const RetryInterceptor({
    this.maxRetries = 3,
    this.initialDelay = const Duration(milliseconds: 500),
    this.retryWhen,
  });

  bool _shouldRetry(ApiResponse response) {
    if (retryWhen != null) return retryWhen!(response);
    return response.statusCode == 429 || response.statusCode >= 500;
  }

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    Object? lastError;
    StackTrace? lastStack;

    for (var attempt = 0; attempt <= maxRetries; attempt++) {
      if (attempt > 0) {
        final delay = initialDelay * (1 << (attempt - 1));
        await Future<void>.delayed(delay);
      }
      try {
        final response = await next(request);
        if (!_shouldRetry(response) || attempt == maxRetries) {
          return response;
        }
      } catch (e, st) {
        lastError = e;
        lastStack = st;
        if (attempt == maxRetries) break;
      }
    }

    // All retries exhausted with exceptions.
    Error.throwWithStackTrace(lastError!, lastStack!);
  }
}
