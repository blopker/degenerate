// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_account_settings.dart';@immutable final class DnsSettingsDnsResponseSingle {const DnsSettingsDnsResponseSingle({required this.result});

factory DnsSettingsDnsResponseSingle.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsResponseSingle(
  result: DnsSettingsAccountSettings.fromJson(json['result'] as Map<String, dynamic>),
); }

final DnsSettingsAccountSettings result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
DnsSettingsDnsResponseSingle copyWith({DnsSettingsAccountSettings? result}) { return DnsSettingsDnsResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsSettingsDnsResponseSingle(result: $result)'; } 
 }
