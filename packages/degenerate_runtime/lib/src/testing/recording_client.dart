import 'dart:convert';

import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/streamed_api_response.dart';

/// A test [ApiClient] that records requests and returns canned responses.
///
/// Useful for verifying that generated API clients send the correct
/// requests without making real HTTP calls.
///
/// ```dart
/// final client = RecordingClient();
/// final api = MyApi(ApiConfig(client: client));
///
/// await api.getUser(userId: '123');
///
/// expect(client.lastRequest!.method, equals('GET'));
/// expect(client.lastRequest!.path, equals('/users/123'));
/// ```
final class RecordingClient implements ApiClient {
  /// Creates a recording client with an optional default response.
  RecordingClient({ApiResponse? nextResponse, this.onRequest})
    : nextResponse = nextResponse ?? ApiResponse(statusCode: 200, body: '');

  /// All requests sent through this client, in order.
  final List<ApiRequest> requests = [];

  /// The response to return for the next [send] call.
  ///
  /// Defaults to an empty 200 response.
  ApiResponse nextResponse;

  /// Optional callback to dynamically generate responses based on the request.
  ///
  /// If set, takes precedence over [nextResponse].
  ApiResponse Function(ApiRequest request)? onRequest;

  /// The most recently sent request, or `null` if no requests have been sent.
  ApiRequest? get lastRequest => requests.isEmpty ? null : requests.last;

  /// Resets the recorded requests.
  void reset() => requests.clear();

  /// The streaming response to return for the next [sendStreaming] call.
  StreamedApiResponse? nextStreamedResponse;

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    requests.add(request);
    return onRequest != null ? onRequest!(request) : nextResponse;
  }

  @override
  Future<StreamedApiResponse> sendStreaming(ApiRequest request) async {
    requests.add(request);
    return nextStreamedResponse ??
        const StreamedApiResponse(statusCode: 200, byteStream: Stream.empty());
  }

  @override
  Uri get baseUrl => Uri.parse('http://localhost');

  @override
  Future<void> close() async {}

  /// Create a [StreamedApiResponse] that emits SSE events from JSON strings.
  ///
  /// ```dart
  /// client.nextStreamedResponse = RecordingClient.sseResponse([
  ///   '{"id":"1","content":"Hello"}',
  ///   '{"id":"2","content":" world"}',
  /// ]);
  /// ```
  static StreamedApiResponse sseResponse(
    List<String> jsonEvents, {
    int statusCode = 200,
    String doneSignal = '[DONE]',
  }) {
    final chunks = <List<int>>[];
    for (final event in jsonEvents) {
      chunks.add(utf8.encode('data: $event\n\n'));
    }
    chunks.add(utf8.encode('data: $doneSignal\n\n'));
    return StreamedApiResponse(
      statusCode: statusCode,
      headers: const {'content-type': 'text/event-stream'},
      byteStream: Stream.fromIterable(chunks),
    );
  }
}
