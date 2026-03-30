// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/tls_certificates_and_hostnames_enabled_response_result.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_zone_authenticated_origin_pull.dart';import '../models/zone_level_authenticated_origin_pulls_set_enablement_for_zone_request.dart';import '../models/zone_level_authenticated_origin_pulls_upload_certificate_request.dart';/// ZoneLevelAuthenticatedOriginPullsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAuthenticatedOriginPullsApi with ApiExecutor {const ZoneLevelAuthenticatedOriginPullsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Certificates
///
/// Lists all client certificates configured for zone-level authenticated origin pulls.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth`
Future<ApiResult<List<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull>?, Never>> zoneLevelAuthenticatedOriginPullsListCertificates({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Upload Certificate
///
/// Upload your own certificate you want Cloudflare to use for edge-to-origin communication to override the shared certificate. Please note that it is important to keep only one certificate active. Also, make sure to enable zone-level authenticated origin pulls by making a PUT call to settings endpoint to see the uploaded certificate in use.
///
/// `POST /zones/{zone_id}/origin_tls_client_auth`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, Never>> zoneLevelAuthenticatedOriginPullsUploadCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Certificate Details
///
/// Retrieves details for a specific client certificate used in zone-level authenticated origin pulls.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, Never>> zoneLevelAuthenticatedOriginPullsGetCertificateDetails({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Certificate
///
/// Removes a client certificate used for zone-level authenticated origin pulls.
///
/// `DELETE /zones/{zone_id}/origin_tls_client_auth/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, Never>> zoneLevelAuthenticatedOriginPullsDeleteCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Enablement Setting for Zone
///
/// Get whether zone-level authenticated origin pulls is enabled or not. It is false by default.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/settings`
Future<ApiResult<TlsCertificatesAndHostnamesEnabledResponseResult?, Never>> zoneLevelAuthenticatedOriginPullsGetEnablementSettingForZone({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesEnabledResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Set Enablement for Zone
///
/// Enable or disable zone-level authenticated origin pulls. 'enabled' should be set true either before/after the certificate is uploaded to see the certificate in use.
///
/// `PUT /zones/{zone_id}/origin_tls_client_auth/settings`
Future<ApiResult<TlsCertificatesAndHostnamesEnabledResponseResult?, Never>> zoneLevelAuthenticatedOriginPullsSetEnablementForZone({required TlsCertificatesAndHostnamesIdentifier zoneId, required ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesEnabledResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
