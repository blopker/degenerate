import 'dart:convert';

import 'package:degenerate_runtime/testing.dart';
import 'package:spec_13_external_refs/spec_13_external_refs.dart';
import 'package:test/test.dart';

void main() {
  late RecordingClient client;
  late PetsApi api;

  setUp(() {
    client = RecordingClient();
    api = PetsApi(ApiConfig(client: client));
  });

  group('listPets', () {
    test('sends GET to /pets', () async {
      await api.listPets();

      expect(client.lastRequest!.method, equals('GET'));
      expect(client.lastRequest!.path, equals('/pets'));
    });

    test('sends limit query parameter', () async {
      await api.listPets(limit: 10);

      expect(client.lastRequest!.queryParameters['limit'], equals('10'));
    });

    test('deserializes list of pets from JSON', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode([
          {'id': 1, 'name': 'Buddy', 'tag': 'dog'},
          {'id': 2, 'name': 'Whiskers'},
        ]),
      );

      final result = await api.listPets();
      final success = result as ApiSuccess<List<Pet>, dynamic>;
      expect(success.data, hasLength(2));
      expect(success.data[0].name, equals('Buddy'));
      expect(success.data[0].tag, equals('dog'));
      expect(success.data[1].name, equals('Whiskers'));
      expect(success.data[1].tag, isNull);
    });
  });

  group('createPet', () {
    test('sends POST with JSON body', () async {
      await api.createPet(
        body: Pet(id: 1, name: 'Buddy'),
      );

      expect(client.lastRequest!.method, equals('POST'));
      expect(client.lastRequest!.path, equals('/pets'));

      final body = jsonDecode(client.lastRequest!.body as String);
      expect(body['id'], equals(1));
      expect(body['name'], equals('Buddy'));
    });

    test('includes owner from chained external ref', () async {
      await api.createPet(
        body: Pet(
          id: 1,
          name: 'Buddy',
          owner: Owner(name: 'Alice', email: 'alice@example.com'),
        ),
      );

      final body = jsonDecode(client.lastRequest!.body as String);
      expect(body['owner']['name'], equals('Alice'));
      expect(body['owner']['email'], equals('alice@example.com'));
    });

    test('circular ref: owner with pets round-trips', () async {
      final pet = Pet(
        id: 1,
        name: 'Buddy',
        owner: Owner(
          name: 'Alice',
          pets: [
            Pet(id: 1, name: 'Buddy'),
            Pet(id: 2, name: 'Whiskers'),
          ],
        ),
      );

      await api.createPet(body: pet);

      final body = jsonDecode(client.lastRequest!.body as String);
      expect(body['owner']['pets'], hasLength(2));
      expect(body['owner']['pets'][0]['name'], equals('Buddy'));
      expect(body['owner']['pets'][1]['name'], equals('Whiskers'));
    });
  });

  group('getPet', () {
    test('sends GET with path parameter', () async {
      await api.getPet(petId: 'abc-123');

      expect(client.lastRequest!.method, equals('GET'));
      expect(client.lastRequest!.path, equals('/pets/abc-123'));
    });

    test('deserializes pet with owner from response', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({
          'id': 1,
          'name': 'Buddy',
          'owner': {'name': 'Alice'},
        }),
      );

      final result = await api.getPet(petId: '1');
      final success = result as ApiSuccess<Pet, dynamic>;
      expect(success.data.name, equals('Buddy'));
      expect(success.data.owner?.name, equals('Alice'));
    });

    test('returns ApiParseException with response on bad data', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({
          'id': 1,
          // name is required but missing — server spec violation
          'photoUrls': [],
        }),
      );

      final result = await api.getPet(petId: '1');
      expect(result, isA<ApiParseException>());
      final parseError = result as ApiParseException;
      expect(parseError.response.statusCode, equals(200));
      expect(parseError.response.body, contains('"id":1'));
    });

    test('deserializes error response', () async {
      client.nextResponse = ApiResponse(
        statusCode: 404,
        body: jsonEncode({'code': 404, 'message': 'Not found'}),
      );

      final result = await api.getPet(petId: '999');
      final error = result as ApiError<dynamic, ErrorModel>;
      expect(error.statusCode, equals(404));
      expect(error.error?.code, equals(404));
      expect(error.error?.message, equals('Not found'));
    });
  });
}
