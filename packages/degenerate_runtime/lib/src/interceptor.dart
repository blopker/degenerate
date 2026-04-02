import 'package:degenerate_runtime/src/api_client.dart';

/// A function that processes a request and returns a response.
typedef Handler = Future<ApiResponse> Function(ApiRequest request);

/// Middleware that can inspect/modify requests and responses.
///
/// Each interceptor receives the request and a [Handler] representing
/// the rest of the chain. Call `next(request)` to proceed, or return
/// early to short-circuit. Calling `next` multiple times enables retries.
///
/// ```dart
/// class MyInterceptor implements Interceptor {
///   @override
///   Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
///     final modified = request.copyWith(
///       headers: {...request.headers, 'X-Custom': 'value'},
///     );
///     return next(modified);
///   }
/// }
/// ```
// ignore: one_member_abstracts
abstract interface class Interceptor {
  /// Processes [request] and optionally delegates to [next].
  Future<ApiResponse> intercept(ApiRequest request, Handler next);
}

/// Build a middleware chain from a list of interceptors and a terminal handler.
///
/// Interceptors are applied in list order: the first interceptor wraps the
/// second, which wraps the third, and so on until the terminal handler.
Handler buildInterceptorChain({
  required List<Interceptor> interceptors,
  required Handler terminal,
}) {
  var handler = terminal;
  for (final interceptor in interceptors.reversed) {
    final next = handler;
    handler = (request) => interceptor.intercept(request, next);
  }
  return handler;
}
