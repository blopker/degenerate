import 'dart:math';

import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/interceptor.dart';

/// A function that delays execution for the given [delay] duration.
typedef RetrySleep = Future<void> Function(Duration delay);

/// A function that returns a random double in the range [0, 1).
typedef RetryRandom = double Function();

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
  /// Creates a [RetryInterceptor] with configurable retry behavior.
  const RetryInterceptor({
    this.maxRetries = 3,
    this.initialDelay = const Duration(milliseconds: 500),
    this.retryWhen,
    this.shouldRetryRequest,
    this.jitterRatio = 0.25,
    this.sleep,
    this.random,
    this.maxDelay,
  });

  /// Maximum number of retries (not counting the initial attempt).
  final int maxRetries;

  /// Delay before the first retry. Subsequent retries multiply by 2.
  final Duration initialDelay;

  /// Custom predicate to decide whether a response should be retried.
  /// If null, retries on 429 and 5xx.
  final bool Function(ApiResponse response)? retryWhen;

  /// Custom predicate to decide whether a request is safe to retry.
  /// If null, retries only idempotent methods by default.
  final bool Function(ApiRequest request)? shouldRetryRequest;

  /// Random jitter ratio applied to exponential backoff.
  ///
  /// `0.25` means the computed delay is randomized within +/-25%.
  final double jitterRatio;

  /// Custom sleep function for testing. Defaults to [Future.delayed].
  final RetrySleep? sleep;

  /// Custom random function for testing. Defaults to [Random.nextDouble].
  final RetryRandom? random;

  /// Maximum delay between retries, capping exponential growth.
  final Duration? maxDelay;

  bool _shouldRetry(ApiResponse response) {
    if (retryWhen != null) return retryWhen!(response);
    return response.statusCode == 429 || response.statusCode >= 500;
  }

  bool _shouldRetryRequest(ApiRequest request) {
    if (shouldRetryRequest != null) return shouldRetryRequest!(request);
    switch (request.method.toUpperCase()) {
      case 'GET':
      case 'HEAD':
      case 'OPTIONS':
      case 'TRACE':
      case 'PUT':
      case 'DELETE':
        return true;
      default:
        return false;
    }
  }

  RetrySleep get _sleep => sleep ?? Future<void>.delayed;
  RetryRandom get _random => random ?? _defaultRandom;
  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    Object? lastError;
    StackTrace? lastStack;
    ApiResponse? previousResponse;

    for (var attempt = 0; attempt <= maxRetries; attempt++) {
      if (attempt > 0) {
        final delay = _computeDelay(
          attempt,
          previousResponse: previousResponse,
        );
        await _sleep(delay);
      }
      try {
        final response = await next(request);
        previousResponse = response;
        if (!_shouldRetry(response) ||
            !_shouldRetryRequest(request) ||
            attempt == maxRetries) {
          return response;
        }
      } on Object catch (e, st) {
        lastError = e;
        lastStack = st;
        if (attempt == maxRetries || !_shouldRetryRequest(request)) break;
      }
    }

    // All retries exhausted with exceptions.
    Error.throwWithStackTrace(lastError!, lastStack!);
  }

  Duration _computeDelay(int attempt, {ApiResponse? previousResponse}) {
    final retryAfter = previousResponse == null
        ? null
        : _parseRetryAfter(previousResponse.headers);
    if (retryAfter != null) return _capDelay(retryAfter);

    final baseDelay = initialDelay * (1 << (attempt - 1));
    final clampedBase = _capDelay(baseDelay);
    if (jitterRatio <= 0) return clampedBase;

    final jitterMultiplier = 1 + ((_random() * 2) - 1) * jitterRatio;
    final jittered = Duration(
      microseconds: (clampedBase.inMicroseconds * jitterMultiplier).round(),
    );
    return _capDelay(jittered);
  }

  Duration _capDelay(Duration delay) {
    if (maxDelay == null || delay <= maxDelay!) return delay;
    return maxDelay!;
  }

  Duration? _parseRetryAfter(Map<String, String> headers) {
    String? value;
    for (final entry in headers.entries) {
      if (entry.key.toLowerCase() == 'retry-after') {
        value = entry.value;
        break;
      }
    }
    if (value == null || value.trim().isEmpty) return null;

    // Only honor integer seconds values (e.g. "120").
    // HTTP date formats are intentionally not supported to avoid
    // depending on dart:io, keeping the runtime web-compatible.
    final seconds = int.tryParse(value.trim());
    if (seconds == null) return null;
    return seconds <= 0 ? Duration.zero : Duration(seconds: seconds);
  }
}

final _rng = Random();
double _defaultRandom() => _rng.nextDouble();
