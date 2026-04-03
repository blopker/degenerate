import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/interceptor.dart';

/// Middleware that adds an Authorization header and optionally refreshes
/// the token on 401 responses.
///
/// ```dart
/// final config = ApiConfig(
///   client: myClient,
///   interceptors: [
///     AuthInterceptor(
///       getToken: () => secureStorage.read('token'),
///       refreshToken: () => authService.refresh(),
///     ),
///   ],
/// );
/// ```
class AuthInterceptor implements Interceptor {
  /// Creates an [AuthInterceptor] that adds authorization headers.
  const AuthInterceptor({
    required this.getToken,
    this.refreshToken,
    this.scheme = 'Bearer',
  });

  /// Called before each request to get the current token.
  final Future<String> Function() getToken;

  /// Called when a 401 is received. If provided, the interceptor will
  /// refresh the token and retry the request once.
  final Future<String> Function()? refreshToken;

  /// Authorization scheme (e.g. 'Bearer', 'Token', 'Basic').
  final String scheme;

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    final token = await getToken();
    final authed = request.copyWith(
      headers: {...request.headers, 'Authorization': '$scheme $token'},
    );

    final response = await next(authed);

    if (response.statusCode == 401 && refreshToken != null) {
      final newToken = await refreshToken!();
      final retry = request.copyWith(
        headers: {...request.headers, 'Authorization': '$scheme $newToken'},
      );
      return next(retry);
    }

    return response;
  }
}
