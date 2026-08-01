import 'dart:convert';
import 'dart:typed_data';

import 'package:degenerate_runtime/testing.dart';
import 'package:spec_15_merge_patch/spec_15_merge_patch.dart';
import 'package:test/test.dart';

void main() {
  late RecordingClient client;
  late DefaultApi api;

  setUp(() {
    client = RecordingClient();
    api = DefaultApi(ApiConfig(client: client));
  });

  Map<String, dynamic> sentBody() =>
      jsonDecode(client.lastRequest!.body! as String) as Map<String, dynamic>;

  group('patchUser wire body', () {
    setUp(() {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({'id': 'u1'}),
      );
    });

    test('omitted fields are absent; required nullable is explicit null',
        () async {
      await api.patchUser(userId: 'u1', body: const UserPatch(mode: null));

      expect(client.lastRequest!.method, equals('PATCH'));
      expect(
        client.lastRequest!.headers['Content-Type'],
        equals('application/merge-patch+json'),
      );
      expect(sentBody(), equals({'mode': null}));
    });

    test('Omittable(null) serializes as explicit null (clear)', () async {
      await api.patchUser(
        userId: 'u1',
        body: const UserPatch(
          mode: 'active',
          displayName: Omittable(null),
          address: Omittable(null),
        ),
      );

      final body = sentBody();
      expect(body.containsKey('display_name'), isTrue);
      expect(body['display_name'], isNull);
      expect(body.containsKey('address'), isTrue);
      expect(body['address'], isNull);
      expect(body.containsKey('tags'), isFalse);
    });

    test('Omittable(value) serializes the value (update)', () async {
      await api.patchUser(
        userId: 'u1',
        body: const UserPatch(
          mode: 'active',
          displayName: Omittable('Bo'),
          tags: Omittable(['a', 'b']),
          address: Omittable(Address(street: 'Main St')),
        ),
      );

      final body = sentBody();
      expect(body['display_name'], equals('Bo'));
      expect(body['tags'], equals(['a', 'b']));
      expect(body['address'], equals({'street': 'Main St'}));
    });

    test('optional non-nullable field: null still means omitted', () async {
      await api.patchUser(
        userId: 'u1',
        body: const UserPatch(mode: 'active'),
      );

      expect(sentBody().containsKey('email'), isFalse);
    });
  });

  group('UserPatch model', () {
    test('fromJson round-trips absent vs explicit null', () {
      final absent = UserPatch.fromJson(const {'mode': 'active'});
      expect(absent.displayName.isPresent, isFalse);
      expect(absent.toJson(), equals({'mode': 'active'}));

      final cleared = UserPatch.fromJson(const {
        'mode': 'active',
        'display_name': null,
      });
      expect(cleared.displayName.isPresent, isTrue);
      expect(cleared.displayName.value, isNull);
      expect(
        cleared.toJson(),
        equals({'mode': 'active', 'display_name': null}),
      );
    });

    test('equality distinguishes absent from explicit null', () {
      const untouched = UserPatch(mode: 'x');
      const cleared = UserPatch(mode: 'x', displayName: Omittable(null));

      expect(untouched, isNot(equals(cleared)));
      expect(untouched, equals(const UserPatch(mode: 'x')));
      expect(
        cleared,
        equals(const UserPatch(mode: 'x', displayName: Omittable(null))),
      );
    });

    test('copyWith sets, clears, and leaves alone', () {
      const original = UserPatch(mode: 'x', displayName: Omittable('Bo'));

      final untouched = original.copyWith();
      expect(untouched.displayName, equals(const Omittable<String?>('Bo')));

      final cleared = original.copyWith(displayName: const Omittable(null));
      expect(cleared.displayName.isPresent, isTrue);
      expect(cleared.displayName.value, isNull);

      final unset = original.copyWith(displayName: const Omittable.absent());
      expect(unset.displayName.isPresent, isFalse);
      expect(unset.toJson(), equals({'mode': 'x'}));
    });
  });

  group('User response model (shared schema, uniform wrapping)', () {
    test('decodes absent vs null vs value distinctly', () async {
      client.nextResponse = ApiResponse(
        statusCode: 200,
        body: jsonEncode({
          'id': 'u1',
          'display_name': null,
          'address': {'street': 'Main St', 'city': null},
        }),
      );

      final result = await api.getUser(userId: 'u1');
      final user = (result as ApiSuccess<User, Never>).data;

      expect(user.displayName, equals(const Omittable<String?>(null)));
      expect(user.tags.isPresent, isFalse);
      expect(user.address.value?.street, equals('Main St'));
    });
  });

  group('uploadAvatar multipart', () {
    test('absent and explicit-null captions are both skipped', () async {
      client.nextResponse = ApiResponse(statusCode: 204, body: '');
      await api.uploadAvatar(
        userId: 'u1',
        body: UploadAvatarRequest(image: Uint8List.fromList([1, 2, 3])),
      );

      final fields = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields.map((f) => f.name), equals(['image']));

      await api.uploadAvatar(
        userId: 'u1',
        body: UploadAvatarRequest(
          image: Uint8List.fromList([1, 2, 3]),
          caption: const Omittable(null),
        ),
      );
      final fields2 = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields2.map((f) => f.name), equals(['image']));
    });

    test('present caption is sent', () async {
      client.nextResponse = ApiResponse(statusCode: 204, body: '');
      await api.uploadAvatar(
        userId: 'u1',
        body: UploadAvatarRequest(
          image: Uint8List.fromList([1, 2, 3]),
          caption: const Omittable('hello'),
        ),
      );

      final fields = client.lastRequest!.body! as List<ApiMultipartField>;
      expect(fields.map((f) => f.name), equals(['image', 'caption']));
    });
  });
}
