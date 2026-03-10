import 'dart:convert';

import 'package:degenerate_http/degenerate_http.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('HttpApiClient', () {
    test('sends raw byte bodies', () async {
      http.BaseRequest? capturedRequest;
      final inner = MockClient((request) async {
        capturedRequest = request;
        return http.Response('', 200);
      });

      final client = HttpApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      await client.send(
        const ApiRequest(
          method: 'POST',
          path: '/upload',
          body: [1, 2, 3],
          contentType: 'application/octet-stream',
        ),
      );

      expect(capturedRequest, isA<http.Request>());
      expect((capturedRequest! as http.Request).bodyBytes, [1, 2, 3]);
      expect(
        capturedRequest!.headers['content-type'],
        'application/octet-stream',
      );
    });

    test('returns plain text response bodies unchanged', () async {
      final inner = MockClient((request) async {
        return http.Response('hello world', 200);
      });

      final client = HttpApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      final response = await client.send(
        const ApiRequest(method: 'GET', path: '/hello'),
      );

      expect(response.body, 'hello world');
      expect(utf8.encode(response.body), utf8.encode('hello world'));
    });
  });
}
