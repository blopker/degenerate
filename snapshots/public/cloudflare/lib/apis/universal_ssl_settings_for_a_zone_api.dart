// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_universal.dart';/// UniversalSslSettingsForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UniversalSslSettingsForAZoneApi with ApiExecutor {const UniversalSslSettingsForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Universal SSL Settings Details
///
/// Get Universal SSL Settings for a Zone.
///
/// `GET /zones/{zone_id}/ssl/universal/settings`
Future<ApiResult<TlsCertificatesAndHostnamesUniversal?, Never>> universalSslSettingsForAZoneUniversalSslSettingsDetails({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/ssl/universal/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesUniversal.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit Universal SSL Settings
///
/// Patch Universal SSL Settings for a Zone.
///
/// `PATCH /zones/{zone_id}/ssl/universal/settings`
Future<ApiResult<TlsCertificatesAndHostnamesUniversal?, Never>> universalSslSettingsForAZoneEditUniversalSslSettings({required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesUniversal body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/ssl/universal/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesUniversal.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
