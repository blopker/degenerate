// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/devices_create_device_settings_policy_request.dart';import '../models/devices_update_default_device_settings_policy_request.dart';import '../models/devices_update_device_settings_policy_request.dart';import '../models/teams_devices_default_device_settings_response.dart';import '../models/teams_devices_device_settings_response.dart';import '../models/teams_devices_device_settings_response_collection.dart';import '../models/teams_devices_devices_policy_certificates.dart';import '../models/teams_devices_devices_policy_certificates_single.dart';import '../models/teams_devices_fallback_domain.dart';import '../models/teams_devices_fallback_domain_response_collection.dart';import '../models/teams_devices_identifier.dart';import '../models/teams_devices_schemas_uuid.dart';import '../models/teams_devices_split_tunnel.dart';import '../models/teams_devices_split_tunnel_include.dart';import '../models/teams_devices_split_tunnel_include_response_collection.dart';import '../models/teams_devices_split_tunnel_response_collection.dart';/// DevicesApi operations.
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
Future<ApiResult<TeamsDevicesDeviceSettingsResponseCollection, Never>> devicesListDeviceSettingsPolicies({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policies',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesDeviceSettingsResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the default device settings profile
///
/// Fetches the default device settings profile for an account.
///
/// `GET /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDefaultDeviceSettingsResponse, Never>> devicesGetDefaultDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesDefaultDeviceSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a device settings profile
///
/// Creates a device settings profile to be applied to certain devices matching the criteria.
///
/// `POST /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDeviceSettingsResponse, Never>> devicesCreateDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, required DevicesCreateDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesDeviceSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update the default device settings profile
///
/// Updates the default device settings profile for an account.
///
/// `PATCH /accounts/{account_id}/devices/policy`
Future<ApiResult<TeamsDevicesDefaultDeviceSettingsResponse, Never>> devicesUpdateDefaultDeviceSettingsPolicy({required TeamsDevicesIdentifier accountId, required DevicesUpdateDefaultDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesDefaultDeviceSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get device settings profile by ID
///
/// Fetches a device settings profile by ID.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<TeamsDevicesDeviceSettingsResponse, Never>> devicesGetDeviceSettingsPolicyById({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesDeviceSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a device settings profile
///
/// Updates a configured device settings profile.
///
/// `PATCH /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<TeamsDevicesDeviceSettingsResponse, Never>> devicesUpdateDeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required DevicesUpdateDeviceSettingsPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesDeviceSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a device settings profile
///
/// Deletes a device settings profile and fetches a list of the remaining profiles for an account.
///
/// `DELETE /accounts/{account_id}/devices/policy/{policy_id}`
Future<ApiResult<TeamsDevicesDeviceSettingsResponseCollection, Never>> devicesDeleteDeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesDeviceSettingsResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Split Tunnel exclude list for a device settings profile
///
/// Fetches the list of routes excluded from the WARP client's tunnel for a specific device settings profile.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/exclude`
Future<ApiResult<TeamsDevicesSplitTunnelResponseCollection, Never>> devicesGetSplitTunnelExcludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/exclude',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSplitTunnelResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set the Split Tunnel exclude list for a device settings profile
///
/// Sets the list of routes excluded from the WARP client's tunnel for a specific device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/exclude`
Future<ApiResult<TeamsDevicesSplitTunnelResponseCollection, Never>> devicesSetSplitTunnelExcludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnel> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSplitTunnelResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Local Domain Fallback list for a device settings profile
///
/// Fetches the list of domains to bypass Gateway DNS resolution from a specified device settings profile. These domains will use the specified local DNS resolver instead.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`
Future<ApiResult<TeamsDevicesFallbackDomainResponseCollection, Never>> devicesGetLocalDomainFallbackListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/fallback_domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesFallbackDomainResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set the Local Domain Fallback list for a device settings profile
///
/// Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead. This will only apply to the specified device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`
Future<ApiResult<TeamsDevicesFallbackDomainResponseCollection, Never>> devicesSetLocalDomainFallbackListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesFallbackDomain> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesFallbackDomainResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Split Tunnel include list for a device settings profile
///
/// Fetches the list of routes included in the WARP client's tunnel for a specific device settings profile.
///
/// `GET /accounts/{account_id}/devices/policy/{policy_id}/include`
Future<ApiResult<TeamsDevicesSplitTunnelIncludeResponseCollection, Never>> devicesGetSplitTunnelIncludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/${Uri.encodeComponent(policyId.toString())}/include',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSplitTunnelIncludeResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set the Split Tunnel include list for a device settings profile
///
/// Sets the list of routes included in the WARP client's tunnel for a specific device settings profile.
///
/// `PUT /accounts/{account_id}/devices/policy/{policy_id}/include`
Future<ApiResult<TeamsDevicesSplitTunnelIncludeResponseCollection, Never>> devicesSetSplitTunnelIncludeListForADeviceSettingsPolicy({required TeamsDevicesSchemasUuid policyId, required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnelInclude> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSplitTunnelIncludeResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Split Tunnel exclude list
///
/// Fetches the list of routes excluded from the WARP client's tunnel.
///
/// `GET /accounts/{account_id}/devices/policy/exclude`
Future<ApiResult<TeamsDevicesSplitTunnelResponseCollection, Never>> devicesGetSplitTunnelExcludeList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/exclude',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSplitTunnelResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set the Split Tunnel exclude list
///
/// Sets the list of routes excluded from the WARP client's tunnel.
///
/// `PUT /accounts/{account_id}/devices/policy/exclude`
Future<ApiResult<TeamsDevicesSplitTunnelResponseCollection, Never>> devicesSetSplitTunnelExcludeList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnel> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSplitTunnelResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get your Local Domain Fallback list
///
/// Fetches a list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.
///
/// `GET /accounts/{account_id}/devices/policy/fallback_domains`
Future<ApiResult<TeamsDevicesFallbackDomainResponseCollection, Never>> devicesGetLocalDomainFallbackList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/fallback_domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesFallbackDomainResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set your Local Domain Fallback list
///
/// Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.
///
/// `PUT /accounts/{account_id}/devices/policy/fallback_domains`
Future<ApiResult<TeamsDevicesFallbackDomainResponseCollection, Never>> devicesSetLocalDomainFallbackList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesFallbackDomain> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesFallbackDomainResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the Split Tunnel include list
///
/// Fetches the list of routes included in the WARP client's tunnel.
///
/// `GET /accounts/{account_id}/devices/policy/include`
Future<ApiResult<TeamsDevicesSplitTunnelIncludeResponseCollection, Never>> devicesGetSplitTunnelIncludeList({required TeamsDevicesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/devices/policy/include',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesSplitTunnelIncludeResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set the Split Tunnel include list
///
/// Sets the list of routes included in the WARP client's tunnel.
///
/// `PUT /accounts/{account_id}/devices/policy/include`
Future<ApiResult<TeamsDevicesSplitTunnelIncludeResponseCollection, Never>> devicesSetSplitTunnelIncludeList({required TeamsDevicesIdentifier accountId, required List<TeamsDevicesSplitTunnelInclude> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesSplitTunnelIncludeResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get device certificate provisioning status
///
/// Fetches device certificate provisioning.
///
/// `GET /zones/{zone_id}/devices/policy/certificates`
Future<ApiResult<TeamsDevicesDevicesPolicyCertificatesSingle, Never>> devicesGetPolicyCertificates({required TeamsDevicesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/devices/policy/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TeamsDevicesDevicesPolicyCertificatesSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update device certificate provisioning status
///
/// Enable Zero Trust Clients to provision a certificate, containing a x509 subject, and referenced by Access device posture policies when the client visits MTLS protected domains. This facilitates device posture without a WARP session.
///
/// `PATCH /zones/{zone_id}/devices/policy/certificates`
Future<ApiResult<TeamsDevicesDevicesPolicyCertificatesSingle, Never>> devicesUpdatePolicyCertificates({required TeamsDevicesIdentifier zoneId, required TeamsDevicesDevicesPolicyCertificates body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return TeamsDevicesDevicesPolicyCertificatesSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
