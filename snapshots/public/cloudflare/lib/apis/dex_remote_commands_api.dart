// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/digital_experience_monitoring_account_identifier.dart';import '../models/digital_experience_monitoring_command_id.dart';import '../models/digital_experience_monitoring_commands_devices_response.dart';import '../models/digital_experience_monitoring_get_commands_quota_response.dart';import '../models/digital_experience_monitoring_get_commands_response.dart';import '../models/digital_experience_monitoring_post_commands_response.dart';import '../models/get_commands_status.dart';import '../models/post_commands_request.dart';/// DexRemoteCommandsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DexRemoteCommandsApi with ApiExecutor {const DexRemoteCommandsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List account commands
///
/// Retrieves a paginated list of commands issued to devices under the specified account, optionally filtered by time range, device, or other parameters
///
/// `GET /accounts/{account_id}/dex/commands`
Future<ApiResult<DigitalExperienceMonitoringGetCommandsResponse?, Never>> getCommands({required DigitalExperienceMonitoringAccountIdentifier accountId, required double page, required double perPage, DateTime? from, DateTime? to, String? deviceId, String? userEmail, String? commandType, GetCommandsStatus? status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['page'] = page.toString();
queryParameters['per_page'] = perPage.toString();
if (from != null) {
  queryParameters['from'] = from.toString();
}
if (to != null) {
  queryParameters['to'] = to.toString();
}
if (deviceId != null) {
  queryParameters['device_id'] = deviceId;
}
if (userEmail != null) {
  queryParameters['user_email'] = userEmail;
}
if (commandType != null) {
  queryParameters['command_type'] = commandType;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/commands',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DigitalExperienceMonitoringGetCommandsResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create account commands
///
/// Initiate commands for up to 10 devices per account
///
/// `POST /accounts/{account_id}/dex/commands`
Future<ApiResult<DigitalExperienceMonitoringPostCommandsResponse?, Never>> postCommands({required DigitalExperienceMonitoringAccountIdentifier accountId, required PostCommandsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/commands',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DigitalExperienceMonitoringPostCommandsResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Download command output file
///
/// Downloads artifacts for an executed command. Bulk downloads are not supported
///
/// `GET /accounts/{account_id}/dex/commands/{command_id}/downloads/{filename}`
Future<ApiResult<Uint8List, Never>> getCommandsCommandIdDownloadsFilename({required DigitalExperienceMonitoringAccountIdentifier accountId, required DigitalExperienceMonitoringCommandId commandId, required String filename, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/commands/${Uri.encodeComponent(commandId.toString())}/downloads/${Uri.encodeComponent(filename)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Uint8List.fromList(response.bodyBytes);
  },
);
 } 
/// List devices eligible for remote captures
///
/// List devices with WARP client support for remote captures which have been connected in the last 1 hour.
///
/// `GET /accounts/{account_id}/dex/commands/devices`
Future<ApiResult<DigitalExperienceMonitoringCommandsDevicesResponse?, Never>> getCommandsEligibleDevices({required DigitalExperienceMonitoringAccountIdentifier accountId, required double page, required double perPage, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['page'] = page.toString();
queryParameters['per_page'] = perPage.toString();
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/commands/devices',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DigitalExperienceMonitoringCommandsDevicesResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Returns account commands usage, quota, and reset time
///
/// Retrieves the current quota usage and limits for device commands within a specific account, including the time when the quota will reset
///
/// `GET /accounts/{account_id}/dex/commands/quota`
Future<ApiResult<DigitalExperienceMonitoringGetCommandsQuotaResponse?, Never>> getCommandsQuota({required DigitalExperienceMonitoringAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/commands/quota',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DigitalExperienceMonitoringGetCommandsQuotaResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
