// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/per_hostname_tls_settings_put_request.dart';import '../models/tls_certificates_and_hostnames_components_schemas_hostname.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_per_hostname_settings_response_collection_result.dart';import '../models/tls_certificates_and_hostnames_setting_id.dart';import '../models/tls_certificates_and_hostnames_setting_object.dart';import '../models/tls_certificates_and_hostnames_setting_object_delete.dart';/// PerHostnameTlsSettingsApi operations.
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
Future<ApiResult<List<TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult>?, Never>> perHostnameTlsSettingsList({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get TLS setting for hostname
///
/// Get the requested TLS setting for the hostname.
///
/// `GET /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesSettingObject?, Never>> perHostnameTlsSettingsGet({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSettingObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit TLS setting for hostname
///
/// Update the tls setting value for the hostname.
///
/// `PUT /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesSettingObject?, Never>> perHostnameTlsSettingsPut({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, required PerHostnameTlsSettingsPutRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSettingObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete TLS setting for hostname
///
/// Delete the tls setting value for the hostname.
///
/// `DELETE /zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesSettingObjectDelete?, Never>> perHostnameTlsSettingsDelete({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesSettingId settingId, required TlsCertificatesAndHostnamesComponentsSchemasHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hostnames/settings/${Uri.encodeComponent(settingId.toString())}/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSettingObjectDelete.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
