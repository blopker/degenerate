// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_settings_account_response.dart';@immutable final class DnsSettingsAccountSettings {const DnsSettingsAccountSettings({required this.zoneDefaults});

factory DnsSettingsAccountSettings.fromJson(Map<String, dynamic> json) { return DnsSettingsAccountSettings(
  zoneDefaults: DnsSettingsDnsSettingsAccountResponse.fromJson(json['zone_defaults'] as Map<String, dynamic>),
); }

final DnsSettingsDnsSettingsAccountResponse zoneDefaults;

Map<String, dynamic> toJson() { return {
  'zone_defaults': zoneDefaults.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('zone_defaults'); } 
DnsSettingsAccountSettings copyWith({DnsSettingsDnsSettingsAccountResponse? zoneDefaults}) { return DnsSettingsAccountSettings(
  zoneDefaults: zoneDefaults ?? this.zoneDefaults,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsAccountSettings &&
          zoneDefaults == other.zoneDefaults; } 
@override int get hashCode { return zoneDefaults.hashCode; } 
@override String toString() { return 'DnsSettingsAccountSettings(zoneDefaults: $zoneDefaults)'; } 
 }
