import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:http/http.dart' as http;

/// [ApiClient] implementation backed by `package:http`.
final class HttpApiClient implements ApiClient {
  final http.Client _inner;
  @override
  final Uri baseUrl;

  HttpApiClient({required this.baseUrl, http.Client? inner})
      : _inner = inner ?? http.Client();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    final uri = request.resolveUri(baseUrl);
    final httpRequest = http.Request(request.method, uri)
      ..headers.addAll(request.headers);
    if (request.contentType != null) {
      httpRequest.headers['content-type'] = request.contentType!;
    }
    if (request.body != null) {
      httpRequest.body = request.body as String;
    }
    final streamed = await _inner.send(httpRequest);
    return ApiResponse(
      statusCode: streamed.statusCode,
      headers: streamed.headers,
      body: await streamed.stream.bytesToString(),
    );
  }

  @override
  Future<void> close() async => _inner.close();
}
