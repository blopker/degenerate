// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/device_managed_networks_create_device_managed_network_request.dart';import '../models/device_managed_networks_create_device_managed_network_response4_xx.dart';import '../models/device_managed_networks_delete_device_managed_network_response4_xx.dart';import '../models/device_managed_networks_device_managed_network_details_response4_xx.dart';import '../models/device_managed_networks_list_device_managed_networks_response4_xx.dart';import '../models/device_managed_networks_update_device_managed_network_request.dart';import '../models/device_managed_networks_update_device_managed_network_response4_xx.dart';import '../models/teams_devices_device_managed_networks.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_uuid.dart';/// DeviceManagedNetworksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DeviceManagedNetworksApi with ApiExecutor {const DeviceManagedNetworksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List your device managed networks
///
/// Fetches a list of managed networks for an account.
///
/// `GET /accounts/{account_id}/devices/networks`
Future<ApiResult<List<TeamsDevicesDeviceManagedNetworks>, DeviceManagedNetworksListDeviceManagedNetworksResponse4Xx>> deviceManagedNetworksListDeviceManagedNetworks({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/networks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesDeviceManagedNetworks.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeviceManagedNetworksListDeviceManagedNetworksResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a device managed network
///
/// Creates a new device managed network.
///
/// `POST /accounts/{account_id}/devices/networks`
Future<ApiResult<TeamsDevicesDeviceManagedNetworks, DeviceManagedNetworksCreateDeviceManagedNetworkResponse4Xx>> deviceManagedNetworksCreateDeviceManagedNetwork({required TeamsDevicesIdentifier accountId, required DeviceManagedNetworksCreateDeviceManagedNetworkRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/networks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceManagedNetworks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeviceManagedNetworksCreateDeviceManagedNetworkResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get device managed network details
///
/// Fetches details for a single managed network.
///
/// `GET /accounts/{account_id}/devices/networks/{network_id}`
Future<ApiResult<TeamsDevicesDeviceManagedNetworks, DeviceManagedNetworksDeviceManagedNetworkDetailsResponse4Xx>> deviceManagedNetworksDeviceManagedNetworkDetails({required TeamsDevicesUuid networkId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/networks/${Uri.encodeComponent(networkId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceManagedNetworks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeviceManagedNetworksDeviceManagedNetworkDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a device managed network
///
/// Updates a configured device managed network.
///
/// `PUT /accounts/{account_id}/devices/networks/{network_id}`
Future<ApiResult<TeamsDevicesDeviceManagedNetworks, DeviceManagedNetworksUpdateDeviceManagedNetworkResponse4Xx>> deviceManagedNetworksUpdateDeviceManagedNetwork({required TeamsDevicesUuid networkId, required TeamsDevicesIdentifier accountId, required DeviceManagedNetworksUpdateDeviceManagedNetworkRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/networks/${Uri.encodeComponent(networkId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceManagedNetworks.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeviceManagedNetworksUpdateDeviceManagedNetworkResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a device managed network
///
/// Deletes a device managed network and fetches a list of the remaining device managed networks for an account.
///
/// `DELETE /accounts/{account_id}/devices/networks/{network_id}`
Future<ApiResult<List<TeamsDevicesDeviceManagedNetworks>, DeviceManagedNetworksDeleteDeviceManagedNetworkResponse4Xx>> deviceManagedNetworksDeleteDeviceManagedNetwork({required TeamsDevicesUuid networkId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/networks/${Uri.encodeComponent(networkId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesDeviceManagedNetworks.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeviceManagedNetworksDeleteDeviceManagedNetworkResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
