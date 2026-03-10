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
      final response = ApiResponse(statusCode: 200, body: '{}');
      final result = ApiParseException<String, String>(
        FormatException('bad'),
        StackTrace.current,
        response: response,
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
}
