import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

/// Records the order of interceptor calls.
class _OrderInterceptor implements Interceptor {
  _OrderInterceptor(this.name, this.log);
  final String name;
  final List<String> log;

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    log.add('$name:before');
    final response = await next(request);
    log.add('$name:after');
    return response;
  }
}

/// Adds a header and forwards.
class _HeaderInterceptor implements Interceptor {
  _HeaderInterceptor(this.key, this.value);
  final String key;
  final String value;

  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) {
    return next(request.copyWith(headers: {...request.headers, key: value}));
  }
}

/// Short-circuits without calling next.
class _ShortCircuitInterceptor implements Interceptor {
  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    return ApiResponse(statusCode: 418, body: 'short-circuited');
  }
}

/// Retries once on failure.
class _RetryOnceInterceptor implements Interceptor {
  @override
  Future<ApiResponse> intercept(ApiRequest request, Handler next) async {
    final response = await next(request);
    if (!response.isSuccessful) {
      return next(request);
    }
    return response;
  }
}

void main() {
  group('Interceptor chain', () {
    test('executes interceptors in order', () async {
      final log = <String>[];
      final interceptors = [
        _OrderInterceptor('first', log),
        _OrderInterceptor('second', log),
      ];

      final chain = buildInterceptorChain(
        interceptors: interceptors,
        terminal: (_) async => ApiResponse(statusCode: 200, body: 'ok'),
      );

      await chain(const ApiRequest(method: 'GET', path: '/test'));

      expect(log, [
        'first:before',
        'second:before',
        'second:after',
        'first:after',
      ]);
    });

    test('interceptors can modify the request', () async {
      final interceptors = [
        _HeaderInterceptor('X-First', '1'),
        _HeaderInterceptor('X-Second', '2'),
      ];

      Map<String, String>? capturedHeaders;
      final chain = buildInterceptorChain(
        interceptors: interceptors,
        terminal: (req) async {
          capturedHeaders = req.headers;
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      await chain(const ApiRequest(method: 'GET', path: '/test'));

      expect(capturedHeaders, containsPair('X-First', '1'));
      expect(capturedHeaders, containsPair('X-Second', '2'));
    });

    test('interceptor can short-circuit the chain', () async {
      var terminalCalled = false;
      final interceptors = <Interceptor>[
        _OrderInterceptor('first', []),
        _ShortCircuitInterceptor(),
        _OrderInterceptor('never', []),
      ];

      final chain = buildInterceptorChain(
        interceptors: interceptors,
        terminal: (_) async {
          terminalCalled = true;
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(const ApiRequest(method: 'GET', path: '/test'));

      expect(response.statusCode, 418);
      expect(response.body, 'short-circuited');
      expect(terminalCalled, isFalse);
    });

    test('interceptor can retry by calling next multiple times', () async {
      var callCount = 0;
      final interceptors = <Interceptor>[_RetryOnceInterceptor()];

      final chain = buildInterceptorChain(
        interceptors: interceptors,
        terminal: (_) async {
          callCount++;
          return callCount == 1
              ? ApiResponse(statusCode: 503, body: 'fail')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(const ApiRequest(method: 'GET', path: '/test'));

      expect(response.statusCode, 200);
      expect(callCount, 2);
    });

    test('empty interceptor list calls terminal directly', () async {
      var called = false;
      final chain = buildInterceptorChain(
        interceptors: [],
        terminal: (_) async {
          called = true;
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      await chain(const ApiRequest(method: 'GET', path: '/test'));
      expect(called, isTrue);
    });
  });
}
