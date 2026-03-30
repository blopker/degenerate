// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_netflow_config.dart';import '../models/magic_netflow_config_request.dart';/// MagicSiteNetFlowConfigApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSiteNetFlowConfigApi with ApiExecutor {const MagicSiteNetFlowConfigApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// NetFlow Configuration Details
///
/// Get NetFlow configuration for a site.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}/netflow_config`
Future<ApiResult<MagicNetflowConfig?, Never>> magicSiteNetflowConfigDetails({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/netflow_config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create NetFlow Configuration
///
/// Creates a NetFlow configuration for a site.
///
/// `POST /accounts/{account_id}/magic/sites/{site_id}/netflow_config`
Future<ApiResult<MagicNetflowConfig?, Never>> magicSiteNetflowConfigCreateNetflowConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicNetflowConfigRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/netflow_config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update NetFlow Configuration
///
/// Updates NetFlow configuration for a site (partial update).
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}/netflow_config`
Future<ApiResult<MagicNetflowConfig?, Never>> magicSiteNetflowConfigUpdateNetflowConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicNetflowConfigRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/netflow_config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update NetFlow Configuration
///
/// Updates NetFlow configuration for a site.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}/netflow_config`
Future<ApiResult<MagicNetflowConfig?, Never>> magicSiteNetflowConfigPatchNetflowConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, required MagicNetflowConfigRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/netflow_config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete NetFlow Configuration
///
/// Remove NetFlow configuration for a site.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}/netflow_config`
Future<ApiResult<MagicNetflowConfig?, Never>> magicSiteNetflowConfigDeleteNetflowConfig({required MagicIdentifier accountId, required MagicIdentifier siteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}/netflow_config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
