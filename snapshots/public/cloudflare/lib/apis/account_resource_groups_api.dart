// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_common_components_schemas_identifier.dart';import '../models/iam_request_create_resource_group.dart';import '../models/iam_request_update_resource_group.dart';import '../models/response_common35.dart';/// AccountResourceGroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountResourceGroupsApi with ApiExecutor {const AccountResourceGroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Resource Groups
///
/// List all the resource groups for an account.
///
/// `GET /accounts/{account_id}/iam/resource_groups`
Future<ApiResult<ResponseCommon35, Never>> accountResourceGroupList({required IamCommonComponentsSchemasIdentifier accountId, IamCommonComponentsSchemasIdentifier? id, String? name, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id.toString();
}
if (name != null) {
  queryParameters['name'] = name;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/resource_groups',
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
/// Create Resource Group
///
/// Create a new Resource Group under the specified account.
///
/// `POST /accounts/{account_id}/iam/resource_groups`
Future<ApiResult<ResponseCommon35, Never>> accountResourceGroupCreate({required IamCommonComponentsSchemasIdentifier accountId, required IamRequestCreateResourceGroup body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/resource_groups',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon35.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Resource Group Details
///
/// Get information about a specific resource group in an account.
///
/// `GET /accounts/{account_id}/iam/resource_groups/{resource_group_id}`
Future<ApiResult<ResponseCommon35, Never>> accountResourceGroupDetails({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier resourceGroupId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/resource_groups/${Uri.encodeComponent(resourceGroupId.toString())}',
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
/// Update Resource Group
///
/// Modify an existing resource group.
///
/// `PUT /accounts/{account_id}/iam/resource_groups/{resource_group_id}`
Future<ApiResult<ResponseCommon35, Never>> accountResourceGroupUpdate({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier resourceGroupId, required IamRequestUpdateResourceGroup body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/resource_groups/${Uri.encodeComponent(resourceGroupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon35.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove Resource Group
///
/// Remove a resource group from an account.
///
/// `DELETE /accounts/{account_id}/iam/resource_groups/{resource_group_id}`
Future<ApiResult<ResponseCommon35, Never>> accountResourceGroupDelete({required IamCommonComponentsSchemasIdentifier accountId, required IamCommonComponentsSchemasIdentifier resourceGroupId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/iam/resource_groups/${Uri.encodeComponent(resourceGroupId.toString())}',
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
