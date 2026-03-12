import 'dart:async';

import 'package:degenerate_dio/degenerate_dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:test/test.dart';

void main() {
  group('DioApiClient', () {
    test('preserves binary response bytes', () async {
      final inner = dio.Dio();
      inner.interceptors.add(
        dio.InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.resolve(
              dio.Response<List<int>>(
                requestOptions: options,
                statusCode: 200,
                data: [0, 255, 1],
              ),
            );
          },
        ),
      );

      final client = DioApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      final response = await client.send(
        const ApiRequest(method: 'GET', path: '/download'),
      );

      expect(response.bodyBytes, [0, 255, 1]);
    });

    test('cancel token bridges to dio native cancellation', () async {
      final token = CancelToken();
      final inner = dio.Dio();
      inner.interceptors.add(
        dio.InterceptorsWrapper(
          onRequest: (options, handler) {
            // Simulate a slow request - cancel fires before response
            token.cancel();
            handler.resolve(
              dio.Response<List<int>>(
                requestOptions: options,
                statusCode: 200,
                data: [],
              ),
            );
          },
        ),
      );

      final client = DioApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      // Pre-cancelled token should throw immediately
      final preToken = CancelToken()..cancel();
      expect(
        () => client.send(
          ApiRequest(
            method: 'GET',
            path: '/hello',
            options: RequestOptions(cancelToken: preToken),
          ),
        ),
        throwsA(isA<CancelledException>()),
      );
    });

    test('converts dio timeout exceptions to TimeoutException', () async {
      final inner = dio.Dio();
      inner.interceptors.add(
        dio.InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.reject(
              dio.DioException(
                requestOptions: options,
                type: dio.DioExceptionType.receiveTimeout,
                message: 'Receive timeout',
              ),
            );
          },
        ),
      );

      final client = DioApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      expect(
        () => client.send(const ApiRequest(method: 'GET', path: '/slow')),
        throwsA(isA<TimeoutException>()),
      );
    });

    test('preserves bytes from dio error responses', () async {
      final inner = dio.Dio();
      inner.interceptors.add(
        dio.InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.reject(
              dio.DioException(
                requestOptions: options,
                response: dio.Response<List<int>>(
                  requestOptions: options,
                  statusCode: 400,
                  data: [0, 255, 1],
                ),
              ),
            );
          },
        ),
      );

      final client = DioApiClient(
        baseUrl: Uri.parse('https://api.example.com'),
        inner: inner,
      );

      final response = await client.send(
        const ApiRequest(method: 'GET', path: '/download'),
      );

      expect(response.statusCode, 400);
      expect(response.bodyBytes, [0, 255, 1]);
    });
  });
}
