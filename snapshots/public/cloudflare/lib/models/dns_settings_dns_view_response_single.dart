// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_settings_dns_view_response.dart';final class DnsSettingsDnsViewResponseSingle {const DnsSettingsDnsViewResponseSingle({this.result});

factory DnsSettingsDnsViewResponseSingle.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsViewResponseSingle(
  result: json['result'] != null ? DnsSettingsDnsViewResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsSettingsDnsViewResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsSettingsDnsViewResponseSingle copyWith({DnsSettingsDnsViewResponse Function()? result}) { return DnsSettingsDnsViewResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsViewResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsSettingsDnsViewResponseSingle(result: $result)'; } 
 }
