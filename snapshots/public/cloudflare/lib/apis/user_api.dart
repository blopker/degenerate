// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_single_user_response.dart';import '../models/user_edit_user_request.dart';import '../models/user_list_user_tenants_response.dart';/// UserApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserApi with ApiExecutor {const UserApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// User Details
///
/// `GET /user`
Future<ApiResult<IamSingleUserResponse, Never>> userDetails({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleUserResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit User
///
/// Edit part of your user details.
///
/// `PATCH /user`
Future<ApiResult<IamSingleUserResponse, Never>> userEditUser({required UserEditUserRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleUserResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List user tenants
///
/// Retrieves list of tenants the authenticated user / method has access to.
///
/// `GET /users/tenants`
Future<ApiResult<UserListUserTenantsResponse, Never>> userListUserTenants({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/users/tenants',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UserListUserTenantsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
