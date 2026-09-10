// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/tls_certificates_and_hostnames_enabled_response_result.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_zone_authenticated_origin_pull.dart';import '../models/zone_level_authenticated_origin_pulls_delete_certificate_response4xx.dart';import '../models/zone_level_authenticated_origin_pulls_get_certificate_details_response4xx.dart';import '../models/zone_level_authenticated_origin_pulls_get_enablement_setting_for_zone_response4xx.dart';import '../models/zone_level_authenticated_origin_pulls_list_certificates_response4xx.dart';import '../models/zone_level_authenticated_origin_pulls_set_enablement_for_zone_request.dart';import '../models/zone_level_authenticated_origin_pulls_set_enablement_for_zone_response4xx.dart';import '../models/zone_level_authenticated_origin_pulls_upload_certificate_request.dart';import '../models/zone_level_authenticated_origin_pulls_upload_certificate_response4xx.dart';/// ZoneLevelAuthenticatedOriginPullsApi operations.
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
Future<ApiResult<List<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull>?, ZoneLevelAuthenticatedOriginPullsListCertificatesResponse4xx>> zoneLevelAuthenticatedOriginPullsListCertificates({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsListCertificatesResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Upload Certificate
///
/// Upload your own certificate you want Cloudflare to use for edge-to-origin communication to override the shared certificate. Please note that it is important to keep only one certificate active. Also, make sure to enable zone-level authenticated origin pulls by making a PUT call to settings endpoint to see the uploaded certificate in use.
///
/// `POST /zones/{zone_id}/origin_tls_client_auth`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, ZoneLevelAuthenticatedOriginPullsUploadCertificateResponse4xx>> zoneLevelAuthenticatedOriginPullsUploadCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsUploadCertificateResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get Certificate Details
///
/// Retrieves details for a specific client certificate used in zone-level authenticated origin pulls.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, ZoneLevelAuthenticatedOriginPullsGetCertificateDetailsResponse4xx>> zoneLevelAuthenticatedOriginPullsGetCertificateDetails({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsGetCertificateDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete Certificate
///
/// Removes a client certificate used for zone-level authenticated origin pulls.
///
/// `DELETE /zones/{zone_id}/origin_tls_client_auth/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull?, ZoneLevelAuthenticatedOriginPullsDeleteCertificateResponse4xx>> zoneLevelAuthenticatedOriginPullsDeleteCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsDeleteCertificateResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get Enablement Setting for Zone
///
/// Get whether zone-level authenticated origin pulls is enabled or not. It is false by default.
///
/// `GET /zones/{zone_id}/origin_tls_client_auth/settings`
Future<ApiResult<TlsCertificatesAndHostnamesEnabledResponseResult?, ZoneLevelAuthenticatedOriginPullsGetEnablementSettingForZoneResponse4xx>> zoneLevelAuthenticatedOriginPullsGetEnablementSettingForZone({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesEnabledResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsGetEnablementSettingForZoneResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Set Enablement for Zone
///
/// Enable or disable zone-level authenticated origin pulls. 'enabled' should be set true either before/after the certificate is uploaded to see the certificate in use.
///
/// `PUT /zones/{zone_id}/origin_tls_client_auth/settings`
Future<ApiResult<TlsCertificatesAndHostnamesEnabledResponseResult?, ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneResponse4xx>> zoneLevelAuthenticatedOriginPullsSetEnablementForZone({required TlsCertificatesAndHostnamesIdentifier zoneId, required ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/origin_tls_client_auth/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? TlsCertificatesAndHostnamesEnabledResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
