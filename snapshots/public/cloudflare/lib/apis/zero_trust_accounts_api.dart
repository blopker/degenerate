// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_zero_trust_account_device_settings.dart';import '../models/zero_trust_gateway_gateway_account_config_result.dart';import '../models/zero_trust_gateway_gateway_account_logging_settings.dart';import '../models/zero_trust_gateway_gateway_account_result.dart';import '../models/zero_trust_gateway_gateway_account_settings.dart';import '../models/zero_trust_gateway_identifier.dart';/// ZeroTrustAccountsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustAccountsApi with ApiExecutor {const ZeroTrustAccountsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get device settings for a Zero Trust account
///
/// Describes the current device settings for a Zero Trust account.
///
/// `GET /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings?, Never>> zeroTrustAccountsGetDeviceSettingsForZeroTrustAccount({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update device settings for a Zero Trust account
///
/// Updates the current device settings for a Zero Trust account.
///
/// `PUT /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings?, Never>> zeroTrustAccountsUpdateDeviceSettingsForTheZeroTrustAccount({required TeamsDevicesIdentifier accountId, required TeamsDevicesZeroTrustAccountDeviceSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Patch device settings for a Zero Trust account
///
/// Patches the current device settings for a Zero Trust account.
///
/// `PATCH /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings?, Never>> zeroTrustAccountsPatchDeviceSettingsForTheZeroTrustAccount({required TeamsDevicesIdentifier accountId, required TeamsDevicesZeroTrustAccountDeviceSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Reset device settings for a Zero Trust account with defaults. This turns off all proxying.
///
/// Resets the current device settings for a Zero Trust account.
///
/// `DELETE /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings?, Never>> zeroTrustAccountsDeleteDeviceSettingsForZeroTrustAccount({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Zero Trust account information
///
/// Retrieve information about the current Zero Trust account.
///
/// `GET /accounts/{account_id}/gateway`
Future<ApiResult<ZeroTrustGatewayGatewayAccountResult?, Never>> zeroTrustAccountsGetZeroTrustAccountInformation({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create Zero Trust account
///
/// Create a Zero Trust account for an existing Cloudflare account.
///
/// `POST /accounts/{account_id}/gateway`
Future<ApiResult<ZeroTrustGatewayGatewayAccountResult?, Never>> zeroTrustAccountsCreateZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Zero Trust account configuration
///
/// Retrieve the current Zero Trust account configuration.
///
/// `GET /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, Never>> zeroTrustAccountsGetZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Zero Trust account configuration
///
/// Update the current Zero Trust account configuration.
///
/// `PUT /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, Never>> zeroTrustAccountsUpdateZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Patch Zero Trust account configuration
///
/// Update (PATCH) a single subcollection of settings such as `antivirus`, `tls_decrypt`, `activity_log`, `block_page`, `browser_isolation`, `fips`, `body_scanning`, or `certificate` without updating the entire configuration object. This endpoint returns an error if any settings collection lacks proper configuration.
///
/// `PATCH /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, Never>> zeroTrustAccountsPatchZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get logging settings for the Zero Trust account
///
/// Retrieve the current logging settings for the Zero Trust account.
///
/// `GET /accounts/{account_id}/gateway/logging`
Future<ApiResult<ZeroTrustGatewayGatewayAccountLoggingSettings?, Never>> zeroTrustAccountsGetLoggingSettingsForTheZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/logging',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountLoggingSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Zero Trust account logging settings
///
/// Update logging settings for the current Zero Trust account.
///
/// `PUT /accounts/{account_id}/gateway/logging`
Future<ApiResult<ZeroTrustGatewayGatewayAccountLoggingSettings?, Never>> zeroTrustAccountsUpdateLoggingSettingsForTheZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountLoggingSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/logging',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustGatewayGatewayAccountLoggingSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
