import 'dart:convert';

import 'package:degenerate_http/degenerate_http.dart';
import 'package:petstore_client/petstore_client.dart';

void main() async {
  final client = HttpApiClient(
    baseUrl: Uri.parse('https://petstore3.swagger.io/api/v3'),
  );

  final sdk = PetstoreClientApi(
    ApiConfig(
      client: client,
      interceptors: [
        LoggingInterceptor(),
        RetryInterceptor(maxRetries: 2, initialDelay: Duration(seconds: 1)),
      ],
      timeout: Duration(seconds: 10),
    ),
  );

  try {
    // ── Find available pets ──────────────────────────────────────
    // The live petstore server sometimes returns pets that violate the
    // spec (e.g. missing required 'name' field). ApiParseException
    // gives you access to the raw response so you can handle it.
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
      // Escape hatch: the server returned a 2xx but the body didn't match
      // the spec. You can fall back to manual parsing with the raw response.
      case ApiParseException(:final response, :final exception):
        print('Server returned invalid data: $exception');
        final raw = jsonDecode(response.body) as List;
        print('  Got ${raw.length} items as raw JSON (first: ${raw.first})');
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
