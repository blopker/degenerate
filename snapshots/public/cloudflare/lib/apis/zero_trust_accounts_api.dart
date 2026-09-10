// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_zero_trust_account_device_settings.dart';import '../models/zero_trust_accounts_create_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_delete_device_settings_for_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_get_device_settings_for_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_get_logging_settings_for_the_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_get_zero_trust_account_configuration_response4_xx.dart';import '../models/zero_trust_accounts_get_zero_trust_account_information_response4_xx.dart';import '../models/zero_trust_accounts_patch_device_settings_for_the_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_patch_zero_trust_account_configuration_response4_xx.dart';import '../models/zero_trust_accounts_update_device_settings_for_the_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_update_logging_settings_for_the_zero_trust_account_response4_xx.dart';import '../models/zero_trust_accounts_update_zero_trust_account_configuration_response4_xx.dart';import '../models/zero_trust_gateway_gateway_account_config_result.dart';import '../models/zero_trust_gateway_gateway_account_logging_settings.dart';import '../models/zero_trust_gateway_gateway_account_result.dart';import '../models/zero_trust_gateway_gateway_account_settings_request.dart';import '../models/zero_trust_gateway_identifier.dart';/// ZeroTrustAccountsApi operations.
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
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings, ZeroTrustAccountsGetDeviceSettingsForZeroTrustAccountResponse4Xx>> zeroTrustAccountsGetDeviceSettingsForZeroTrustAccount({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsGetDeviceSettingsForZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update device settings for a Zero Trust account
///
/// Updates the current device settings for a Zero Trust account.
///
/// `PUT /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings, ZeroTrustAccountsUpdateDeviceSettingsForTheZeroTrustAccountResponse4Xx>> zeroTrustAccountsUpdateDeviceSettingsForTheZeroTrustAccount({required TeamsDevicesIdentifier accountId, required TeamsDevicesZeroTrustAccountDeviceSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsUpdateDeviceSettingsForTheZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Patch device settings for a Zero Trust account
///
/// Patches the current device settings for a Zero Trust account.
///
/// `PATCH /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings, ZeroTrustAccountsPatchDeviceSettingsForTheZeroTrustAccountResponse4Xx>> zeroTrustAccountsPatchDeviceSettingsForTheZeroTrustAccount({required TeamsDevicesIdentifier accountId, required TeamsDevicesZeroTrustAccountDeviceSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsPatchDeviceSettingsForTheZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Reset device settings for a Zero Trust account with defaults. This turns off all proxying.
///
/// Resets the current device settings for a Zero Trust account.
///
/// `DELETE /accounts/{account_id}/devices/settings`
Future<ApiResult<TeamsDevicesZeroTrustAccountDeviceSettings, ZeroTrustAccountsDeleteDeviceSettingsForZeroTrustAccountResponse4Xx>> zeroTrustAccountsDeleteDeviceSettingsForZeroTrustAccount({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesZeroTrustAccountDeviceSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsDeleteDeviceSettingsForZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Zero Trust account information
///
/// Retrieve information about the current Zero Trust account.
///
/// `GET /accounts/{account_id}/gateway`
Future<ApiResult<ZeroTrustGatewayGatewayAccountResult?, ZeroTrustAccountsGetZeroTrustAccountInformationResponse4Xx>> zeroTrustAccountsGetZeroTrustAccountInformation({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsGetZeroTrustAccountInformationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Zero Trust account
///
/// Create a Zero Trust account for an existing Cloudflare account.
///
/// `POST /accounts/{account_id}/gateway`
Future<ApiResult<ZeroTrustGatewayGatewayAccountResult?, ZeroTrustAccountsCreateZeroTrustAccountResponse4Xx>> zeroTrustAccountsCreateZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsCreateZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Zero Trust account configuration
///
/// Retrieve the current Zero Trust account configuration.
///
/// `GET /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, ZeroTrustAccountsGetZeroTrustAccountConfigurationResponse4Xx>> zeroTrustAccountsGetZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsGetZeroTrustAccountConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Zero Trust account configuration
///
/// Update the current Zero Trust account configuration.
///
/// `PUT /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, ZeroTrustAccountsUpdateZeroTrustAccountConfigurationResponse4Xx>> zeroTrustAccountsUpdateZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsUpdateZeroTrustAccountConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Patch Zero Trust account configuration
///
/// Update (PATCH) a single subcollection of settings such as `antivirus`, `tls_decrypt`, `activity_log`, `block_page`, `browser_isolation`, `fips`, `body_scanning`, or `certificate` without updating the entire configuration object. This endpoint returns an error if any settings collection lacks proper configuration.
///
/// `PATCH /accounts/{account_id}/gateway/configuration`
Future<ApiResult<ZeroTrustGatewayGatewayAccountConfigResult?, ZeroTrustAccountsPatchZeroTrustAccountConfigurationResponse4Xx>> zeroTrustAccountsPatchZeroTrustAccountConfiguration({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/configuration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountConfigResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsPatchZeroTrustAccountConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get logging settings for the Zero Trust account
///
/// Retrieve the current logging settings for the Zero Trust account.
///
/// `GET /accounts/{account_id}/gateway/logging`
Future<ApiResult<ZeroTrustGatewayGatewayAccountLoggingSettings?, ZeroTrustAccountsGetLoggingSettingsForTheZeroTrustAccountResponse4Xx>> zeroTrustAccountsGetLoggingSettingsForTheZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/logging',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountLoggingSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsGetLoggingSettingsForTheZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Zero Trust account logging settings
///
/// Update logging settings for the current Zero Trust account.
///
/// `PUT /accounts/{account_id}/gateway/logging`
Future<ApiResult<ZeroTrustGatewayGatewayAccountLoggingSettings?, ZeroTrustAccountsUpdateLoggingSettingsForTheZeroTrustAccountResponse4Xx>> zeroTrustAccountsUpdateLoggingSettingsForTheZeroTrustAccount({required ZeroTrustGatewayIdentifier accountId, required ZeroTrustGatewayGatewayAccountLoggingSettings body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/logging',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayGatewayAccountLoggingSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustAccountsUpdateLoggingSettingsForTheZeroTrustAccountResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
