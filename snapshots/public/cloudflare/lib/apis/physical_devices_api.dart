// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/list_devices_active_registrations.dart';import '../models/list_devices_sort_by.dart';import '../models/list_devices_sort_order.dart';import '../models/teams_devices_physical_device.dart';/// PhysicalDevicesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PhysicalDevicesApi with ApiExecutor {const PhysicalDevicesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List devices
///
/// Lists WARP devices.
///
/// `GET /accounts/{account_id}/devices/physical-devices`
Future<ApiResult<List<TeamsDevicesPhysicalDevice>, Never>> listDevices({required String accountId, String? cursor, ListDevicesSortBy? sortBy, ListDevicesSortOrder? sortOrder, String? lastSeenUserEmail, String? seenAfter, String? seenBefore, int? perPage, String? search, ListDevicesActiveRegistrations? activeRegistrations, List<String>? id, String? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (lastSeenUserEmail != null) {
  queryParameters['last_seen_user.email'] = lastSeenUserEmail;
}
if (seenAfter != null) {
  queryParameters['seen_after'] = seenAfter;
}
if (seenBefore != null) {
  queryParameters['seen_before'] = seenBefore;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (activeRegistrations != null) {
  queryParameters['active_registrations'] = activeRegistrations.toJson();
}
if (id != null) {
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item, allowReserved: false));
}
}
if (include != null) {
  queryParameters['include'] = include;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/physical-devices',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => TeamsDevicesPhysicalDevice.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get device
///
/// Fetches a single WARP device.
///
/// `GET /accounts/{account_id}/devices/physical-devices/{device_id}`
Future<ApiResult<TeamsDevicesPhysicalDevice, Never>> getDevice({required String deviceId, required String accountId, String? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
  queryParameters['include'] = include;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/physical-devices/${Uri.encodeComponent(deviceId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return TeamsDevicesPhysicalDevice.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete device
///
/// Deletes a WARP device.
///
/// `DELETE /accounts/{account_id}/devices/physical-devices/{device_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> deleteDevice({required String deviceId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/physical-devices/${Uri.encodeComponent(deviceId)}',
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
/// Revoke device registrations
///
/// Revokes all WARP registrations associated with the specified device.
///
/// `POST /accounts/{account_id}/devices/physical-devices/{device_id}/revoke`
Future<ApiResult<Map<String, dynamic>?, Never>> revokeDevice({required String accountId, required String deviceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/physical-devices/${Uri.encodeComponent(deviceId)}/revoke',
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
/// Delete registrations
///
/// Deletes a list of WARP registrations.
///
/// `DELETE /accounts/{account_id}/devices/registrations`
Future<ApiResult<Map<String, dynamic>?, Never>> deleteRegistrations({required String accountId, required List<String> id, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item, allowReserved: false));
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
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
