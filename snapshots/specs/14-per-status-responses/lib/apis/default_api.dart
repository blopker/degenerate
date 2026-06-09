// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_item_error.dart';import '../models/delete_item_success.dart';import '../models/get_single_response.dart';import '../models/get_single_response_default.dart';import '../models/post_auth_error.dart';import '../models/post_auth_request.dart';import '../models/post_auth_success.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Sign in or sign up
///
/// `POST /auth`
Future<ApiResult<PostAuthSuccess, PostAuthError>> postAuth({required PostAuthRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/auth',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostAuthSuccess.parse(response);
  },
  onError: (response) {
    return PostAuthError.parse(response);
  },
);
 } 
///
/// `DELETE /items/{id}`
Future<ApiResult<DeleteItemSuccess, DeleteItemError>> deleteItem({required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/items/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteItemSuccess.parse(response);
  },
  onError: (response) {
    return DeleteItemError.parse(response);
  },
);
 } 
///
/// `GET /single`
Future<ApiResult<GetSingleResponse, GetSingleResponseDefault>> getSingle({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/single',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetSingleResponseDefault.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
