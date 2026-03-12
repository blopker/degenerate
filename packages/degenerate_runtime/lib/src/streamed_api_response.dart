import 'dart:convert';
import 'dart:typed_data';

import 'api_client.dart';

/// A streaming API response where the body is delivered as a byte stream.
///
/// Used for Server-Sent Events (SSE) and other streaming response formats.
/// The [byteStream] is single-subscription — consuming it drains the
/// underlying HTTP connection.
final class StreamedApiResponse {
  final int statusCode;
  final Map<String, String> headers;
  final Stream<List<int>> byteStream;

  const StreamedApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.byteStream,
  });

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;

  /// Buffer the entire stream into a regular [ApiResponse].
  ///
  /// Useful for reading error response bodies on non-2xx responses.
  Future<ApiResponse> toApiResponse() async {
    final chunks = <int>[];
    await for (final chunk in byteStream) {
      chunks.addAll(chunk);
    }
    final bytes = Uint8List.fromList(chunks);
    return ApiResponse(
      statusCode: statusCode,
      headers: headers,
      body: utf8.decode(bytes, allowMalformed: true),
      bodyBytes: bytes,
    );
  }
}
