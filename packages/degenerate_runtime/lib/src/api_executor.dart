import 'dart:async';

import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/api_config.dart';
import 'package:degenerate_runtime/src/api_result.dart';
import 'package:degenerate_runtime/src/cancel_token.dart';
import 'package:degenerate_runtime/src/interceptor.dart';
import 'package:degenerate_runtime/src/jsonl.dart';
import 'package:degenerate_runtime/src/request_options.dart';
import 'package:degenerate_runtime/src/sse.dart';

/// Shared execution logic for generated API classes.
///
/// Generated API tag classes mix this in to get `_execute` and
/// `_executeStreaming` without duplicating the pipeline in every file.
mixin ApiExecutor {
  /// The configuration used for executing API requests.
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
      var timedOut = false;

      if (adapterToken != null) {
        if (userCancelToken != null) {
          final token = adapterToken;
          unawaited(userCancelToken.whenCancelled.then((_) {
            if (!token.isCancelled) token.cancel();
          }));
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
        } on Object catch (e, st) {
          return ApiParseException(e, st, response: response);
        }
      } on CancelledException {
        timeoutTimer?.cancel();
        if (timedOut) {
          throw TimeoutException('Request timed out', effectiveTimeout);
        }
        rethrow;
      }
    } on Object catch (e, st) {
      return ApiException(e, st);
    }
  }

  /// Shared streaming setup: applies interceptors to modify the request
  /// (auth, logging, etc.), then sends via [ApiClient.sendStreaming] and
  /// yields events from the provided [parseStream] function.
  Stream<T> _executeStreamingImpl<T>(
    ApiRequest request, {
    required T Function(String data) onEvent,
    required Stream<String> Function(Stream<List<int>> byteStream) parseStream,
  }) async* {
    final userCancelToken = request.options?.cancelToken;
    if (userCancelToken?.isCancelled ?? false) throw const CancelledException();

    final effectiveTimeout = request.options?.timeout ?? apiConfig.timeout;
    final extraHeaders = request.options?.extraHeaders;

    final adapterToken = (effectiveTimeout != null || userCancelToken != null)
        ? CancelToken()
        : null;
    Timer? timeoutTimer;
    var timedOut = false;

    if (adapterToken != null) {
      if (userCancelToken != null) {
        final token = adapterToken;
        unawaited(userCancelToken.whenCancelled.then((_) {
          if (!token.isCancelled) token.cancel();
        }));
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
      // Run interceptors to apply auth headers, logging, etc.
      // The terminal handler captures the final request and sends it as
      // a streaming request.
      late ApiRequest finalRequest;
      final chain = buildInterceptorChain(
        interceptors: apiConfig.interceptors,
        terminal: (req) async {
          finalRequest = req;
          // Return a dummy response — the real streaming
          // request is sent below.
          return ApiResponse(statusCode: 200, body: '');
        },
      );
      await chain(effectiveRequest);

      final streamedResponse = await apiConfig.client.sendStreaming(
        finalRequest,
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

      yield* parseStream(streamedResponse.byteStream)
          .map((data) => onEvent(data));
    } on CancelledException {
      timeoutTimer?.cancel();
      if (timedOut) {
        throw TimeoutException('Request timed out', effectiveTimeout);
      }
      rethrow;
    } on ApiStreamError {
      rethrow;
    } catch (e) {
      // Wrap raw network/platform exceptions (SocketException, ClientException,
      // etc.) in ApiStreamError so callers have a consistent error type.
      throw ApiStreamError(statusCode: 0, rawError: e.toString());
    }
  }

  /// Streaming execution pipeline: send -> SSE parse -> deserialize.
  ///
  /// Interceptors are applied to the request (auth, logging, etc.) before
  /// sending the streaming request.
  Stream<T> executeStreaming<T>(
    ApiRequest request, {
    required T Function(String data) onEvent,
  }) =>
      _executeStreamingImpl(
        request,
        onEvent: onEvent,
        parseStream: (bytes) =>
            parseSseStream(bytes).map((event) => event.data),
      );

  /// JSONL streaming pipeline: send -> line parse -> deserialize.
  ///
  /// Interceptors are applied to the request (auth, logging, etc.) before
  /// sending the streaming request.
  Stream<T> executeJsonlStreaming<T>(
    ApiRequest request, {
    required T Function(String data) onEvent,
  }) =>
      _executeStreamingImpl(
        request,
        onEvent: onEvent,
        parseStream: parseJsonlStream,
      );
}
