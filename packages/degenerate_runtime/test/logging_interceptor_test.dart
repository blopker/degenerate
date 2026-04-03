import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('LoggingInterceptor', () {
    test('logs request and response', () async {
      final logs = <String>[];
      final interceptor = LoggingInterceptor(logger: logs.add);

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async => ApiResponse(statusCode: 200, body: 'ok'),
      );

      await chain(const ApiRequest(method: 'GET', path: '/pets'));

      expect(logs.length, 2);
      expect(logs[0], contains('GET'));
      expect(logs[0], contains('/pets'));
      expect(logs[1], contains('200'));
    });

    test('logs errors', () async {
      final logs = <String>[];
      final interceptor = LoggingInterceptor(logger: logs.add);

      final chain = buildInterceptorChain(
        interceptors: [interceptor],
        terminal: (_) async => throw Exception('boom'),
      );

      expect(
        () => chain(const ApiRequest(method: 'POST', path: '/pets')),
        throwsException,
      );

      // Should have logged the request at minimum
      expect(logs, isNotEmpty);
      expect(logs[0], contains('POST'));
    });
  });
}
