import 'dart:convert';

import 'package:degenerate_runtime/testing.dart';
import 'package:spec_14_per_status_responses/spec_14_per_status_responses.dart';
import 'package:test/test.dart';

void main() {
  late RecordingClient client;
  late DefaultApi api;

  setUp(() {
    client = RecordingClient();
    api = DefaultApi(ApiConfig(client: client));
  });

  ApiResponse json(int statusCode, Map<String, dynamic> body) =>
      ApiResponse(statusCode: statusCode, body: jsonEncode(body));

  group('postAuth status dispatch', () {
    const body = PostAuthRequest(username: 'u', password: 'p');

    test('200 parses the 200 variant', () async {
      client.nextResponse = json(200, {'accessToken': 'jwt'});

      final result = await api.postAuth(body: body);

      if (result.dataOrThrow case PostAuthSuccess200(:final data)) {
        expect(data.accessToken, 'jwt');
      } else {
        fail('expected PostAuthSuccess200, got $result');
      }
    });

    test('201 parses the 201 variant', () async {
      client.nextResponse = json(201, {'userId': 42});

      final result = await api.postAuth(body: body);

      if (result.dataOrThrow case PostAuthSuccess201(:final data)) {
        expect(data.userId, 42);
      } else {
        fail('expected PostAuthSuccess201, got $result');
      }
    });

    test('undeclared 2xx falls back to the default variant', () async {
      client.nextResponse = json(299, {'defaultErrorMessage': 'odd'});

      final result = await api.postAuth(body: body);

      if (result.dataOrThrow case PostAuthSuccessDefault(:final data)) {
        expect(data.defaultErrorMessage, 'odd');
      } else {
        fail('expected PostAuthSuccessDefault, got $result');
      }
    });

    test('401 parses the 401 error variant', () async {
      client.nextResponse = json(401, {'errorMessage': 'denied'});

      final result = await api.postAuth(body: body);

      if (result case ApiError(
        statusCode: 401,
        error: PostAuthError401(:final data),
      )) {
        expect(data.errorMessage, 'denied');
      } else {
        fail('expected ApiError with PostAuthError401, got $result');
      }
    });

    test('undeclared error code falls back to the default variant', () async {
      client.nextResponse = json(418, {'defaultErrorMessage': 'teapot'});

      final result = await api.postAuth(body: body);

      if (result case ApiError(error: PostAuthErrorDefault(:final data))) {
        expect(data.defaultErrorMessage, 'teapot');
      } else {
        fail('expected ApiError with PostAuthErrorDefault, got $result');
      }
    });

    test('malformed body surfaces as ApiParseException', () async {
      client.nextResponse = ApiResponse(statusCode: 200, body: 'not json');

      final result = await api.postAuth(body: body);

      expect(result, isA<ApiParseException<PostAuthSuccess, PostAuthError>>());
    });

    test('variants are exhaustively switchable', () async {
      client.nextResponse = json(201, {'userId': 7});

      final result = await api.postAuth(body: body);

      final label = switch (result.dataOrThrow) {
        PostAuthSuccess200(:final data) => 'token:${data.accessToken}',
        PostAuthSuccess201(:final data) => 'user:${data.userId}',
        PostAuthSuccessDefault() => 'default',
      };
      expect(label, 'user:7');
    });
  });

  group('deleteItem range and no-content dispatch', () {
    test('200 parses the body variant', () async {
      client.nextResponse = json(200, {'deleted': true});

      final result = await api.deleteItem(id: 'x');

      if (result.dataOrThrow case DeleteItemSuccess200(:final data)) {
        expect(data.deleted, isTrue);
      } else {
        fail('expected DeleteItemSuccess200, got $result');
      }
    });

    test('204 parses the payload-free variant', () async {
      client.nextResponse = ApiResponse(statusCode: 204, body: '');

      final result = await api.deleteItem(id: 'x');

      expect(result.dataOrThrow, isA<DeleteItemSuccess204>());
    });

    test('404 matches the 4XX range variant', () async {
      client.nextResponse = json(404, {'code': 404});

      final result = await api.deleteItem(id: 'x');

      if (result case ApiError(error: DeleteItemError4xx(:final data))) {
        expect(data.code, 404);
      } else {
        fail('expected ApiError with DeleteItemError4xx, got $result');
      }
    });

    test('503 matches the 5XX range variant', () async {
      client.nextResponse = json(503, {'trace': 'boom'});

      final result = await api.deleteItem(id: 'x');

      if (result case ApiError(error: DeleteItemError5xx(:final data))) {
        expect(data.trace, 'boom');
      } else {
        fail('expected ApiError with DeleteItemError5xx, got $result');
      }
    });

    test(
      r'status outside all ranges becomes $Unknown with the raw body',
      () async {
        client.nextResponse = ApiResponse(statusCode: 302, body: 'moved');

        final result = await api.deleteItem(id: 'x');

        if (result case ApiError(
          error: DeleteItemError$Unknown(:final statusCode, :final body),
        )) {
          expect(statusCode, 302);
          expect(body, 'moved');
        } else {
          fail(
            r'expected ApiError with DeleteItemError$Unknown, '
            'got $result',
          );
        }
      },
    );

    test(r'undeclared 2xx becomes the success $Unknown variant', () async {
      client.nextResponse = ApiResponse(statusCode: 250, body: 'surprise');

      final result = await api.deleteItem(id: 'x');

      if (result.dataOrThrow case DeleteItemSuccess$Unknown(
        :final statusCode,
        :final body,
      )) {
        expect(statusCode, 250);
        expect(body, 'surprise');
      } else {
        fail(
          r'expected DeleteItemSuccess$Unknown, '
          'got $result',
        );
      }
    });
  });

  group('single-type operations keep plain signatures', () {
    test('getSingle returns the plain response type', () async {
      client.nextResponse = json(200, {'value': 'v'});

      final result = await api.getSingle();

      expect(result.dataOrThrow.value, 'v');
    });
  });
}
