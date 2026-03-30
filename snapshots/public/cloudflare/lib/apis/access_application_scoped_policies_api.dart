// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_app_policies_components_schemas_id_response_result.dart';import '../models/access_app_policy_request.dart';import '../models/access_app_policy_response.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';/// AccessApplicationScopedPoliciesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessApplicationScopedPoliciesApi with ApiExecutor {const AccessApplicationScopedPoliciesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access application policies
///
/// Lists Access policies configured for an application. Returns both exclusively scoped and reusable policies used by the application.
///
/// `GET /accounts/{account_id}/access/apps/{app_id}/policies`
Future<ApiResult<List<AccessAppPolicyResponse>?, Never>> accessPoliciesListAccessAppPolicies({required AccessUuid appId, required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create an Access application policy
///
/// Creates a policy applying exclusive to a single application that defines the users or groups who can reach it. We recommend creating a reusable policy instead and subsequently referencing its ID in the application's 'policies' array.
///
/// `POST /accounts/{account_id}/access/apps/{app_id}/policies`
Future<ApiResult<AccessAppPolicyResponse?, Never>> accessPoliciesCreateAnAccessPolicy({required AccessUuid appId, required AccessIdentifier accountId, required AccessAppPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppPolicyResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an Access application policy
///
/// Fetches a single Access policy configured for an application. Returns both exclusively owned and reusable policies used by the application.
///
/// `GET /accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessAppPolicyResponse?, Never>> accessPoliciesGetAnAccessPolicy({required AccessUuid appId, required AccessUuid policyId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppPolicyResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an Access application policy
///
/// Updates an Access policy specific to an application. To update a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.
///
/// `PUT /accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessAppPolicyResponse?, Never>> accessPoliciesUpdateAnAccessPolicy({required AccessUuid appId, required AccessUuid policyId, required AccessIdentifier accountId, required AccessAppPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppPolicyResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an Access application policy
///
/// Deletes an Access policy specific to an application. To delete a reusable policy, use the /accounts/{account_id}/policies/{uid} endpoint.
///
/// `DELETE /accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessAppPoliciesComponentsSchemasIdResponseResult?, Never>> accessPoliciesDeleteAnAccessPolicy({required AccessUuid appId, required AccessUuid policyId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppPoliciesComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Convert an Access application policy to a reusable policy
///
/// Converts an application-scoped policy to a reusable policy. The policy will no longer be exclusively scoped to the application. Further updates to the policy should go through the /accounts/{account_id}/policies/{uid} endpoint.
///
/// `PUT /accounts/{account_id}/access/apps/{app_id}/policies/{policy_id}/make_reusable`
Future<ApiResult<List<AccessAppPolicyResponse>?, Never>> accessPoliciesConvertReusable({required AccessUuid appId, required AccessUuid policyId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}/make_reusable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
