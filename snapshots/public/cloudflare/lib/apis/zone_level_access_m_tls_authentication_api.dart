// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_certificates_components_schemas_response_collection2.dart';import '../models/access_certificates_components_schemas_single_response2.dart';import '../models/access_components_schemas_id_response.dart';import '../models/access_identifier.dart';import '../models/access_schemas_response_collection_hostnames.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_mtls_authentication_add_an_mtls_certificate_request.dart';import '../models/zone_level_access_mtls_authentication_update_an_mtls_certificate_request.dart';import '../models/zone_level_access_mtls_authentication_update_an_mtls_certificate_settings_request.dart';/// ZoneLevelAccessMTlsAuthenticationApi operations.
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
Future<ApiResult<AccessCertificatesComponentsSchemasResponseCollection2, Never>> zoneLevelAccessMtlsAuthenticationListMtlsCertificates({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCertificatesComponentsSchemasResponseCollection2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add an mTLS certificate
///
/// Adds a new mTLS root certificate to Access.
///
/// `POST /zones/{zone_id}/access/certificates`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse2, Never>> zoneLevelAccessMtlsAuthenticationAddAnMtlsCertificate({required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationAddAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessCertificatesComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an mTLS certificate
///
/// Fetches a single mTLS certificate.
///
/// `GET /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse2, Never>> zoneLevelAccessMtlsAuthenticationGetAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCertificatesComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an mTLS certificate
///
/// Updates a configured mTLS certificate.
///
/// `PUT /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse2, Never>> zoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessCertificatesComponentsSchemasSingleResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an mTLS certificate
///
/// Deletes an mTLS certificate.
///
/// `DELETE /zones/{zone_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasIdResponse, Never>> zoneLevelAccessMtlsAuthenticationDeleteAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessComponentsSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all mTLS hostname settings
///
/// List all mTLS hostname settings for this zone.
///
/// `GET /zones/{zone_id}/access/certificates/settings`
Future<ApiResult<AccessSchemasResponseCollectionHostnames, Never>> zoneLevelAccessMtlsAuthenticationListMtlsCertificatesHostnameSettings({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/certificates/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasResponseCollectionHostnames.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an mTLS certificate's hostname settings
///
/// Updates an mTLS certificate's hostname settings.
///
/// `PUT /zones/{zone_id}/access/certificates/settings`
Future<ApiResult<AccessSchemasResponseCollectionHostnames, Never>> zoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateSettings({required AccessIdentifier zoneId, required ZoneLevelAccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessSchemasResponseCollectionHostnames.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
