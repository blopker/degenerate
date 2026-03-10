import 'dart:typed_data';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('ApiRequest.copyWith', () {
    final original = ApiRequest(
      method: 'GET',
      path: '/pets',
      headers: {'Accept': 'application/json'},
      queryParameters: {'limit': '10'},
    );

    test('returns identical values when no overrides', () {
      final copy = original.copyWith();
      expect(copy.method, 'GET');
      expect(copy.path, '/pets');
      expect(copy.headers, {'Accept': 'application/json'});
      expect(copy.queryParameters, {'limit': '10'});
    });

    test('overrides method', () {
      final copy = original.copyWith(method: 'POST');
      expect(copy.method, 'POST');
      expect(copy.path, '/pets');
    });

    test('overrides headers', () {
      final copy = original.copyWith(
        headers: {...original.headers, 'Authorization': 'Bearer token'},
      );
      expect(copy.headers, {
        'Accept': 'application/json',
        'Authorization': 'Bearer token',
      });
    });

    test('overrides body', () {
      final copy = original.copyWith(body: () => '{"name":"Fido"}');
      expect(copy.body, '{"name":"Fido"}');
      expect(original.body, isNull);
    });
  });

  group('ApiRequest.resolveUri', () {
    test('concatenates base path with request path', () {
      final req = ApiRequest(method: 'GET', path: '/pets');
      final uri = req.resolveUri(Uri.parse('https://api.example.com/v1'));
      expect(uri.toString(), 'https://api.example.com/v1/pets');
    });

    test('works with no base path', () {
      final req = ApiRequest(method: 'GET', path: '/pets');
      final uri = req.resolveUri(Uri.parse('https://api.example.com'));
      expect(uri.toString(), 'https://api.example.com/pets');
    });

    test('strips trailing slash from base path', () {
      final req = ApiRequest(method: 'GET', path: '/pets');
      final uri = req.resolveUri(Uri.parse('https://api.example.com/v1/'));
      expect(uri.toString(), 'https://api.example.com/v1/pets');
    });

    test('appends query parameters', () {
      final req = ApiRequest(
        method: 'GET',
        path: '/pets',
        queryParameters: {'limit': '10'},
      );
      final uri = req.resolveUri(Uri.parse('https://api.example.com'));
      expect(uri.queryParameters['limit'], '10');
    });

    test('supports duplicate query parameter names', () {
      final req = ApiRequest(
        method: 'GET',
        path: '/pets',
        queryParametersList: const [
          ApiQueryParameter(name: 'tag', value: 'a'),
          ApiQueryParameter(name: 'tag', value: 'b'),
        ],
      );
      final uri = req.resolveUri(Uri.parse('https://api.example.com'));

      expect(uri.queryParametersAll['tag'], ['a', 'b']);
    });

    test('supports allowReserved query parameters', () {
      final req = ApiRequest(
        method: 'GET',
        path: '/pets',
        queryParametersList: const [
          ApiQueryParameter(
            name: 'redirect',
            value: 'https://example.com/a?b=c&d=e',
            allowReserved: true,
          ),
        ],
      );
      final uri = req.resolveUri(Uri.parse('https://api.example.com'));

      expect(
        uri.toString(),
        'https://api.example.com/pets?redirect=https://example.com/a?b=c&d=e',
      );
    });
  });

  group('ApiResponse.isSuccessful', () {
    test('true for 2xx', () {
      expect(ApiResponse(statusCode: 200, body: '').isSuccessful, isTrue);
      expect(ApiResponse(statusCode: 201, body: '').isSuccessful, isTrue);
      expect(ApiResponse(statusCode: 299, body: '').isSuccessful, isTrue);
    });

    test('false for non-2xx', () {
      expect(ApiResponse(statusCode: 199, body: '').isSuccessful, isFalse);
      expect(ApiResponse(statusCode: 301, body: '').isSuccessful, isFalse);
      expect(ApiResponse(statusCode: 404, body: '').isSuccessful, isFalse);
      expect(ApiResponse(statusCode: 500, body: '').isSuccessful, isFalse);
    });
  });

  group('ApiResponse.bodyBytes', () {
    test('preserves explicit bytes', () {
      final response = ApiResponse(
        statusCode: 200,
        body: 'ignored',
        bodyBytes: [0, 255, 1],
      );

      expect(response.bodyBytes, [0, 255, 1]);
    });

    test('reuses provided Uint8List without copying', () {
      final bytes = Uint8List.fromList([0, 255, 1]);
      final response = ApiResponse(
        statusCode: 200,
        body: 'ignored',
        bodyBytes: bytes,
      );

      expect(identical(response.bodyBytes, bytes), isTrue);
    });
  });
}
