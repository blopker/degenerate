// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_settings_account_patch.dart';@immutable final class DnsSettingsAccountSettingsPatch {const DnsSettingsAccountSettingsPatch({this.zoneDefaults});

factory DnsSettingsAccountSettingsPatch.fromJson(Map<String, dynamic> json) { return DnsSettingsAccountSettingsPatch(
  zoneDefaults: json['zone_defaults'] != null ? DnsSettingsDnsSettingsAccountPatch.fromJson(json['zone_defaults'] as Map<String, dynamic>) : null,
); }

final DnsSettingsDnsSettingsAccountPatch? zoneDefaults;

Map<String, dynamic> toJson() { return {
  if (zoneDefaults != null) 'zone_defaults': zoneDefaults?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'zone_defaults'}.contains(key)); } 
DnsSettingsAccountSettingsPatch copyWith({DnsSettingsDnsSettingsAccountPatch Function()? zoneDefaults}) { return DnsSettingsAccountSettingsPatch(
  zoneDefaults: zoneDefaults != null ? zoneDefaults() : this.zoneDefaults,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsAccountSettingsPatch &&
          zoneDefaults == other.zoneDefaults; } 
@override int get hashCode { return zoneDefaults.hashCode; } 
@override String toString() { return 'DnsSettingsAccountSettingsPatch(zoneDefaults: $zoneDefaults)'; } 
 }
