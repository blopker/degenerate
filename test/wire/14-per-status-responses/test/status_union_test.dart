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

      final success = (result as ApiSuccess<PostAuthSuccess, PostAuthError>)
          .data;
      final variant = success as PostAuthSuccess200;
      expect(variant.data.accessToken, 'jwt');
    });

    test('201 parses the 201 variant', () async {
      client.nextResponse = json(201, {'userId': 42});

      final result = await api.postAuth(body: body);

      final success = (result as ApiSuccess<PostAuthSuccess, PostAuthError>)
          .data;
      final variant = success as PostAuthSuccess201;
      expect(variant.data.userId, 42);
    });

    test('undeclared 2xx falls back to the default variant', () async {
      client.nextResponse = json(299, {'defaultErrorMessage': 'odd'});

      final result = await api.postAuth(body: body);

      final success = (result as ApiSuccess<PostAuthSuccess, PostAuthError>)
          .data;
      final variant = success as PostAuthSuccessDefault;
      expect(variant.data.defaultErrorMessage, 'odd');
    });

    test('401 parses the 401 error variant', () async {
      client.nextResponse = json(401, {'errorMessage': 'denied'});

      final result = await api.postAuth(body: body);

      final error = result as ApiError<PostAuthSuccess, PostAuthError>;
      expect(error.statusCode, 401);
      final variant = error.error! as PostAuthError401;
      expect(variant.data.errorMessage, 'denied');
    });

    test('undeclared error code falls back to the default variant', () async {
      client.nextResponse = json(418, {'defaultErrorMessage': 'teapot'});

      final result = await api.postAuth(body: body);

      final error = result as ApiError<PostAuthSuccess, PostAuthError>;
      final variant = error.error! as PostAuthErrorDefault;
      expect(variant.data.defaultErrorMessage, 'teapot');
    });

    test('malformed body surfaces as ApiParseException', () async {
      client.nextResponse = ApiResponse(statusCode: 200, body: 'not json');

      final result = await api.postAuth(body: body);

      expect(result, isA<ApiParseException<PostAuthSuccess, PostAuthError>>());
    });

    test('variants are exhaustively switchable', () async {
      client.nextResponse = json(201, {'userId': 7});

      final result = await api.postAuth(body: body);
      final success = (result as ApiSuccess<PostAuthSuccess, PostAuthError>)
          .data;

      final label = switch (success) {
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

      final success = (result as ApiSuccess<DeleteItemSuccess, DeleteItemError>)
          .data;
      final variant = success as DeleteItemSuccess200;
      expect(variant.data.deleted, isTrue);
    });

    test('204 parses the payload-free variant', () async {
      client.nextResponse = ApiResponse(statusCode: 204, body: '');

      final result = await api.deleteItem(id: 'x');

      final success = (result as ApiSuccess<DeleteItemSuccess, DeleteItemError>)
          .data;
      expect(success, isA<DeleteItemSuccess204>());
    });

    test('404 matches the 4XX range variant', () async {
      client.nextResponse = json(404, {'code': 404});

      final result = await api.deleteItem(id: 'x');

      final error = result as ApiError<DeleteItemSuccess, DeleteItemError>;
      final variant = error.error! as DeleteItemError4xx;
      expect(variant.data.code, 404);
    });

    test('503 matches the 5XX range variant', () async {
      client.nextResponse = json(503, {'trace': 'boom'});

      final result = await api.deleteItem(id: 'x');

      final error = result as ApiError<DeleteItemSuccess, DeleteItemError>;
      final variant = error.error! as DeleteItemError5xx;
      expect(variant.data.trace, 'boom');
    });

    test(r'status outside all ranges becomes $Unknown with the raw body',
        () async {
      client.nextResponse = ApiResponse(statusCode: 302, body: 'moved');

      final result = await api.deleteItem(id: 'x');

      final error = result as ApiError<DeleteItemSuccess, DeleteItemError>;
      final variant = error.error! as DeleteItemError$Unknown;
      expect(variant.statusCode, 302);
      expect(variant.body, 'moved');
    });

    test(r'undeclared 2xx becomes the success $Unknown variant', () async {
      client.nextResponse = ApiResponse(statusCode: 250, body: 'surprise');

      final result = await api.deleteItem(id: 'x');

      final success = (result as ApiSuccess<DeleteItemSuccess, DeleteItemError>)
          .data;
      final variant = success as DeleteItemSuccess$Unknown;
      expect(variant.statusCode, 250);
      expect(variant.body, 'surprise');
    });
  });

  group('single-type operations keep plain signatures', () {
    test('getSingle returns the plain response type', () async {
      client.nextResponse = json(200, {'value': 'v'});

      final result = await api.getSingle();

      final success =
          (result as ApiSuccess<GetSingleResponse, GetSingleResponseDefault>)
              .data;
      expect(success.value, 'v');
    });
  });
}
