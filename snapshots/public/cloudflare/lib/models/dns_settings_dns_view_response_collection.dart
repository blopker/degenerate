// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_view_response.dart';final class DnsSettingsDnsViewResponseCollection {const DnsSettingsDnsViewResponseCollection({this.result});

factory DnsSettingsDnsViewResponseCollection.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsViewResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => DnsSettingsDnsViewResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DnsSettingsDnsViewResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsSettingsDnsViewResponseCollection copyWith({List<DnsSettingsDnsViewResponse> Function()? result}) { return DnsSettingsDnsViewResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsViewResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DnsSettingsDnsViewResponseCollection(result: $result)'; } 
 }
