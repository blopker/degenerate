// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_settings_dns_settings_zone_patch.dart';import '../models/dns_settings_dns_settings_zone_response.dart';import '../models/dns_settings_identifier.dart';/// DnsSettingsForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsSettingsForAZoneApi with ApiExecutor {const DnsSettingsForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Show DNS Settings
///
/// Show DNS settings for a zone
///
/// `GET /zones/{zone_id}/dns_settings`
Future<ApiResult<DnsSettingsDnsSettingsZoneResponse, Never>> dnsSettingsForAZoneListDnsSettings({required DnsSettingsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DnsSettingsDnsSettingsZoneResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Update DNS Settings
///
/// Update DNS settings for a zone
///
/// `PATCH /zones/{zone_id}/dns_settings`
Future<ApiResult<DnsSettingsDnsSettingsZoneResponse, Never>> dnsSettingsForAZoneUpdateDnsSettings({required DnsSettingsIdentifier zoneId, required DnsSettingsDnsSettingsZonePatch body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return DnsSettingsDnsSettingsZoneResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
 }
