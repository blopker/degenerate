// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_common_components_schemas_identifier.dart';import '../models/response_common35.dart';/// AccountPermissionGroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountPermissionGroupsApi with ApiExecutor {const AccountPermissionGroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Account Permission Groups
///
/// List all the permissions groups for an account.
///
/// `GET /accounts/{account_id}/iam/permission_groups`
Future<ApiResult<ResponseCommon35, Never>> accountPermissionGroupList({required IamCommonComponentsSchemasIdentifier accountId, String? id, String? name, String? label, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if (name != null) {
  queryParameters['name'] = name;
}
if (label != null) {
  queryParameters['label'] = label;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/permission_groups',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon35.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Permission Group Details
///
/// Get information about a specific permission group in an account.
///
/// `GET /accounts/{account_id}/iam/permission_groups/{permission_group_id}`
Future<ApiResult<ResponseCommon35, Never>> accountPermissionGroupDetails({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier permissionGroupId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/permission_groups/${Uri.encodeComponent(permissionGroupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon35.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
