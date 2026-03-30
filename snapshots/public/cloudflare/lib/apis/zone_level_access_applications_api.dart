// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_app_id.dart';import '../models/access_app_settings_request.dart';import '../models/access_apps.dart';import '../models/access_apps_components_schemas_response_collection2.dart';import '../models/access_apps_components_schemas_single_response2.dart';import '../models/access_id_response.dart';import '../models/access_identifier.dart';import '../models/access_schemas_empty_response.dart';import '../models/access_schemas_policy_check_response.dart';import '../models/access_single_response_update.dart';import '../models/zone_level_access_applications_add_a_bookmark_application_response.dart';import '../models/zone_level_access_applications_update_a_bookmark_application_response.dart';/// ZoneLevelAccessApplicationsApi operations.
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
Future<ApiResult<AccessAppsComponentsSchemasResponseCollection2, Never>> zoneLevelAccessApplicationsListAccessApplications({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessAppsComponentsSchemasResponseCollection2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add an Access application
///
/// Adds a new application to Access.
///
/// `POST /zones/{zone_id}/access/apps`
Future<ApiResult<ZoneLevelAccessApplicationsAddABookmarkApplicationResponse, Never>> zoneLevelAccessApplicationsAddABookmarkApplication({required AccessIdentifier zoneId, required AccessApps body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ZoneLevelAccessApplicationsAddABookmarkApplicationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an Access application
///
/// Fetches information about an Access application.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<AccessAppsComponentsSchemasSingleResponse2, Never>> zoneLevelAccessApplicationsGetAnAccessApplication({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessAppsComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an Access application
///
/// Updates an Access application.
///
/// `PUT /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<ZoneLevelAccessApplicationsUpdateABookmarkApplicationResponse, Never>> zoneLevelAccessApplicationsUpdateABookmarkApplication({required AccessAppId appId, required AccessIdentifier zoneId, required AccessApps body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return ZoneLevelAccessApplicationsUpdateABookmarkApplicationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an Access application
///
/// Deletes an application from Access.
///
/// `DELETE /zones/{zone_id}/access/apps/{app_id}`
Future<ApiResult<AccessIdResponse, Never>> zoneLevelAccessApplicationsDeleteAnAccessApplication({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Revoke application tokens
///
/// Revokes all tokens issued for an application.
///
/// `POST /zones/{zone_id}/access/apps/{app_id}/revoke_tokens`
Future<ApiResult<AccessSchemasEmptyResponse, Never>> zoneLevelAccessApplicationsRevokeServiceTokens({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/revoke_tokens',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasEmptyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update application settings
///
/// Updates application settings.
///
/// `PUT /zones/{zone_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessSingleResponseUpdate, Never>> zoneLevelAccessApplicationsPutUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier zoneId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessSingleResponseUpdate.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update application settings
///
/// Updates application settings.
///
/// `PATCH /zones/{zone_id}/access/apps/{app_id}/settings`
Future<ApiResult<AccessSingleResponseUpdate, Never>> zoneLevelAccessApplicationsPatchUpdateAccessApplicationSettings({required AccessAppId appId, required AccessIdentifier zoneId, required AccessAppSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessSingleResponseUpdate.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Test Access policies
///
/// Tests if a specific user has permission to access an application.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}/user_policy_checks`
Future<ApiResult<AccessSchemasPolicyCheckResponse, Never>> zoneLevelAccessApplicationsTestAccessPolicies({required AccessAppId appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/user_policy_checks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasPolicyCheckResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
