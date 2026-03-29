import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('AuthInterceptor', () {
    test('adds Authorization header', () async {
      Map<String, String>? capturedHeaders;
      final interceptor = AuthInterceptor(getToken: () async => 'my-token');

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (req) async {
          capturedHeaders = req.headers;
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      await chain(ApiRequest(method: 'GET', path: '/test'));
      expect(capturedHeaders, containsPair('Authorization', 'Bearer my-token'));
    });

    test('uses custom scheme', () async {
      Map<String, String>? capturedHeaders;
      final interceptor = AuthInterceptor(
        getToken: () async => 'my-key',
        scheme: 'Token',
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (req) async {
          capturedHeaders = req.headers;
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      await chain(ApiRequest(method: 'GET', path: '/test'));
      expect(capturedHeaders, containsPair('Authorization', 'Token my-key'));
    });

    test('refreshes token on 401 and retries', () async {
      var callCount = 0;
      var refreshCount = 0;
      final interceptor = AuthInterceptor(
        getToken: () async => 'expired-token',
        refreshToken: () async {
          refreshCount++;
          return 'fresh-token';
        },
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (req) async {
          callCount++;
          final auth = req.headers['Authorization'];
          if (auth == 'Bearer expired-token') {
            return ApiResponse(statusCode: 401, body: 'unauthorized');
          }
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(ApiRequest(method: 'GET', path: '/test'));
      expect(response.statusCode, 200);
      expect(callCount, 2);
      expect(refreshCount, 1);
    });

    test('does not retry if no refreshToken provided', () async {
      var callCount = 0;
      final interceptor = AuthInterceptor(getToken: () async => 'bad-token');

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (req) async {
          callCount++;
          return ApiResponse(statusCode: 401, body: 'unauthorized');
        },
      );

      final response = await chain(ApiRequest(method: 'GET', path: '/test'));
      expect(response.statusCode, 401);
      expect(callCount, 1);
    });

    test('does not infinite loop on persistent 401', () async {
      var callCount = 0;
      final interceptor = AuthInterceptor(
        getToken: () async => 'bad',
        refreshToken: () async => 'still-bad',
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (req) async {
          callCount++;
          return ApiResponse(statusCode: 401, body: 'unauthorized');
        },
      );

      final response = await chain(ApiRequest(method: 'GET', path: '/test'));
      expect(response.statusCode, 401);
      expect(callCount, 2); // initial + one retry
    });
  });
}
