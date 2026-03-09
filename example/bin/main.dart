import 'package:http/http.dart' as http;
import 'package:petstore_client/petstore_client.dart';

/// Simple [ApiClient] backed by `package:http`.
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

/// Logging interceptor that prints requests and responses.
class LoggingInterceptor extends BaseInterceptor {
  @override
  Future<ApiRequest> onRequest(ApiRequest request) async {
    print('--> ${request.method} ${request.path}');
    return request;
  }

  @override
  Future<ApiResponse> onResponse(ApiResponse response) async {
    print('<-- ${response.statusCode} (${response.body.length} bytes)');
    return response;
  }
}

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse('https://petstore3.swagger.io/api/v3'),
  );

  final sdk = PetstoreClientApi(
    ApiConfig(
      client: client,
      interceptors: [LoggingInterceptor()],
      timeout: Duration(seconds: 10),
    ),
  );

  try {
    // ── Find available pets ──────────────────────────────────────
    print('=== Finding available pets ===');
    final findResult = await sdk.pet.findPetsByStatus(
      status: FindPetsByStatusStatus.available,
    );
    switch (findResult) {
      case ApiSuccess(:final data, :final statusCode):
        print('[$statusCode] Found ${data.length} available pets');
        for (final pet in data.take(5)) {
          final tags = pet.tags?.map((t) => t.name).join(', ') ?? 'none';
          print('  #${pet.id} ${pet.name} '
              '(status: ${pet.status}, tags: [$tags])');
        }
        if (data.length > 5) print('  ... and ${data.length - 5} more');
      case ApiError(:final statusCode, :final rawBody):
        print('Error $statusCode: $rawBody');
      case ApiException(:final exception):
        print('Network error: $exception');
    }

    // ── Get a specific pet ───────────────────────────────────────
    print('\n=== Getting pet #1 ===');
    final getResult = await sdk.pet.getPetById(petId: 1);
    switch (getResult) {
      case ApiSuccess(:final data):
        print('Found: ${data.name}');
        print('  Category: ${data.category?.name ?? "none"}');
        print('  Status: ${data.status}');
        print('  Photos: ${data.photoUrls}');
        // Demonstrate toJson round-trip
        print('  toJson: ${data.toJson()}');
      case ApiError(:final statusCode, :final rawBody):
        print('Not found ($statusCode): $rawBody');
      case ApiException(:final exception):
        print('Network error: $exception');
    }

    // ── Place an order ───────────────────────────────────────────
    print('\n=== Placing an order ===');
    final orderResult = await sdk.store.placeOrder(
      body: Order(
        petId: 1,
        quantity: 1,
        status: OrderStatus.placed,
        complete: false,
      ),
    );
    switch (orderResult) {
      case ApiSuccess(:final data, :final statusCode):
        print('[$statusCode] Order placed!');
        print('  Order ID: ${data.id}');
        print('  Pet ID: ${data.petId}');
        print('  Status: ${data.status}');
        print('  Ship date: ${data.shipDate}');
      case ApiError(:final statusCode, :final rawBody):
        print('Failed ($statusCode): $rawBody');
      case ApiException(:final exception):
        print('Network error: $exception');
    }

    // ── Check store inventory ────────────────────────────────────
    print('\n=== Store inventory ===');
    final inventoryResult = await sdk.store.getInventory();
    switch (inventoryResult) {
      case ApiSuccess(:final data):
        print('Inventory by status:');
        for (final entry in data.entries.take(10)) {
          print('  ${entry.key}: ${entry.value}');
        }
        if (data.length > 10) print('  ... and ${data.length - 10} more');
      case ApiError(:final statusCode, :final rawBody):
        print('Error ($statusCode): $rawBody');
      case ApiException(:final exception):
        print('Network error: $exception');
    }

    // ── Get a pet that doesn't exist ─────────────────────────────
    print('\n=== Getting non-existent pet ===');
    final missingResult = await sdk.pet.getPetById(petId: 99999999);
    switch (missingResult) {
      case ApiSuccess(:final data):
        print('Unexpectedly found: ${data.name}');
      case ApiError(:final statusCode, :final rawBody):
        print('[$statusCode] $rawBody');
      case ApiException(:final exception):
        print('Network error: $exception');
    }
  } finally {
    await client.close();
  }
}
