import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('CancelToken', () {
    test('is not cancelled initially', () {
      final token = CancelToken();
      expect(token.isCancelled, isFalse);
    });

    test('is cancelled after cancel()', () {
      final token = CancelToken();
      token.cancel();
      expect(token.isCancelled, isTrue);
    });

    test('cancel() is idempotent', () {
      final token = CancelToken();
      token.cancel();
      token.cancel();
      expect(token.isCancelled, isTrue);
    });

    test('whenCancelled completes after cancel()', () async {
      final token = CancelToken();
      var completed = false;
      token.whenCancelled.then((_) => completed = true);
      expect(completed, isFalse);
      token.cancel();
      await Future.delayed(Duration.zero);
      expect(completed, isTrue);
    });
  });

  group('CancelledException', () {
    test('has a message', () {
      const e = CancelledException('user navigated away');
      expect(e.message, equals('user navigated away'));
      expect(e.toString(), contains('user navigated away'));
    });

    test('default message is null', () {
      const e = CancelledException();
      expect(e.message, isNull);
    });
  });

  group('RequestOptions', () {
    test('defaults are all null', () {
      const options = RequestOptions();
      expect(options.timeout, isNull);
      expect(options.extraHeaders, isNull);
      expect(options.cancelToken, isNull);
    });

    test('fields are accessible', () {
      final token = CancelToken();
      final options = RequestOptions(
        timeout: Duration(seconds: 5),
        extraHeaders: {'X-Request-Id': '123'},
        cancelToken: token,
      );
      expect(options.timeout, equals(Duration(seconds: 5)));
      expect(options.extraHeaders!['X-Request-Id'], equals('123'));
      expect(options.cancelToken, same(token));
    });
  });
}
