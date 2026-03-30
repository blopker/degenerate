// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/per_hostname_authenticated_origin_pull_enable_or_disable_a_hostname_for_client_authentication_request.dart';import '../models/per_hostname_authenticated_origin_pull_upload_a_hostname_client_certificate_request.dart';import '../models/tls_certificates_and_hostnames_hostname_authenticated_origin_pull.dart';import '../models/tls_certificates_and_hostnames_hostname_certid_object.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_schemas_certificate_object.dart';import '../models/tls_certificates_and_hostnames_schemas_hostname.dart';/// PerHostnameAuthenticatedOriginPullApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PerHostnameAuthenticatedOriginPullApi with ApiExecutor {const PerHostnameAuthenticatedOriginPullApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Enable or Disable a Hostname for Client Authentication
///
/// Associate a hostname to a certificate and enable, disable or invalidate the association. If disabled, client certificate will not be sent to the hostname even if activated at the zone level. 100 maximum associations on a single certificate are allowed. Note: Use a null value for parameter *enabled* to invalidate the association.
///
/// `PUT /zones/{zone_id}/origin_tls_client_auth/hostnames`
Future<ApiResult<List<TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPull>?, Never>> perHostnameAuthenticatedOriginPullEnableOrDisableAHostnameForClientAuthentication({required TlsCertificatesAndHostnamesIdentifier zoneId, required PerHostnameAuthenticatedOriginPullEnableOrDisableAHostnameForClientAuthenticationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPull.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get the Hostname Status for Client Authentication
///
/// Retrieves the client certificate authentication status for a specific hostname, showing whether authenticated origin pulls are enabled.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/hostnames/{hostname}`
Future<ApiResult<TlsCertificatesAndHostnamesHostnameCertidObject?, Never>> perHostnameAuthenticatedOriginPullGetTheHostnameStatusForClientAuthentication({required TlsCertificatesAndHostnamesSchemasHostname hostname, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesHostnameCertidObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List Certificates
///
/// Lists all client certificates configured for per-hostname authenticated origin pulls on the zone.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`
Future<ApiResult<List<TlsCertificatesAndHostnamesSchemasCertificateObject>?, Never>> perHostnameAuthenticatedOriginPullListCertificates({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesSchemasCertificateObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Upload a Hostname Client Certificate
///
/// Upload a certificate to be used for client authentication on a hostname. 10 hostname certificates per zone are allowed.
///
/// `POST /zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`
Future<ApiResult<TlsCertificatesAndHostnamesSchemasCertificateObject?, Never>> perHostnameAuthenticatedOriginPullUploadAHostnameClientCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required PerHostnameAuthenticatedOriginPullUploadAHostnameClientCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get the Hostname Client Certificate
///
/// Get the certificate by ID to be used for client authentication on a hostname.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesSchemasCertificateObject?, Never>> perHostnameAuthenticatedOriginPullGetTheHostnameClientCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Hostname Client Certificate
///
/// Removes a client certificate used for authenticated origin pulls on a specific hostname.
/// Note: Before deleting the certificate, you must first invalidate the hostname for client authentication by sending a PUT request with `enabled` set to null. After invalidating the association, the certificate can be safely deleted.
/// 
///
/// `DELETE /zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesSchemasCertificateObject?, Never>> perHostnameAuthenticatedOriginPullDeleteHostnameClientCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/hostnames/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
