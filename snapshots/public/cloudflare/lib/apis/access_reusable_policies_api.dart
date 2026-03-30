// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_policy_req.dart';import '../models/access_reusable_policies_components_schemas_id_response.dart';import '../models/access_reusable_policies_components_schemas_response_collection.dart';import '../models/access_reusable_policies_components_schemas_single_response.dart';import '../models/access_schemas_uuid.dart';/// AccessReusablePoliciesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessReusablePoliciesApi with ApiExecutor {const AccessReusablePoliciesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access reusable policies
///
/// Lists Access reusable policies.
///
/// `GET /accounts/{account_id}/access/policies`
Future<ApiResult<AccessReusablePoliciesComponentsSchemasResponseCollection, Never>> accessPoliciesListAccessReusablePolicies({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policies',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessReusablePoliciesComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an Access reusable policy
///
/// Creates a new Access reusable policy.
///
/// `POST /accounts/{account_id}/access/policies`
Future<ApiResult<AccessReusablePoliciesComponentsSchemasSingleResponse, Never>> accessPoliciesCreateAnAccessReusablePolicy({required AccessIdentifier accountId, required AccessPolicyReq body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policies',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessReusablePoliciesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an Access reusable policy
///
/// Fetches a single Access reusable policy.
///
/// `GET /accounts/{account_id}/access/policies/{policy_id}`
Future<ApiResult<AccessReusablePoliciesComponentsSchemasSingleResponse, Never>> accessPoliciesGetAnAccessReusablePolicy({required AccessIdentifier accountId, required AccessSchemasUuid policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessReusablePoliciesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an Access reusable policy
///
/// Updates a Access reusable policy.
///
/// `PUT /accounts/{account_id}/access/policies/{policy_id}`
Future<ApiResult<AccessReusablePoliciesComponentsSchemasSingleResponse, Never>> accessPoliciesUpdateAnAccessReusablePolicy({required AccessIdentifier accountId, required AccessSchemasUuid policyId, required AccessPolicyReq body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessReusablePoliciesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an Access reusable policy
///
/// Deletes an Access reusable policy.
///
/// `DELETE /accounts/{account_id}/access/policies/{policy_id}`
Future<ApiResult<AccessReusablePoliciesComponentsSchemasIdResponse, Never>> accessPoliciesDeleteAnAccessReusablePolicy({required AccessIdentifier accountId, required AccessSchemasUuid policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessReusablePoliciesComponentsSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
