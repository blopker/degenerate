// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/device_posture_integrations_create_device_posture_integration_request.dart';import '../models/device_posture_integrations_update_device_posture_integration_request.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_schemas_id_response.dart';import '../models/teams_devices_schemas_response_collection.dart';import '../models/teams_devices_schemas_single_response.dart';import '../models/teams_devices_uuid.dart';/// DevicePostureIntegrationsApi operations.
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
Future<ApiResult<TeamsDevicesSchemasResponseCollection, Never>> devicePostureIntegrationsListDevicePostureIntegrations({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a device posture integration
///
/// Create a new device posture integration.
///
/// `POST /accounts/{account_id}/devices/posture/integration`
Future<ApiResult<TeamsDevicesSchemasSingleResponse, Never>> devicePostureIntegrationsCreateDevicePostureIntegration({required TeamsDevicesIdentifier accountId, required DevicePostureIntegrationsCreateDevicePostureIntegrationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get device posture integration details
///
/// Fetches details for a single device posture integration.
///
/// `GET /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<TeamsDevicesSchemasSingleResponse, Never>> devicePostureIntegrationsDevicePostureIntegrationDetails({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration/${Uri.encodeComponent(integrationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a device posture integration
///
/// Updates a configured device posture integration.
///
/// `PATCH /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<TeamsDevicesSchemasSingleResponse, Never>> devicePostureIntegrationsUpdateDevicePostureIntegration({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, required DevicePostureIntegrationsUpdateDevicePostureIntegrationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a device posture integration
///
/// Delete a configured device posture integration.
///
/// `DELETE /accounts/{account_id}/devices/posture/integration/{integration_id}`
Future<ApiResult<TeamsDevicesSchemasIdResponse, Never>> devicePostureIntegrationsDeleteDevicePostureIntegration({required TeamsDevicesUuid integrationId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/posture/integration/${Uri.encodeComponent(integrationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
