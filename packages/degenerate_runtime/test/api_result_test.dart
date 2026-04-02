import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('ApiParseException', () {
    test('carries the original response', () {
      final response = ApiResponse(
        statusCode: 200,
        body: '{"id": 102, "photoUrls": []}',
      );
      final error = TypeError();

      final result = ApiParseException<String, String>(
        error,
        StackTrace.current,
        response: response,
      );

      expect(result.exception, same(error));
      expect(result.response.statusCode, equals(200));
      expect(result.response.body, contains('102'));
    });

    test('is a subtype of ApiException', () {
      final result = ApiParseException<String, String>(
        const FormatException('bad'),
        StackTrace.current,
        response: ApiResponse(statusCode: 200, body: '{}'),
      );

      expect(result, isA<ApiException<String, String>>());
      expect(result, isA<ApiResult<String, String>>());
    });

    test('can be matched in switch as ApiException', () {
      final ApiResult<String, String> result = ApiParseException(
        TypeError(),
        StackTrace.current,
        response: ApiResponse(statusCode: 200, body: 'bad'),
      );

      final matched = switch (result) {
        ApiSuccess() => 'success',
        ApiError() => 'error',
        ApiParseException(:final response) =>
          'parse error with body: ${response.body}',
        ApiException() => 'exception',
      };

      expect(matched, equals('parse error with body: bad'));
    });

    test('falls through to ApiException when not matched specifically', () {
      final ApiResult<String, String> result = ApiParseException(
        TypeError(),
        StackTrace.current,
        response: ApiResponse(statusCode: 200, body: 'bad'),
      );

      // User who doesn't know about ApiParseException still matches it
      final matched = switch (result) {
        ApiSuccess() => 'success',
        ApiError() => 'error',
        ApiException() => 'exception',
      };

      expect(matched, equals('exception'));
    });
  });

  group('dataOrThrow', () {
    test('returns data on success', () {
      const ApiResult<String, String> result = ApiSuccess(
        'hello',
        statusCode: 200,
      );
      expect(result.dataOrThrow, 'hello');
    });

    test('throws on ApiError', () {
      const ApiResult<String, String> result = ApiError(
        statusCode: 404,
        rawError: 'not found',
      );
      expect(
        () => result.dataOrThrow,
        throwsA(isA<ApiError<String, String>>()),
      );
    });

    test('throws on ApiError with typed error', () {
      const ApiResult<String, String> result = ApiError(
        statusCode: 422,
        error: 'validation failed',
      );
      final thrown = _catchError(() => result.dataOrThrow);
      expect(thrown, isA<ApiError<String, String>>());
      expect((thrown! as ApiError).error, 'validation failed');
    });

    test('rethrows on ApiException', () {
      final original = Exception('network down');
      final ApiResult<String, String> result = ApiException(
        original,
        StackTrace.current,
      );
      expect(() => result.dataOrThrow, throwsA(same(original)));
    });

    test('rethrows on ApiParseException', () {
      const original = FormatException('bad json');
      final ApiResult<String, String> result = ApiParseException(
        original,
        StackTrace.current,
        response: ApiResponse(statusCode: 200, body: 'bad'),
      );
      expect(() => result.dataOrThrow, throwsA(same(original)));
    });
  });
}

Object? _catchError(void Function() fn) {
  try {
    fn();
    return null;
  } on Object catch (e) {
    return e;
  }
}
