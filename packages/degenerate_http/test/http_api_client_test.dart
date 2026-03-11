import 'dart:convert';
import 'dart:typed_data';

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

    test('preserves binary response bytes', () async {
      final inner = MockClient((request) async {
        return http.Response.bytes([0, 255, 1], 200);
      });

      final client = HttpApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      final response = await client.send(
        const ApiRequest(method: 'GET', path: '/download'),
      );

      expect(response.bodyBytes, [0, 255, 1]);
    });

    test('sends multipart file with contentType', () async {
      http.BaseRequest? capturedRequest;
      final inner = MockClient.streaming((request, _) async {
        capturedRequest = request;
        return http.StreamedResponse(Stream.empty(), 200);
      });

      final client = HttpApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      await client.send(
        ApiRequest(
          method: 'POST',
          path: '/upload',
          body: <ApiMultipartField>[
            ApiMultipartField.text('name', 'photo.png'),
            ApiMultipartField.file(
              'file',
              Uint8List.fromList([1, 2, 3]),
              filename: 'photo.png',
              contentType: 'image/png',
            ),
          ],
        ),
      );

      expect(capturedRequest, isA<http.MultipartRequest>());
      final multipart = capturedRequest! as http.MultipartRequest;
      expect(multipart.fields['name'], 'photo.png');
      expect(multipart.files, hasLength(1));
      expect(multipart.files.first.filename, 'photo.png');
      expect(
        multipart.files.first.contentType.toString(),
        'image/png',
      );
    });

    test('cancel token races against in-flight request', () async {
      final token = CancelToken();
      token.cancel();

      final inner = MockClient((request) async {
        return http.Response('', 200);
      });

      final client = HttpApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      expect(
        () => client.send(
          ApiRequest(
            method: 'GET',
            path: '/hello',
            options: RequestOptions(cancelToken: token),
          ),
        ),
        throwsA(isA<CancelledException>()),
      );
    });

    test('sends cookies as Cookie header', () async {
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
          method: 'GET',
          path: '/hello',
          cookies: {'session': 'abc', 'theme': 'dark'},
        ),
      );

      expect(capturedRequest!.headers['cookie'], 'session=abc; theme=dark');
    });
  });
}
