// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_settings_dns_settings_zone_response.dart';final class DnsSettingsSchemasDnsResponseSingle {const DnsSettingsSchemasDnsResponseSingle({required this.result});

factory DnsSettingsSchemasDnsResponseSingle.fromJson(Map<String, dynamic> json) { return DnsSettingsSchemasDnsResponseSingle(
  result: DnsSettingsDnsSettingsZoneResponse.fromJson(json['result'] as Map<String, dynamic>),
); }

final DnsSettingsDnsSettingsZoneResponse result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
DnsSettingsSchemasDnsResponseSingle copyWith({DnsSettingsDnsSettingsZoneResponse? result}) { return DnsSettingsSchemasDnsResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsSchemasDnsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsSettingsSchemasDnsResponseSingle(result: $result)'; } 
 }
