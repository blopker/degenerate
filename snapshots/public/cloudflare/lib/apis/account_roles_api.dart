// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_collection_role_response.dart';import '../models/iam_common_components_schemas_identifier.dart';import '../models/iam_role_components_schemas_identifier.dart';import '../models/iam_single_role_response.dart';/// AccountRolesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountRolesApi with ApiExecutor {const AccountRolesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Roles
///
/// Get all available roles for an account.
///
/// `GET /accounts/{account_id}/roles`
Future<ApiResult<IamCollectionRoleResponse, Never>> accountRolesListRoles({required IamCommonComponentsSchemasIdentifier accountId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/roles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamCollectionRoleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Role Details
///
/// Get information about a specific role for an account.
///
/// `GET /accounts/{account_id}/roles/{role_id}`
Future<ApiResult<IamSingleRoleResponse, Never>> accountRolesRoleDetails({required IamRoleComponentsSchemasIdentifier roleId, required IamCommonComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/roles/${Uri.encodeComponent(roleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleRoleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
