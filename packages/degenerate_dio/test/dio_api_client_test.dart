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
