// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/client_certificate_for_a_zone_create_client_certificate_request.dart';import '../models/client_certificate_for_a_zone_edit_client_certificate_request.dart';import '../models/tls_certificates_and_hostnames_client_certificate.dart';import '../models/tls_certificates_and_hostnames_hostname_association.dart';import '../models/tls_certificates_and_hostnames_hostname_associations_response_result.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// ShieldClientCertificatesForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ShieldClientCertificatesForAZoneApi with ApiExecutor {const ShieldClientCertificatesForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Hostname Associations
///
/// `GET /zones/{zone_id}/certificate_authorities/hostname_associations`
Future<ApiResult<TlsCertificatesAndHostnamesHostnameAssociationsResponseResult?, Never>> clientCertificateForAZoneListHostnameAssociations({required TlsCertificatesAndHostnamesIdentifier zoneId, String? mtlsCertificateId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (mtlsCertificateId != null) {
  queryParameters['mtls_certificate_id'] = mtlsCertificateId;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/certificate_authorities/hostname_associations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesHostnameAssociationsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Replace Hostname Associations
///
/// `PUT /zones/{zone_id}/certificate_authorities/hostname_associations`
Future<ApiResult<TlsCertificatesAndHostnamesHostnameAssociationsResponseResult?, Never>> clientCertificateForAZonePutHostnameAssociations({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesHostnameAssociation body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/certificate_authorities/hostname_associations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesHostnameAssociationsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List Client Certificates
///
/// List all of your Zone's API Shield mTLS Client Certificates by Status and/or using Pagination
///
/// `GET /zones/{zone_id}/client_certificates`
Future<ApiResult<List<TlsCertificatesAndHostnamesClientCertificate>?, Never>> clientCertificateForAZoneListClientCertificates({required TlsCertificatesAndHostnamesIdentifier zoneId, dynamic status, double? page, double? perPage, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/client_certificates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesClientCertificate.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Client Certificate
///
/// Create a new API Shield mTLS Client Certificate
///
/// `POST /zones/{zone_id}/client_certificates`
Future<ApiResult<TlsCertificatesAndHostnamesClientCertificate?, Never>> clientCertificateForAZoneCreateClientCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required ClientCertificateForAZoneCreateClientCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/client_certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesClientCertificate.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Client Certificate Details
///
/// Get Details for a single mTLS API Shield Client Certificate
///
/// `GET /zones/{zone_id}/client_certificates/{client_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesClientCertificate?, Never>> clientCertificateForAZoneClientCertificateDetails({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesIdentifier clientCertificateId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/client_certificates/${Uri.encodeComponent(clientCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesClientCertificate.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Reactivate Client Certificate
///
/// If a API Shield mTLS Client Certificate is in a pending_revocation state, you may reactivate it with this endpoint.
///
/// `PATCH /zones/{zone_id}/client_certificates/{client_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesClientCertificate?, Never>> clientCertificateForAZoneEditClientCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesIdentifier clientCertificateId, required ClientCertificateForAZoneEditClientCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/client_certificates/${Uri.encodeComponent(clientCertificateId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesClientCertificate.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Revoke Client Certificate
///
/// Set a API Shield mTLS Client Certificate to pending_revocation status for processing to revoked status.
///
/// `DELETE /zones/{zone_id}/client_certificates/{client_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesClientCertificate?, Never>> clientCertificateForAZoneDeleteClientCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesIdentifier clientCertificateId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/client_certificates/${Uri.encodeComponent(clientCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesClientCertificate.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
