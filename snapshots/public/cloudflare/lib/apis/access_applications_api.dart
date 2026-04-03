// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_app_id.dart';import '../models/access_app_request.dart';import '../models/access_app_response.dart';import '../models/access_app_settings_request.dart';import '../models/access_app_settings_response.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_policy_check_response_result.dart';/// AccessApplicationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessApplicationsApi with ApiExecutor {const AccessApplicationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access applications
///
/// Lists all Access applications in an account.
///
/// `GET /accounts/{account_id}/access/apps`
Future<ApiResult<List<AccessAppResponse>?, Never>> accessApplicationsListAccessApplications({required AccessIdentifier accountId, String? name, String? domain, String? aud, String? targetAttributes, bool? exact, String? search, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (domain != null) {
  queryParameters['domain'] = domain;
}
if (aud != null) {
  queryParameters['aud'] = aud;
}
if (targetAttributes != null) {
  queryParameters['target_attributes'] = targetAttributes;
}
if (exact != null) {
  queryParameters['exact'] = exact.toString();
}
if (search != null) {
  queryParameters['search'] = search;
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessAppResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add an Access application
///
/// Adds a new application to Access.
///
/// `POST /accounts/{account_id}/access/apps`
Future<ApiResult<AccessAppResponse?, Never>> accessApplicationsAddAnApplication({required AccessIdentifier accountId, required AccessAppRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an Access application
///
/// Fetches information about an Access application.
///
/// `GET /accounts/{account_id}/access/apps/{app_id}`
Future<ApiResult<AccessAppResponse?, Never>> accessApplicationsGetAnAccessApplication({required AccessAppId appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an Access application
///
/// Updates an Access application.
///
/// `PUT /accounts/{account_id}/access/apps/{app_id}`
Future<ApiResult<AccessAppResponse?, Never>> accessApplicationsUpdateAnAccessApplication({required AccessAppId appId, required AccessIdentifier accountId, required AccessAppRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an Access application
///
/// Deletes an application from Access.
///
/// `DELETE /accounts/{account_id}/access/apps/{app_id}`
Future<ApiResult<AccessIdResponseResult?, Never>> accessApplicationsDeleteAnAccessApplication({required AccessAppId appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Revoke application tokens
///
/// Revokes all tokens issued for an application.
///
/// `POST /accounts/{account_id}/access/apps/{app_id}/revoke_tokens`
Future<ApiResult<Map<String, dynamic>?, Never>> accessApplicationsRevokeServiceTokens({required AccessAppId appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/revoke_tokens',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
);
 } 
/// Update Access application settings
///
/// Updates Access application settings.
///
/// `PUT /accounts/{account_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessAppSettingsResponse?, Never>> accessApplicationsPutUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier accountId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppSettingsResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Access application settings
///
/// Updates Access application settings.
///
/// `PATCH /accounts/{account_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessAppSettingsResponse?, Never>> accessApplicationsPatchUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier accountId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessAppSettingsResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Test Access policies
///
/// Tests if a specific user has permission to access an application.
///
/// `GET /accounts/{account_id}/access/apps/{app_id}/user_policy_checks`
Future<ApiResult<AccessPolicyCheckResponseResult?, Never>> accessApplicationsTestAccessPolicies({required AccessAppId appId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/user_policy_checks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessPolicyCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
