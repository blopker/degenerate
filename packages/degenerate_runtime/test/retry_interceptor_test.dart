import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('RetryInterceptor', () {
    test('retries on 503 and succeeds', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts < 3
              ? ApiResponse(statusCode: 503, body: 'unavailable')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(attempts, 3);
    });

    test('retries on 429', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts == 1
              ? ApiResponse(statusCode: 429, body: 'rate limited')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(attempts, 2);
    });

    test('does not retry on 400', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return ApiResponse(statusCode: 400, body: 'bad request');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 400);
      expect(attempts, 1);
    });

    test('gives up after maxRetries', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return ApiResponse(statusCode: 503, body: 'unavailable');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 503);
      expect(attempts, 3); // initial + 2 retries
    });

    test('retries on network exceptions', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          if (attempts < 3) throw Exception('connection refused');
          return ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(attempts, 3);
    });

    test('rethrows after exhausting retries on exceptions', () async {
      const interceptor = RetryInterceptor(
        maxRetries: 1,
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async => throw Exception('always fails'),
      );

      expect(
        () => chain(const ApiRequest(method: 'GET', path: '/test')),
        throwsException,
      );
    });

    test('custom retryWhen predicate', () async {
      var attempts = 0;
      final interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
        retryWhen: (response) => response.statusCode == 409,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts == 1
              ? ApiResponse(statusCode: 409, body: 'conflict')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(attempts, 2);
    });

    test('uses Retry-After header when present', () async {
      final delays = <Duration>[];
      var attempts = 0;
      final interceptor = RetryInterceptor(
        maxRetries: 1,
        initialDelay: const Duration(milliseconds: 100),
        sleep: (delay) async => delays.add(delay),
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts == 1
              ? ApiResponse(
                  statusCode: 429,
                  body: 'rate limited',
                  headers: const {'retry-after': '2'},
                )
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(delays, [const Duration(seconds: 2)]);
    });

    test('applies jitter to exponential backoff', () async {
      final delays = <Duration>[];
      var attempts = 0;
      final interceptor = RetryInterceptor(
        maxRetries: 1,
        initialDelay: const Duration(milliseconds: 100),
        jitterRatio: 0.5,
        random: () => 1.0,
        sleep: (delay) async => delays.add(delay),
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts == 1
              ? ApiResponse(statusCode: 503, body: 'unavailable')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'GET', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(delays, [const Duration(milliseconds: 150)]);
    });

    test(
      'ignores non-integer Retry-After header and falls back to backoff',
      () async {
        final delays = <Duration>[];
        var attempts = 0;
        final interceptor = RetryInterceptor(
          maxRetries: 1,
          initialDelay: const Duration(milliseconds: 100),
          jitterRatio: 0,
          sleep: (delay) async => delays.add(delay),
        );

        final chain = buildInterceptorChain(
          interceptors: [interceptor],
          terminal: (_) async {
            attempts++;
            return attempts == 1
                ? ApiResponse(
                    statusCode: 503,
                    body: 'unavailable',
                    headers: const {
                      'Retry-After': 'Tue, 10 Mar 2026 12:00:03 GMT',
                    },
                  )
                : ApiResponse(statusCode: 200, body: 'ok');
          },
        );

        final response = await chain(
          const ApiRequest(method: 'GET', path: '/test'),
        );
        expect(response.statusCode, 200);
        // Falls back to exponential backoff (100ms for first retry)
        expect(delays, [const Duration(milliseconds: 100)]);
      },
    );

    test('does not retry non-idempotent POST by default', () async {
      var attempts = 0;
      const interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return ApiResponse(statusCode: 503, body: 'unavailable');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'POST', path: '/test'),
      );
      expect(response.statusCode, 503);
      expect(attempts, 1);
    });

    test('retries POST when method gating is overridden', () async {
      var attempts = 0;
      final interceptor = RetryInterceptor(
        maxRetries: 2,
        initialDelay: Duration.zero,
        shouldRetryRequest: (_) => true,
      );

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async {
          attempts++;
          return attempts == 1
              ? ApiResponse(statusCode: 503, body: 'unavailable')
              : ApiResponse(statusCode: 200, body: 'ok');
        },
      );

      final response = await chain(
        const ApiRequest(method: 'POST', path: '/test'),
      );
      expect(response.statusCode, 200);
      expect(attempts, 2);
    });
  });
}
