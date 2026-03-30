import 'dart:async';

import 'api_client.dart';
import 'api_config.dart';
import 'api_result.dart';
import 'cancel_token.dart';
import 'interceptor.dart';
import 'jsonl.dart';
import 'request_options.dart';
import 'sse.dart';

/// Shared execution logic for generated API classes.
///
/// Generated API tag classes mix this in to get `_execute` and
/// `_executeStreaming` without duplicating the pipeline in every file.
mixin ApiExecutor {
  ApiConfig get apiConfig;

  /// Shared execution pipeline: interceptors -> send -> deserialize.
  Future<ApiResult<T, E>> execute<T, E>(
    ApiRequest request, {
    required T Function(ApiResponse) onSuccess,
    E? Function(ApiResponse)? onError,
  }) async {
    try {
      final userCancelToken = request.options?.cancelToken;
      if (userCancelToken?.isCancelled ?? false) {
        throw const CancelledException();
      }

      final effectiveTimeout = request.options?.timeout ?? apiConfig.timeout;
      final extraHeaders = request.options?.extraHeaders;

      // Merge timeout and user cancel into a single adapter-level cancel token.
      final adapterToken = (effectiveTimeout != null || userCancelToken != null)
          ? CancelToken()
          : null;
      Timer? timeoutTimer;
      bool timedOut = false;

      if (adapterToken != null) {
        if (userCancelToken != null) {
          final token = adapterToken;
          userCancelToken.whenCancelled.then((_) {
            if (!token.isCancelled) token.cancel();
          });
        }
        if (effectiveTimeout != null) {
          final token = adapterToken;
          timeoutTimer = Timer(effectiveTimeout, () {
            timedOut = true;
            if (!token.isCancelled) token.cancel();
          });
        }
      }

      final effectiveRequest = request.copyWith(
        headers: extraHeaders != null
            ? {...request.headers, ...extraHeaders}
            : null,
        options: RequestOptions(cancelToken: adapterToken),
      );

      try {
        final chain = buildInterceptorChain(
          interceptors: apiConfig.interceptors,
          terminal: (req) => apiConfig.client.send(req),
        );

        final response = await chain(effectiveRequest);
        timeoutTimer?.cancel();

        try {
          if (response.isSuccessful) {
            return ApiSuccess(
              onSuccess(response),
              statusCode: response.statusCode,
              headers: response.headers,
            );
          }
          return ApiError(
            statusCode: response.statusCode,
            error: onError != null ? onError(response) : null,
            rawError: response.body,
            headers: response.headers,
          );
        } catch (e, st) {
          return ApiParseException(e, st, response: response);
        }
      } on CancelledException {
        timeoutTimer?.cancel();
        if (timedOut) {
          throw TimeoutException('Request timed out', effectiveTimeout);
        }
        rethrow;
      }
    } catch (e, st) {
      return ApiException(e, st);
    }
  }

  /// Streaming execution pipeline: send -> SSE parse -> deserialize.
  Stream<T> executeStreaming<T>(
    ApiRequest request, {
    required T Function(String data) onEvent,
  }) async* {
    final userCancelToken = request.options?.cancelToken;
    if (userCancelToken?.isCancelled ?? false) throw const CancelledException();

    final effectiveTimeout = request.options?.timeout ?? apiConfig.timeout;
    final extraHeaders = request.options?.extraHeaders;

    final adapterToken = (effectiveTimeout != null || userCancelToken != null)
        ? CancelToken()
        : null;
    Timer? timeoutTimer;
    bool timedOut = false;

    if (adapterToken != null) {
      if (userCancelToken != null) {
        final token = adapterToken;
        userCancelToken.whenCancelled.then((_) {
          if (!token.isCancelled) token.cancel();
        });
      }
      if (effectiveTimeout != null) {
        final token = adapterToken;
        timeoutTimer = Timer(effectiveTimeout, () {
          timedOut = true;
          if (!token.isCancelled) token.cancel();
        });
      }
    }

    final effectiveRequest = request.copyWith(
      headers: extraHeaders != null
          ? {...request.headers, ...extraHeaders}
          : null,
      options: RequestOptions(cancelToken: adapterToken),
    );

    try {
      final streamedResponse = await apiConfig.client.sendStreaming(
        effectiveRequest,
      );
      timeoutTimer?.cancel();

      if (!streamedResponse.isSuccessful) {
        final buffered = await streamedResponse.toApiResponse();
        throw ApiStreamError(
          statusCode: buffered.statusCode,
          rawError: buffered.body,
          headers: buffered.headers,
        );
      }

      yield* parseSseStream(
        streamedResponse.byteStream,
      ).map((event) => onEvent(event.data));
    } on CancelledException {
      timeoutTimer?.cancel();
      if (timedOut) {
        throw TimeoutException('Request timed out', effectiveTimeout);
      }
      rethrow;
    }
  }

  /// JSONL streaming pipeline: send -> line parse -> deserialize.
  Stream<T> executeJsonlStreaming<T>(
    ApiRequest request, {
    required T Function(String data) onEvent,
  }) async* {
    final userCancelToken = request.options?.cancelToken;
    if (userCancelToken?.isCancelled ?? false) throw const CancelledException();

    final effectiveTimeout = request.options?.timeout ?? apiConfig.timeout;
    final extraHeaders = request.options?.extraHeaders;

    final adapterToken = (effectiveTimeout != null || userCancelToken != null)
        ? CancelToken()
        : null;
    Timer? timeoutTimer;
    bool timedOut = false;

    if (adapterToken != null) {
      if (userCancelToken != null) {
        final token = adapterToken;
        userCancelToken.whenCancelled.then((_) {
          if (!token.isCancelled) token.cancel();
        });
      }
      if (effectiveTimeout != null) {
        final token = adapterToken;
        timeoutTimer = Timer(effectiveTimeout, () {
          timedOut = true;
          if (!token.isCancelled) token.cancel();
        });
      }
    }

    final effectiveRequest = request.copyWith(
      headers: extraHeaders != null
          ? {...request.headers, ...extraHeaders}
          : null,
      options: RequestOptions(cancelToken: adapterToken),
    );

    try {
      final streamedResponse = await apiConfig.client.sendStreaming(
        effectiveRequest,
      );
      timeoutTimer?.cancel();

      if (!streamedResponse.isSuccessful) {
        final buffered = await streamedResponse.toApiResponse();
        throw ApiStreamError(
          statusCode: buffered.statusCode,
          rawError: buffered.body,
          headers: buffered.headers,
        );
      }

      yield* parseJsonlStream(
        streamedResponse.byteStream,
      ).map((line) => onEvent(line));
    } on CancelledException {
      timeoutTimer?.cancel();
      if (timedOut) {
        throw TimeoutException('Request timed out', effectiveTimeout);
      }
      rethrow;
    }
  }
}
