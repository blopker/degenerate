// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_hostname_fallback_origin_for_a_zone_update_fallback_origin_for_custom_hostnames_request.dart';import '../models/tls_certificates_and_hostnames_fallbackorigin.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// CustomHostnameFallbackOriginForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CustomHostnameFallbackOriginForAZoneApi with ApiExecutor {const CustomHostnameFallbackOriginForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Fallback Origin for Custom Hostnames
///
/// Retrieves the current fallback origin configuration for custom hostnames on a zone. The fallback origin handles traffic when specific custom hostname origins are unavailable.
///
/// `GET /zones/{zone_id}/custom_hostnames/fallback_origin`
Future<ApiResult<TlsCertificatesAndHostnamesFallbackorigin?, Never>> customHostnameFallbackOriginForAZoneGetFallbackOriginForCustomHostnames({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/fallback_origin',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesFallbackorigin.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Fallback Origin for Custom Hostnames
///
/// Updates the fallback origin configuration for custom hostnames on a zone. Sets the default origin server for custom hostname traffic.
///
/// `PUT /zones/{zone_id}/custom_hostnames/fallback_origin`
Future<ApiResult<TlsCertificatesAndHostnamesFallbackorigin?, Never>> customHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnames({required TlsCertificatesAndHostnamesIdentifier zoneId, required CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/fallback_origin',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesFallbackorigin.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Fallback Origin for Custom Hostnames
///
/// Removes the fallback origin configuration for custom hostnames on a zone. Custom hostnames without specific origins will no longer have a fallback.
///
/// `DELETE /zones/{zone_id}/custom_hostnames/fallback_origin`
Future<ApiResult<TlsCertificatesAndHostnamesFallbackorigin?, Never>> customHostnameFallbackOriginForAZoneDeleteFallbackOriginForCustomHostnames({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/custom_hostnames/fallback_origin',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesFallbackorigin.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
