import 'dart:convert';
import 'dart:typed_data';

import 'package:degenerate_runtime/src/api_client.dart';

/// A streaming API response where the body is delivered as a byte stream.
///
/// Used for Server-Sent Events (SSE) and other streaming response formats.
/// The [byteStream] is single-subscription - consuming it drains the
/// underlying HTTP connection.
final class StreamedApiResponse {
  /// Creates a [StreamedApiResponse] with the given [byteStream] and metadata.
  const StreamedApiResponse({
    required this.byteStream,
    required this.statusCode,
    this.headers = const {},
  });

  /// The HTTP status code.
  final int statusCode;

  /// The response headers.
  final Map<String, String> headers;

  /// The response body as a byte stream.
  final Stream<List<int>> byteStream;

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;

  /// Buffer the entire stream into a regular [ApiResponse].
  ///
  /// Useful for reading error response bodies on non-2xx responses.
  Future<ApiResponse> toApiResponse() async {
    final chunks = <int>[];
    await byteStream.forEach(chunks.addAll);
    final bytes = Uint8List.fromList(chunks);
    return ApiResponse(
      statusCode: statusCode,
      headers: headers,
      body: utf8.decode(bytes, allowMalformed: true),
      bodyBytes: bytes,
    );
  }
}
