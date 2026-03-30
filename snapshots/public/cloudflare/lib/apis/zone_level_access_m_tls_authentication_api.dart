// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_components_schemas_certificates.dart';import '../models/access_components_schemas_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_schemas_settings.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_mtls_authentication_add_an_mtls_certificate_request.dart';import '../models/zone_level_access_mtls_authentication_update_an_mtls_certificate_request.dart';import '../models/zone_level_access_mtls_authentication_update_an_mtls_certificate_settings_request.dart';/// ZoneLevelAccessMTlsAuthenticationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessMTlsAuthenticationApi with ApiExecutor {const ZoneLevelAccessMTlsAuthenticationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List mTLS certificates
///
/// Lists all mTLS certificates.
///
/// `GET /zones/{zone_id}/access/certificates`
Future<ApiResult<List<AccessComponentsSchemasCertificates>?, Never>> zoneLevelAccessMtlsAuthenticationListMtlsCertificates({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessComponentsSchemasCertificates.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add an mTLS certificate
///
/// Adds a new mTLS root certificate to Access.
///
/// `POST /zones/{zone_id}/access/certificates`
Future<ApiResult<AccessComponentsSchemasCertificates?, Never>> zoneLevelAccessMtlsAuthenticationAddAnMtlsCertificate({required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationAddAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an mTLS certificate
///
/// Fetches a single mTLS certificate.
///
/// `GET /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasCertificates?, Never>> zoneLevelAccessMtlsAuthenticationGetAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an mTLS certificate
///
/// Updates a configured mTLS certificate.
///
/// `PUT /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasCertificates?, Never>> zoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an mTLS certificate
///
/// Deletes an mTLS certificate.
///
/// `DELETE /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasIdResponseResult?, Never>> zoneLevelAccessMtlsAuthenticationDeleteAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List all mTLS hostname settings
///
/// List all mTLS hostname settings for this zone.
///
/// `GET /zones/{zone_id}/access/certificates/settings`
Future<ApiResult<List<AccessSchemasSettings>?, Never>> zoneLevelAccessMtlsAuthenticationListMtlsCertificatesHostnameSettings({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasSettings.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Update an mTLS certificate's hostname settings
///
/// Updates an mTLS certificate's hostname settings.
///
/// `PUT /zones/{zone_id}/access/certificates/settings`
Future<ApiResult<List<AccessSchemasSettings>?, Never>> zoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateSettings({required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasSettings.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
