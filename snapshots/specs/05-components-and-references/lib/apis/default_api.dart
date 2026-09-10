// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/user.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `GET /users`
Future<ApiResult<List<User>, Never>> listUsers({int? limit, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/users',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => User.fromJson(e as Map<String, dynamic>)).toList();
  },
);
}
///
/// `POST /users`
Future<ApiResult<void, Never>> createUser({required User body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/users',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
);
}
///
/// `GET /users/{userId}`
Future<ApiResult<User, Never>> getUserById({required String userId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/users/${Uri.encodeComponent(userId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return User.fromJson(json as Map<String, dynamic>);
  },
);
}
}
