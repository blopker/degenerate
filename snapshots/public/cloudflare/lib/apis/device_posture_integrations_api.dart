// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/device_posture_integrations_create_device_posture_integration_request.dart';import '../models/device_posture_integrations_update_device_posture_integration_request.dart';import '../models/teams_devices_device_posture_integrations.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_uuid.dart';/// DevicePostureIntegrationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DevicePostureIntegrationsApi with ApiExecutor {const DevicePostureIntegrationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List your device posture integrations
///
/// Fetches the list of device posture integrations for an account.
///
/// `GET /accounts/{account_id}/devices/posture/integration`
Future<ApiResult<List<TeamsDevicesDevicePostureIntegrations>?, Never>> devicePostureIntegrationsListDevicePostureIntegrations({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDevicePostureIntegrations.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a device posture integration
///
/// Create a new device posture integration.
///
/// `POST /accounts/{account_id}/devices/posture/integration`
Future<ApiResult<TeamsDevicesDevicePostureIntegrations?, Never>> devicePostureIntegrationsCreateDevicePostureIntegration({required TeamsDevicesIdentifier accountId, required DevicePostureIntegrationsCreateDevicePostureIntegrationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesDevicePostureIntegrations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get device posture integration details
///
/// Fetches details for a single device posture integration.
///
/// `GET /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<TeamsDevicesDevicePostureIntegrations?, Never>> devicePostureIntegrationsDevicePostureIntegrationDetails({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration/${Uri.encodeComponent(integrationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesDevicePostureIntegrations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a device posture integration
///
/// Updates a configured device posture integration.
///
/// `PATCH /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<TeamsDevicesDevicePostureIntegrations?, Never>> devicePostureIntegrationsUpdateDevicePostureIntegration({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, required DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration/${Uri.encodeComponent(integrationId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TeamsDevicesDevicePostureIntegrations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a device posture integration
///
/// Delete a configured device posture integration.
///
/// `DELETE /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> devicePostureIntegrationsDeleteDevicePostureIntegration({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration/${Uri.encodeComponent(integrationId.toString())}',
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
