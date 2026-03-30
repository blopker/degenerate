// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_settings_dns_settings_account_patch_nameservers.dart';final class DnsSettingsDnsSettingsAccountPatch {const DnsSettingsDnsSettingsAccountPatch({this.nameservers});

factory DnsSettingsDnsSettingsAccountPatch.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsAccountPatch(
  nameservers: json['nameservers'] != null ? DnsSettingsDnsSettingsAccountPatchNameservers.fromJson(json['nameservers'] as Map<String, dynamic>) : null,
); }

/// Settings determining the nameservers through which the zone should be available.
final DnsSettingsDnsSettingsAccountPatchNameservers? nameservers;

Map<String, dynamic> toJson() { return {
  if (nameservers != null) 'nameservers': nameservers?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'nameservers'}.contains(key)); } 
DnsSettingsDnsSettingsAccountPatch copyWith({DnsSettingsDnsSettingsAccountPatchNameservers Function()? nameservers}) { return DnsSettingsDnsSettingsAccountPatch(
  nameservers: nameservers != null ? nameservers() : this.nameservers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsAccountPatch &&
          nameservers == other.nameservers; } 
@override int get hashCode { return nameservers.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsAccountPatch(nameservers: $nameservers)'; } 
 }
