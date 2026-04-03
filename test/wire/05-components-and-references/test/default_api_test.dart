import 'dart:convert';

import 'package:degenerate_runtime/testing.dart';
import 'package:spec_05_components_and_references/spec_05_components_and_references.dart';
import 'package:test/test.dart';

void main() {
  late RecordingClient client;
  late DefaultApi api;

  setUp(() {
    client = RecordingClient();
    api = DefaultApi(ApiConfig(client: client));
  });

  group('listUsers', () {
    test('sends GET /users', () async {
      client.nextResponse = ApiResponse(statusCode: 200, body: '[]');
      await api.listUsers();

      expect(client.lastRequest!.method, equals('GET'));
      expect(client.lastRequest!.path, equals('/users'));
    });

    test('sends limit query parameter', () async {
      client.nextResponse = ApiResponse(statusCode: 200, body: '[]');
      await api.listUsers(limit: 10);

      expect(client.lastRequest!.queryParameters['limit'], equals('10'));
    });

    test('deserializes list of users', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode([
          {'id': 'u1', 'email': 'a@b.com'},
          {'id': 'u2', 'email': 'c@d.com'},
        ]),
      );

      final result = await api.listUsers();

      expect(result, isA<ApiSuccess<List<User>, Never>>());
      final success = result as ApiSuccess<List<User>, Never>;
      expect(success.data, hasLength(2));
      expect(success.data[0].id, equals('u1'));
      expect(success.data[1].email, equals('c@d.com'));
    });
  });

  group('createUser', () {
    test('sends POST /users with JSON body', () async {
      const user = User(id: 'u1', email: 'a@b.com');
      await api.createUser(body: user);

      expect(client.lastRequest!.method, equals('POST'));
      expect(client.lastRequest!.path, equals('/users'));
      expect(
        client.lastRequest!.headers['Content-Type'],
        equals('application/json'),
      );

      final sentBody = jsonDecode(client.lastRequest!.body! as String) as Map<String, dynamic>;
      expect(sentBody['id'], equals('u1'));
      expect(sentBody['email'], equals('a@b.com'));
    });
  });

  group('getUserById', () {
    test('sends GET with path parameter', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({'id': 'u1', 'email': 'a@b.com'}),
      );
      await api.getUserById(userId: 'u1');

      expect(client.lastRequest!.method, equals('GET'));
      expect(client.lastRequest!.path, equals('/users/u1'));
    });

    test('URL-encodes path parameter', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({'id': 'a/b', 'email': 'x@y.com'}),
      );
      await api.getUserById(userId: 'a/b');

      expect(client.lastRequest!.path, equals('/users/a%2Fb'));
    });

    test('deserializes user response', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({'id': 'u1', 'email': 'a@b.com'}),
      );

      final result = await api.getUserById(userId: 'u1');

      expect(result, isA<ApiSuccess<User, Never>>());
      final success = result as ApiSuccess<User, Never>;
      expect(success.data.id, equals('u1'));
      expect(success.data.email, equals('a@b.com'));
    });

    test('returns ApiError with status code on failure', () async {
      client.nextResponse = ApiResponse(
        statusCode: 500,
        body: '{"message": "internal error"}',
      );

      final result = await api.getUserById(userId: 'u1');

      expect(result, isA<ApiError<User, Never>>());
      final error = result as ApiError<User, Never>;
      expect(error.statusCode, equals(500));
    });
  });

  group('User model', () {
    test('roundtrips through JSON', () {
      const user = User(id: 'u1', email: 'test@example.com');
      final json = user.toJson();
      final restored = User.fromJson(json);

      expect(restored.id, equals('u1'));
      expect(restored.email, equals('test@example.com'));
    });

    test('equality', () {
      const a = User(id: 'u1', email: 'a@b.com');
      const b = User(id: 'u1', email: 'a@b.com');
      const c = User(id: 'u2', email: 'a@b.com');

      expect(a, equals(b));
      expect(a, isNot(equals(c)));
    });

    test('copyWith', () {
      const user = User(id: 'u1', email: 'old@example.com');
      final updated = user.copyWith(email: 'new@example.com');

      expect(updated.id, equals('u1'));
      expect(updated.email, equals('new@example.com'));
    });
  });
}
