// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/keyless_ssl_for_a_zone_create_keyless_ssl_configuration_request.dart';import '../models/keyless_ssl_for_a_zone_create_keyless_ssl_configuration_response4_xx.dart';import '../models/keyless_ssl_for_a_zone_delete_keyless_ssl_configuration_response4_xx.dart';import '../models/keyless_ssl_for_a_zone_edit_keyless_ssl_configuration_request.dart';import '../models/keyless_ssl_for_a_zone_edit_keyless_ssl_configuration_response4_xx.dart';import '../models/keyless_ssl_for_a_zone_get_keyless_ssl_configuration_response4_xx.dart';import '../models/keyless_ssl_for_a_zone_list_keyless_ssl_configurations_response4_xx.dart';import '../models/tls_certificates_and_hostnames_base.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_keyless_response_single_id_result.dart';/// KeylessSslForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class KeylessSslForAZoneApi with ApiExecutor {const KeylessSslForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Keyless SSL Configurations
///
/// List all Keyless SSL configurations for a given zone.
///
/// `GET /zones/{zone_id}/keyless_certificates`
Future<ApiResult<List<TlsCertificatesAndHostnamesBase>?, KeylessSslForAZoneListKeylessSslConfigurationsResponse4Xx>> keylessSslForAZoneListKeylessSslConfigurations({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/keyless_certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesBase.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return KeylessSslForAZoneListKeylessSslConfigurationsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Keyless SSL Configuration
///
/// Creates a Keyless SSL configuration that allows SSL/TLS termination without exposing private keys to Cloudflare. Keys remain on your infrastructure.
///
/// `POST /zones/{zone_id}/keyless_certificates`
Future<ApiResult<TlsCertificatesAndHostnamesBase?, KeylessSslForAZoneCreateKeylessSslConfigurationResponse4Xx>> keylessSslForAZoneCreateKeylessSslConfiguration({required TlsCertificatesAndHostnamesIdentifier zoneId, required KeylessSslForAZoneCreateKeylessSslConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/keyless_certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesBase.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return KeylessSslForAZoneCreateKeylessSslConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Keyless SSL Configuration
///
/// Get details for one Keyless SSL configuration.
///
/// `GET /zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesBase?, KeylessSslForAZoneGetKeylessSslConfigurationResponse4Xx>> keylessSslForAZoneGetKeylessSslConfiguration({required TlsCertificatesAndHostnamesIdentifier keylessCertificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/keyless_certificates/${Uri.encodeComponent(keylessCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesBase.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return KeylessSslForAZoneGetKeylessSslConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Edit Keyless SSL Configuration
///
/// This will update attributes of a Keyless SSL. Consists of one or more of the following:  host,name,port.
///
/// `PATCH /zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesBase?, KeylessSslForAZoneEditKeylessSslConfigurationResponse4Xx>> keylessSslForAZoneEditKeylessSslConfiguration({required TlsCertificatesAndHostnamesIdentifier keylessCertificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, required KeylessSslForAZoneEditKeylessSslConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/keyless_certificates/${Uri.encodeComponent(keylessCertificateId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesBase.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return KeylessSslForAZoneEditKeylessSslConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Keyless SSL Configuration
///
/// Removes a Keyless SSL configuration. SSL connections will no longer use the keyless server for cryptographic operations.
///
/// `DELETE /zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesKeylessResponseSingleIdResult?, KeylessSslForAZoneDeleteKeylessSslConfigurationResponse4Xx>> keylessSslForAZoneDeleteKeylessSslConfiguration({required TlsCertificatesAndHostnamesIdentifier keylessCertificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/keyless_certificates/${Uri.encodeComponent(keylessCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesKeylessResponseSingleIdResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return KeylessSslForAZoneDeleteKeylessSslConfigurationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
