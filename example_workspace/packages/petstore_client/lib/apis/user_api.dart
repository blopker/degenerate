// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/user.dart';/// UserApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserApi with ApiExecutor {const UserApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create user.
///
/// This can only be done by the logged in user.
///
/// `POST /user`
Future<ApiResult<User, Never>> createUser({User? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates list of users with given input array.
///
/// `POST /user/createWithList`
Future<ApiResult<User, Never>> createUsersWithListInput({List<User>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/user/createWithList',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Logs user into the system.
///
/// Log into the system.
///
/// `GET /user/login`
Future<ApiResult<String, Never>> loginUser({String? username, String? password, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (username != null) {
  queryParameters['username'] = username;
}
if (password != null) {
  queryParameters['password'] = password;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/login',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
);
 } 
/// Logs out current logged in user session.
///
/// Log user out of the system.
///
/// `GET /user/logout`
Future<ApiResult<void, Never>> logoutUser({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/logout',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Get user by user name.
///
/// Get user detail based on username.
///
/// `GET /user/{username}`
Future<ApiResult<User, Never>> getUserByName({required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/${Uri.encodeComponent(username)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update user resource.
///
/// This can only be done by the logged in user.
///
/// `PUT /user/{username}`
Future<ApiResult<void, Never>> updateUser({required String username, User? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/user/${Uri.encodeComponent(username)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Delete user resource.
///
/// This can only be done by the logged in user.
///
/// `DELETE /user/{username}`
Future<ApiResult<void, Never>> deleteUser({required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/${Uri.encodeComponent(username)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
