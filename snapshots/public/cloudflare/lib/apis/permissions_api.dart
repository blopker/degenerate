// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_permission_delete_response.dart';import '../models/delete_permission_delete_response400.dart';import '../models/delete_permission_delete_response404.dart';import '../models/get_permission_list_response.dart';import '../models/get_permission_list_response400.dart';import '../models/get_permission_list_response404.dart';import '../models/post_permission_create_request.dart';import '../models/post_permission_create_response.dart';import '../models/post_permission_create_response400.dart';import '../models/put_permission_update_request.dart';import '../models/put_permission_update_response.dart';import '../models/put_permission_update_response400.dart';import '../models/put_permission_update_response404.dart';/// PermissionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PermissionsApi with ApiExecutor {const PermissionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List permissions for dataset
///
/// List permissions
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions`
Future<ApiResult<List<GetPermissionListResponse>, OneOf2<GetPermissionListResponse400, GetPermissionListResponse404>>> getPermissionList({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/permissions',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetPermissionListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<GetPermissionListResponse400, GetPermissionListResponse404>.a(GetPermissionListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<GetPermissionListResponse400, GetPermissionListResponse404>.b(GetPermissionListResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create a permission for dataset
///
/// Create a permission
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions`
Future<ApiResult<PostPermissionCreateResponse, PostPermissionCreateResponse400>> postPermissionCreate({required String accountId, required String datasetId, PostPermissionCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/permissions',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostPermissionCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostPermissionCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a permission for dataset
///
/// Update a permission
///
/// `PUT /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions/{grant_id}`
Future<ApiResult<PutPermissionUpdateResponse, OneOf2<PutPermissionUpdateResponse400, PutPermissionUpdateResponse404>>> putPermissionUpdate({required String accountId, required String datasetId, required String grantId, PutPermissionUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/permissions/${Uri.encodeComponent(grantId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PutPermissionUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PutPermissionUpdateResponse400, PutPermissionUpdateResponse404>.a(PutPermissionUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<PutPermissionUpdateResponse400, PutPermissionUpdateResponse404>.b(PutPermissionUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete a permission for dataset
///
/// Delete a permission
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions/{grant_id}`
Future<ApiResult<DeletePermissionDeleteResponse, OneOf2<DeletePermissionDeleteResponse400, DeletePermissionDeleteResponse404>>> deletePermissionDelete({required String accountId, required String datasetId, required String grantId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/permissions/${Uri.encodeComponent(grantId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeletePermissionDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<DeletePermissionDeleteResponse400, DeletePermissionDeleteResponse404>.a(DeletePermissionDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<DeletePermissionDeleteResponse400, DeletePermissionDeleteResponse404>.b(DeletePermissionDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
