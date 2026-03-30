// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_app_id.dart';import '../models/access_app_settings_request.dart';import '../models/access_app_settings_response.dart';import '../models/access_apps.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_schemas_basic_app_response_props.dart';import '../models/access_schemas_policy_check_response_result.dart';/// ZoneLevelAccessApplicationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessApplicationsApi with ApiExecutor {const ZoneLevelAccessApplicationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access Applications
///
/// List all Access Applications in a zone.
///
/// `GET /zones/{zone_id}/access/apps`
Future<ApiResult<List<AccessApps>?, Never>> zoneLevelAccessApplicationsListAccessApplications({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => OneOf8.parse(e, fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),)).toList();
  },
);
 } 
/// Add an Access application
///
/// Adds a new application to Access.
///
/// `POST /zones/{zone_id}/access/apps`
Future<ApiResult<AccessApps?, Never>> zoneLevelAccessApplicationsAddABookmarkApplication({required AccessIdentifier zoneId, required AccessApps body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Get an Access application
///
/// Fetches information about an Access application.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<AccessApps?, Never>> zoneLevelAccessApplicationsGetAnAccessApplication({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Update an Access application
///
/// Updates an Access application.
///
/// `PUT /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<AccessApps?, Never>> zoneLevelAccessApplicationsUpdateABookmarkApplication({required AccessAppId appId, required AccessIdentifier zoneId, required AccessApps body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Delete an Access application
///
/// Deletes an application from Access.
///
/// `DELETE /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<AccessIdResponseResult?, Never>> zoneLevelAccessApplicationsDeleteAnAccessApplication({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
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
/// `POST /zones/{zone_id}/access/apps/{app_id}/revoke_tokens`
Future<ApiResult<Map<String, dynamic>?, Never>> zoneLevelAccessApplicationsRevokeServiceTokens({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/revoke_tokens',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Update application settings
///
/// Updates application settings.
///
/// `PUT /zones/{zone_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessAppSettingsResponse?, Never>> zoneLevelAccessApplicationsPutUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier zoneId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/settings',
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
/// Update application settings
///
/// Updates application settings.
///
/// `PATCH /zones/{zone_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessAppSettingsResponse?, Never>> zoneLevelAccessApplicationsPatchUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier zoneId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/settings',
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
/// `GET /zones/{zone_id}/access/apps/{app_id}/user_policy_checks`
Future<ApiResult<AccessSchemasPolicyCheckResponseResult?, Never>> zoneLevelAccessApplicationsTestAccessPolicies({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/user_policy_checks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasPolicyCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
