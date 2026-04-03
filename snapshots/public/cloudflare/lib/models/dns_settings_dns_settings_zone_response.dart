// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_settings_zone_response_nameservers.dart';@immutable final class DnsSettingsDnsSettingsZoneResponse {const DnsSettingsDnsSettingsZoneResponse({required this.nameservers});

factory DnsSettingsDnsSettingsZoneResponse.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsZoneResponse(
  nameservers: DnsSettingsDnsSettingsZoneResponseNameservers.fromJson(json['nameservers'] as Map<String, dynamic>),
); }

/// Settings determining the nameservers through which the zone should be available.
final DnsSettingsDnsSettingsZoneResponseNameservers nameservers;

Map<String, dynamic> toJson() { return {
  'nameservers': nameservers.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('nameservers'); } 
DnsSettingsDnsSettingsZoneResponse copyWith({DnsSettingsDnsSettingsZoneResponseNameservers? nameservers}) { return DnsSettingsDnsSettingsZoneResponse(
  nameservers: nameservers ?? this.nameservers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsZoneResponse &&
          nameservers == other.nameservers; } 
@override int get hashCode { return nameservers.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsZoneResponse(nameservers: $nameservers)'; } 
 }
