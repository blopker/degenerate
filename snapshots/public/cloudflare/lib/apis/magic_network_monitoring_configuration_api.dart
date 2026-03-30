// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_network_monitoring_configuration_create_account_configuration_request.dart';import '../models/magic_network_monitoring_configuration_update_account_configuration_fields_request.dart';import '../models/magic_network_monitoring_configuration_update_an_entire_account_configuration_request.dart';import '../models/magic_visibility_mnm_account_identifier.dart';import '../models/magic_visibility_mnm_mnm_config_single_response.dart';/// MagicNetworkMonitoringConfigurationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicNetworkMonitoringConfigurationApi with ApiExecutor {const MagicNetworkMonitoringConfigurationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List account configuration
///
/// Lists default sampling, router IPs and warp devices for account.
///
/// `GET /accounts/{account_id}/mnm/config`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationListAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create account configuration
///
/// Create a new network monitoring configuration.
///
/// `POST /accounts/{account_id}/mnm/config`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationCreateAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationCreateAccountConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an entire account configuration
///
/// Update an existing network monitoring configuration, requires the entire configuration to be updated at once.
///
/// `PUT /accounts/{account_id}/mnm/config`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationUpdateAnEntireAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationUpdateAnEntireAccountConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update account configuration fields
///
/// Update fields in an existing network monitoring configuration.
///
/// `PATCH /accounts/{account_id}/mnm/config`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationUpdateAccountConfigurationFields({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete account configuration
///
/// Delete an existing network monitoring configuration.
///
/// `DELETE /accounts/{account_id}/mnm/config`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationDeleteAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List rules and account configuration
///
/// Lists default sampling, router IPs, warp devices, and rules for account.
///
/// `GET /accounts/{account_id}/mnm/config/full`
Future<ApiResult<MagicVisibilityMnmMnmConfigSingleResponse, Never>> magicNetworkMonitoringConfigurationListRulesAndAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config/full',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MagicVisibilityMnmMnmConfigSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
