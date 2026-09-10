// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/device_posture_rules_create_device_posture_rule_request.dart';import '../models/device_posture_rules_create_device_posture_rule_response4_xx.dart';import '../models/device_posture_rules_delete_device_posture_rule_response4_xx.dart';import '../models/device_posture_rules_device_posture_rules_details_response4_xx.dart';import '../models/device_posture_rules_list_device_posture_rules_response4_xx.dart';import '../models/device_posture_rules_update_device_posture_rule_request.dart';import '../models/device_posture_rules_update_device_posture_rule_response4_xx.dart';import '../models/teams_devices_device_posture_rules.dart';import '../models/teams_devices_id_response_result.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_uuid.dart';/// DevicePostureRulesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DevicePostureRulesApi with ApiExecutor {const DevicePostureRulesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List device posture rules
///
/// Fetches device posture rules for a Zero Trust account.
///
/// `GET /accounts/{account_id}/devices/posture`
Future<ApiResult<List<TeamsDevicesDevicePostureRules>, DevicePostureRulesListDevicePostureRulesResponse4Xx>> devicePostureRulesListDevicePostureRules({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesDevicePostureRules.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicePostureRulesListDevicePostureRulesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a device posture rule
///
/// Creates a new device posture rule.
///
/// `POST /accounts/{account_id}/devices/posture`
Future<ApiResult<TeamsDevicesDevicePostureRules, DevicePostureRulesCreateDevicePostureRuleResponse4Xx>> devicePostureRulesCreateDevicePostureRule({required TeamsDevicesIdentifier accountId, required DevicePostureRulesCreateDevicePostureRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDevicePostureRules.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicePostureRulesCreateDevicePostureRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get device posture rule details
///
/// Fetches a single device posture rule.
///
/// `GET /accounts/{account_id}/devices/posture/{rule_id}`
Future<ApiResult<TeamsDevicesDevicePostureRules, DevicePostureRulesDevicePostureRulesDetailsResponse4Xx>> devicePostureRulesDetails({required TeamsDevicesUuid ruleId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDevicePostureRules.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicePostureRulesDevicePostureRulesDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a device posture rule
///
/// Updates a device posture rule.
///
/// `PUT /accounts/{account_id}/devices/posture/{rule_id}`
Future<ApiResult<TeamsDevicesDevicePostureRules, DevicePostureRulesUpdateDevicePostureRuleResponse4Xx>> devicePostureRulesUpdateDevicePostureRule({required TeamsDevicesUuid ruleId, required TeamsDevicesIdentifier accountId, required DevicePostureRulesUpdateDevicePostureRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDevicePostureRules.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicePostureRulesUpdateDevicePostureRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a device posture rule
///
/// Deletes a device posture rule.
///
/// `DELETE /accounts/{account_id}/devices/posture/{rule_id}`
Future<ApiResult<TeamsDevicesIdResponseResult, DevicePostureRulesDeleteDevicePostureRuleResponse4Xx>> devicePostureRulesDeleteDevicePostureRule({required TeamsDevicesUuid ruleId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesIdResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicePostureRulesDeleteDevicePostureRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
