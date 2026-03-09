import '../api_client.dart';
import '../interceptor.dart';

/// Middleware that logs requests and responses.
///
/// ```dart
/// final config = ApiConfig(
///   client: myClient,
///   interceptors: [LoggingInterceptor()],
/// );
/// ```
class LoggingInterceptor implements Interceptor {
  /// Logging function. Defaults to [print].
  final void Function(String message) logger;

  const LoggingInterceptor({this.logger = print});

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    logger('--> ${request.method} ${request.path}');
    try {
      final response = await next(request);
      logger('<-- ${response.statusCode} (${response.body.length} bytes)');
      return response;
    } catch (e) {
      logger('<-- ERROR: $e');
      rethrow;
    }
  }
}
