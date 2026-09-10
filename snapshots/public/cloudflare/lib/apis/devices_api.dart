// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/devices_create_device_settings_policy_request.dart';import '../models/devices_create_device_settings_policy_response4_xx.dart';import '../models/devices_delete_device_settings_policy_response4_xx.dart';import '../models/devices_get_default_device_settings_policy_response4_xx.dart';import '../models/devices_get_device_settings_policy_by_id_response4_xx.dart';import '../models/devices_get_local_domain_fallback_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_get_local_domain_fallback_list_response4_xx.dart';import '../models/devices_get_policy_certificates_response4_xx.dart';import '../models/devices_get_split_tunnel_exclude_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_get_split_tunnel_exclude_list_response4_xx.dart';import '../models/devices_get_split_tunnel_include_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_get_split_tunnel_include_list_response4_xx.dart';import '../models/devices_list_device_settings_policies_response4_xx.dart';import '../models/devices_set_local_domain_fallback_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_set_local_domain_fallback_list_response4_xx.dart';import '../models/devices_set_split_tunnel_exclude_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_set_split_tunnel_exclude_list_response4_xx.dart';import '../models/devices_set_split_tunnel_include_list_for_a_device_settings_policy_response4_xx.dart';import '../models/devices_set_split_tunnel_include_list_response4_xx.dart';import '../models/devices_update_default_device_settings_policy_request.dart';import '../models/devices_update_default_device_settings_policy_response4_xx.dart';import '../models/devices_update_device_settings_policy_request.dart';import '../models/devices_update_device_settings_policy_response4_xx.dart';import '../models/devices_update_policy_certificates_response4_xx.dart';import '../models/teams_devices_default_device_settings_policy.dart';import '../models/teams_devices_device_settings_policy.dart';import '../models/teams_devices_devices_policy_certificates.dart';import '../models/teams_devices_exclude_split_tunnel_with_address.dart';import '../models/teams_devices_exclude_split_tunnel_with_host.dart';import '../models/teams_devices_fallback_domain.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_include_split_tunnel_with_address.dart';import '../models/teams_devices_include_split_tunnel_with_host.dart';import '../models/teams_devices_schemas_uuid.dart';import '../models/teams_devices_split_tunnel.dart';import '../models/teams_devices_split_tunnel_include.dart';/// DevicesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DevicesApi with ApiExecutor {const DevicesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List device settings profiles
///
/// Fetches a list of the device settings profiles for an account.
///
/// `GET /accounts/{account_id}/devices/policies`
Future<ApiResult<List<TeamsDevicesDeviceSettingsPolicy>, DevicesListDeviceSettingsPoliciesResponse4Xx>> devicesListDeviceSettingsPolicies({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policies',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesDeviceSettingsPolicy.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesListDeviceSettingsPoliciesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the default device settings profile
///
/// Fetches the default device settings profile for an account.
///
/// `GET /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDefaultDeviceSettingsPolicy, DevicesGetDefaultDeviceSettingsPolicyResponse4Xx>> devicesGetDefaultDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDefaultDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetDefaultDeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a device settings profile
///
/// Creates a device settings profile to be applied to certain devices matching the criteria.
///
/// `POST /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDeviceSettingsPolicy, DevicesCreateDeviceSettingsPolicyResponse4Xx>> devicesCreateDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, required DevicesCreateDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesCreateDeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update the default device settings profile
///
/// Updates the default device settings profile for an account.
///
/// `PATCH /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDefaultDeviceSettingsPolicy, DevicesUpdateDefaultDeviceSettingsPolicyResponse4Xx>> devicesUpdateDefaultDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, required DevicesUpdateDefaultDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDefaultDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesUpdateDefaultDeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get device settings profile by ID
///
/// Fetches a device settings profile by ID.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<TeamsDevicesDeviceSettingsPolicy, DevicesGetDeviceSettingsPolicyByIdResponse4Xx>> devicesGetDeviceSettingsPolicyById({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetDeviceSettingsPolicyByIdResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a device settings profile
///
/// Updates a configured device settings profile.
///
/// `PATCH /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<TeamsDevicesDeviceSettingsPolicy, DevicesUpdateDeviceSettingsPolicyResponse4Xx>> devicesUpdateDeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required DevicesUpdateDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDeviceSettingsPolicy.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesUpdateDeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a device settings profile
///
/// Deletes a device settings profile and fetches a list of the remaining profiles for an account.
///
/// `DELETE /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<List<TeamsDevicesDeviceSettingsPolicy>, DevicesDeleteDeviceSettingsPolicyResponse4Xx>> devicesDeleteDeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesDeviceSettingsPolicy.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesDeleteDeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the Split Tunnel exclude list for a device settings profile
///
/// Fetches the list of routes excluded from the WARP client's tunnel for a specific device settings profile.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/exclude`
Future<ApiResult<List<TeamsDevicesSplitTunnel>, DevicesGetSplitTunnelExcludeListForADeviceSettingsPolicyResponse4Xx>> devicesGetSplitTunnelExcludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/exclude',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetSplitTunnelExcludeListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set the Split Tunnel exclude list for a device settings profile
///
/// Sets the list of routes excluded from the WARP client's tunnel for a specific device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/exclude`
Future<ApiResult<List<TeamsDevicesSplitTunnel>, DevicesSetSplitTunnelExcludeListForADeviceSettingsPolicyResponse4Xx>> devicesSetSplitTunnelExcludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnel> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/exclude',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetSplitTunnelExcludeListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the Local Domain Fallback list for a device settings profile
///
/// Fetches the list of domains to bypass Gateway DNS resolution from a specified device settings profile. These domains will use the specified local DNS resolver instead.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`
Future<ApiResult<List<TeamsDevicesFallbackDomain>, DevicesGetLocalDomainFallbackListForADeviceSettingsPolicyResponse4Xx>> devicesGetLocalDomainFallbackListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/fallback_domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetLocalDomainFallbackListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set the Local Domain Fallback list for a device settings profile
///
/// Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead. This will only apply to the specified device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`
Future<ApiResult<List<TeamsDevicesFallbackDomain>, DevicesSetLocalDomainFallbackListForADeviceSettingsPolicyResponse4Xx>> devicesSetLocalDomainFallbackListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesFallbackDomain> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/fallback_domains',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetLocalDomainFallbackListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the Split Tunnel include list for a device settings profile
///
/// Fetches the list of routes included in the WARP client's tunnel for a specific device settings profile.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/include`
Future<ApiResult<List<TeamsDevicesSplitTunnelInclude>, DevicesGetSplitTunnelIncludeListForADeviceSettingsPolicyResponse4Xx>> devicesGetSplitTunnelIncludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/include',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetSplitTunnelIncludeListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set the Split Tunnel include list for a device settings profile
///
/// Sets the list of routes included in the WARP client's tunnel for a specific device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/include`
Future<ApiResult<List<TeamsDevicesSplitTunnelInclude>, DevicesSetSplitTunnelIncludeListForADeviceSettingsPolicyResponse4Xx>> devicesSetSplitTunnelIncludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnelInclude> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/include',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetSplitTunnelIncludeListForADeviceSettingsPolicyResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the Split Tunnel exclude list
///
/// Fetches the list of routes excluded from the WARP client's tunnel.
///
/// `GET /accounts/{account_id}/devices/policy/exclude`
Future<ApiResult<List<TeamsDevicesSplitTunnel>, DevicesGetSplitTunnelExcludeListResponse4Xx>> devicesGetSplitTunnelExcludeList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/exclude',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetSplitTunnelExcludeListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set the Split Tunnel exclude list
///
/// Sets the list of routes excluded from the WARP client's tunnel.
///
/// `PUT /accounts/{account_id}/devices/policy/exclude`
Future<ApiResult<List<TeamsDevicesSplitTunnel>, DevicesSetSplitTunnelExcludeListResponse4Xx>> devicesSetSplitTunnelExcludeList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnel> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/exclude',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetSplitTunnelExcludeListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get your Local Domain Fallback list
///
/// Fetches a list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.
///
/// `GET /accounts/{account_id}/devices/policy/fallback_domains`
Future<ApiResult<List<TeamsDevicesFallbackDomain>, DevicesGetLocalDomainFallbackListResponse4Xx>> devicesGetLocalDomainFallbackList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/fallback_domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetLocalDomainFallbackListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set your Local Domain Fallback list
///
/// Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.
///
/// `PUT /accounts/{account_id}/devices/policy/fallback_domains`
Future<ApiResult<List<TeamsDevicesFallbackDomain>, DevicesSetLocalDomainFallbackListResponse4Xx>> devicesSetLocalDomainFallbackList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesFallbackDomain> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/fallback_domains',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetLocalDomainFallbackListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get the Split Tunnel include list
///
/// Fetches the list of routes included in the WARP client's tunnel.
///
/// `GET /accounts/{account_id}/devices/policy/include`
Future<ApiResult<List<TeamsDevicesSplitTunnelInclude>, DevicesGetSplitTunnelIncludeListResponse4Xx>> devicesGetSplitTunnelIncludeList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/include',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetSplitTunnelIncludeListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Set the Split Tunnel include list
///
/// Sets the list of routes included in the WARP client's tunnel.
///
/// `PUT /accounts/{account_id}/devices/policy/include`
Future<ApiResult<List<TeamsDevicesSplitTunnelInclude>, DevicesSetSplitTunnelIncludeListResponse4Xx>> devicesSetSplitTunnelIncludeList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnelInclude> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/include',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesSetSplitTunnelIncludeListResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get device certificate provisioning status
///
/// Fetches device certificate provisioning.
///
/// `GET /zones/{zone_id}/devices/policy/certificates`
Future<ApiResult<TeamsDevicesDevicesPolicyCertificates, DevicesGetPolicyCertificatesResponse4Xx>> devicesGetPolicyCertificates({required TeamsDevicesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/devices/policy/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDevicesPolicyCertificates.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesGetPolicyCertificatesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update device certificate provisioning status
///
/// Enable Zero Trust Clients to provision a certificate, containing a x509 subject, and referenced by Access device posture policies when the client visits MTLS protected domains. This facilitates device posture without a WARP session.
///
/// `PATCH /zones/{zone_id}/devices/policy/certificates`
Future<ApiResult<TeamsDevicesDevicesPolicyCertificates, DevicesUpdatePolicyCertificatesResponse4Xx>> devicesUpdatePolicyCertificates({required TeamsDevicesIdentifier zoneId, required TeamsDevicesDevicesPolicyCertificates body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/devices/policy/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TeamsDevicesDevicesPolicyCertificates.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DevicesUpdatePolicyCertificatesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
