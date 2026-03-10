import '../api_client.dart';

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

  /// Creates a recording client with an optional default response.
  RecordingClient({ApiResponse? nextResponse, this.onRequest})
    : nextResponse = nextResponse ?? ApiResponse(statusCode: 200, body: '');

  /// The most recently sent request, or `null` if no requests have been sent.
  ApiRequest? get lastRequest => requests.isEmpty ? null : requests.last;

  /// Resets the recorded requests.
  void reset() => requests.clear();

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    requests.add(request);
    return onRequest != null ? onRequest!(request) : nextResponse;
  }

  @override
  Uri get baseUrl => Uri.parse('http://localhost');

  @override
  Future<void> close() async {}
}
