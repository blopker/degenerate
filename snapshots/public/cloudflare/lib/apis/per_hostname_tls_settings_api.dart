// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/per_hostname_tls_settings_put_request.dart';import '../models/tls_certificates_and_hostnames_components_schemas_hostname.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_per_hostname_settings_response.dart';import '../models/tls_certificates_and_hostnames_per_hostname_settings_response_collection.dart';import '../models/tls_certificates_and_hostnames_per_hostname_settings_response_delete.dart';import '../models/tls_certificates_and_hostnames_setting_id.dart';/// PerHostnameTlsSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PerHostnameTlsSettingsApi with ApiExecutor {const PerHostnameTlsSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List TLS setting for hostnames
///
/// List the requested TLS setting for the hostnames under this zone.
///
/// `GET /zones/{zone_id}/hostnames/settings/{setting_id}`
Future<ApiResult<TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection, Never>> perHostnameTlsSettingsList({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get TLS setting for hostname
///
/// Get the requested TLS setting for the hostname.
///
/// `GET /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesPerHostnameSettingsResponse, Never>> perHostnameTlsSettingsGet({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TlsCertificatesAndHostnamesPerHostnameSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit TLS setting for hostname
///
/// Update the tls setting value for the hostname.
///
/// `PUT /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesPerHostnameSettingsResponse, Never>> perHostnameTlsSettingsPut({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, required PerHostnameTlsSettingsPutRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TlsCertificatesAndHostnamesPerHostnameSettingsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete TLS setting for hostname
///
/// Delete the tls setting value for the hostname.
///
/// `DELETE /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete, Never>> perHostnameTlsSettingsDelete({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return TlsCertificatesAndHostnamesPerHostnameSettingsResponseDelete.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
