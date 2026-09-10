// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_settings_dns_settings_zone_patch.dart';import '../models/dns_settings_dns_settings_zone_response.dart';import '../models/dns_settings_for_a_zone_list_dns_settings_response4_xx.dart';import '../models/dns_settings_for_a_zone_update_dns_settings_response4_xx.dart';import '../models/dns_settings_identifier.dart';/// DnsSettingsForAZoneApi operations.
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
Future<ApiResult<DnsSettingsDnsSettingsZoneResponse, DnsSettingsForAZoneListDnsSettingsResponse4Xx>> dnsSettingsForAZoneListDnsSettings({required DnsSettingsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DnsSettingsDnsSettingsZoneResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsSettingsForAZoneListDnsSettingsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update DNS Settings
///
/// Update DNS settings for a zone
///
/// `PATCH /zones/{zone_id}/dns_settings`
Future<ApiResult<DnsSettingsDnsSettingsZoneResponse, DnsSettingsForAZoneUpdateDnsSettingsResponse4Xx>> dnsSettingsForAZoneUpdateDnsSettings({required DnsSettingsIdentifier zoneId, required DnsSettingsDnsSettingsZonePatch body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DnsSettingsDnsSettingsZoneResponse.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsSettingsForAZoneUpdateDnsSettingsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
