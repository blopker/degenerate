// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_hostname_for_a_zone_create_custom_hostname_request.dart';import '../models/custom_hostname_for_a_zone_delete_custom_hostname_and_any_issued_ssl_certificates_response.dart';import '../models/custom_hostname_for_a_zone_delete_single_certificate_and_key_in_a_custom_hostname_response202.dart';import '../models/custom_hostname_for_a_zone_edit_custom_hostname_request.dart';import '../models/response_common68.dart';import '../models/tls_certificates_and_hostnames_custom_cert_and_key.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// CustomHostnameForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CustomHostnameForAZoneApi with ApiExecutor {const CustomHostnameForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Custom Hostnames
///
/// List, search, sort, and filter all of your custom hostnames.
///
/// `GET /zones/{zone_id}/custom_hostnames`
Future<ApiResult<ResponseCommon68, Never>> customHostnameForAZoneListCustomHostnames({required TlsCertificatesAndHostnamesIdentifier zoneId, String? hostname, String? id, double? page, double? perPage, dynamic order, dynamic direction, dynamic ssl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (hostname != null) {
  queryParameters['hostname'] = hostname;
}
if (id != null) {
  queryParameters['id'] = id;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toString();
}
if (direction != null) {
  queryParameters['direction'] = direction.toString();
}
if (ssl != null) {
  queryParameters['ssl'] = ssl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon68.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Custom Hostname
///
/// Add a new custom hostname and request that an SSL certificate be issued for it. One of three validation methods—http, txt, email—should be used, with 'http' recommended if the CNAME is already in place (or will be soon). Specifying 'email' will send an email to the WHOIS contacts on file for the base domain plus hostmaster, postmaster, webmaster, admin, administrator. If http is used and the domain is not already pointing to the Managed CNAME host, the PATCH method must be used once it is (to complete validation).  Enable bundling of certificates using the custom_cert_bundle field. The bundling process requires the following condition One certificate in the bundle must use an RSA, and the other must use an ECDSA.
///
/// `POST /zones/{zone_id}/custom_hostnames`
Future<ApiResult<ResponseCommon68, Never>> customHostnameForAZoneCreateCustomHostname({required TlsCertificatesAndHostnamesIdentifier zoneId, required CustomHostnameForAZoneCreateCustomHostnameRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon68.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Custom Hostname Details
///
/// Retrieves detailed information about a specific custom hostname, including SSL certificate status, ownership verification, and origin configuration.
///
/// `GET /zones/{zone_id}/custom_hostnames/{custom_hostname_id}`
Future<ApiResult<ResponseCommon68, Never>> customHostnameForAZoneCustomHostnameDetails({required TlsCertificatesAndHostnamesIdentifier customHostnameId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/${Uri.encodeComponent(customHostnameId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon68.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit Custom Hostname
///
/// Modify SSL configuration for a custom hostname. When sent with SSL config that matches existing config, used to indicate that hostname should pass domain control validation (DCV). Can also be used to change validation type, e.g., from 'http' to 'email'. Bundle an existing certificate with another certificate by using the "custom_cert_bundle" field. The bundling process supports combining certificates as long as the following condition is met. One certificate must use the RSA algorithm, and the other must use the ECDSA algorithm.
///
/// `PATCH /zones/{zone_id}/custom_hostnames/{custom_hostname_id}`
Future<ApiResult<ResponseCommon68, Never>> customHostnameForAZoneEditCustomHostname({required TlsCertificatesAndHostnamesIdentifier customHostnameId, required TlsCertificatesAndHostnamesIdentifier zoneId, required CustomHostnameForAZoneEditCustomHostnameRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/${Uri.encodeComponent(customHostnameId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon68.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Custom Hostname (and any issued SSL certificates)
///
/// Permanently deletes a custom hostname and revokes any SSL certificates that were issued for it. This action cannot be undone.
///
/// `DELETE /zones/{zone_id}/custom_hostnames/{custom_hostname_id}`
Future<ApiResult<CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse, Never>> customHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificates({required TlsCertificatesAndHostnamesIdentifier customHostnameId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/${Uri.encodeComponent(customHostnameId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CustomHostnameForAZoneDeleteCustomHostnameAndAnyIssuedSslCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Replace Custom Certificate and Custom Key In Custom Hostname
///
/// Replace a single custom certificate within a certificate pack that contains two bundled certificates. The replacement must adhere to the following constraints. You can only replace an RSA certificate with another RSA certificate or an ECDSA certificate with another ECDSA certificate.
///
/// `PUT /zones/{zone_id}/custom_hostnames/{custom_hostname_id}/certificate_pack/{certificate_pack_id}/certificates/{certificate_id}`
Future<ApiResult<ResponseCommon68, Never>> customHostnameForAZoneEditCustomCertificateCustomHostname({required TlsCertificatesAndHostnamesIdentifier customHostnameId, required TlsCertificatesAndHostnamesIdentifier certificatePackId, required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesCustomCertAndKey body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/${Uri.encodeComponent(customHostnameId.toString())}/certificate_pack/${Uri.encodeComponent(certificatePackId.toString())}/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon68.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Single Certificate And Key For Custom Hostname
///
/// Delete a single custom certificate from a certificate pack that contains two bundled certificates. Deletion is subject to the following constraints. You cannot delete a certificate if it is the only remaining certificate in the pack. At least one certificate must remain in the pack.
///
/// `DELETE /zones/{zone_id}/custom_hostnames/{custom_hostname_id}/certificate_pack/{certificate_pack_id}/certificates/{certificate_id}`
Future<ApiResult<CustomHostnameForAZoneDeleteSingleCertificateAndKeyInACustomHostnameResponse202, Never>> customHostnameForAZoneDeleteSingleCertificateAndKeyInACustomHostname({required TlsCertificatesAndHostnamesIdentifier customHostnameId, required TlsCertificatesAndHostnamesIdentifier certificatePackId, required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/${Uri.encodeComponent(customHostnameId.toString())}/certificate_pack/${Uri.encodeComponent(certificatePackId.toString())}/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CustomHostnameForAZoneDeleteSingleCertificateAndKeyInACustomHostnameResponse202.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
