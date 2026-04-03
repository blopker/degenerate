import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/interceptor.dart';

/// Middleware that logs requests and responses.
///
/// ```dart
/// final config = ApiConfig(
///   client: myClient,
///   interceptors: [LoggingInterceptor()],
/// );
/// ```
class LoggingInterceptor implements Interceptor {
  /// Creates a [LoggingInterceptor] with an optional custom [logger].
  const LoggingInterceptor({this.logger = print});

  /// Logging function. Defaults to [print].
  final void Function(String message) logger;

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    logger('--> ${request.method} ${request.path}');
    try {
      final response = await next(request);
      logger('<-- ${response.statusCode} (${response.body.length} bytes)');
      return response;
    } on Object catch (e) {
      logger('<-- ERROR: $e');
      rethrow;
    }
  }
}
