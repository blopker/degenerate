// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_network_monitoring_configuration_create_account_configuration_request.dart';import '../models/magic_network_monitoring_configuration_update_account_configuration_fields_request.dart';import '../models/magic_network_monitoring_configuration_update_an_entire_account_configuration_request.dart';import '../models/magic_visibility_mnm_account_identifier.dart';import '../models/response_common46_result.dart';/// MagicNetworkMonitoringConfigurationApi operations.
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
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationListAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create account configuration
///
/// Create a new network monitoring configuration.
///
/// `POST /accounts/{account_id}/mnm/config`
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationCreateAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationCreateAccountConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update an entire account configuration
///
/// Update an existing network monitoring configuration, requires the entire configuration to be updated at once.
///
/// `PUT /accounts/{account_id}/mnm/config`
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationUpdateAnEntireAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationUpdateAnEntireAccountConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update account configuration fields
///
/// Update fields in an existing network monitoring configuration.
///
/// `PATCH /accounts/{account_id}/mnm/config`
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationUpdateAccountConfigurationFields({required MagicVisibilityMnmAccountIdentifier accountId, required MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete account configuration
///
/// Delete an existing network monitoring configuration.
///
/// `DELETE /accounts/{account_id}/mnm/config`
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationDeleteAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List rules and account configuration
///
/// Lists default sampling, router IPs, warp devices, and rules for account.
///
/// `GET /accounts/{account_id}/mnm/config/full`
Future<ApiResult<ResponseCommon46Result, Never>> magicNetworkMonitoringConfigurationListRulesAndAccountConfiguration({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/config/full',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
