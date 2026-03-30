// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_app_config_add_single_request.dart';import '../models/magic_app_config_update_request.dart';import '../models/magic_identifier.dart';/// MagicSiteAppConfigsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSiteAppConfigsApi with ApiExecutor {const MagicSiteAppConfigsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List App Configs
///
/// Lists App Configs associated with a site.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/app_configs`
Future<ApiResult<Map<String, dynamic>?, Never>> magicSiteAppConfigsListAppConfigs({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/app_configs',
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
/// Create a new App Config
///
/// Creates a new App Config for a site
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/app_configs`
Future<ApiResult<Map<String, dynamic>?, Never>> magicSiteAppConfigsAddAppConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicAppConfigAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/app_configs',
  headers: headers,
  body: jsonEncode(body.toJson()),
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
/// Update an App Config
///
/// Updates an App Config for a site
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> magicSiteAppConfigsUpdateAppConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicIdentifier appConfigId, required MagicAppConfigUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/app_configs/${Uri.encodeComponent(appConfigId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
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
/// Update an App Config
///
/// Updates an App Config for a site
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> magicSiteAppConfigsPatchAppConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicIdentifier appConfigId, required MagicAppConfigUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/app_configs/${Uri.encodeComponent(appConfigId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
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
/// Delete App Config
///
/// Deletes specific App Config associated with a site.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> magicSiteAppConfigsDeleteAppConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicIdentifier appConfigId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/app_configs/${Uri.encodeComponent(appConfigId.toString())}',
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
 }
