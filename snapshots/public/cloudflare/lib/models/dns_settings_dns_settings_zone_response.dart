// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_settings_zone_response_nameservers.dart';import 'dns_settings_flatten_all_cnames.dart';import 'dns_settings_foundation_dns.dart';import 'dns_settings_internal_dns_base.dart';import 'dns_settings_multi_provider.dart';import 'dns_settings_ns_ttl.dart';import 'dns_settings_secondary_overrides.dart';import 'dns_settings_soa_base.dart';import 'dns_settings_zone_mode.dart';@immutable final class DnsSettingsDnsSettingsZoneResponse {const DnsSettingsDnsSettingsZoneResponse({required this.flattenAllCnames, required this.foundationDns, required this.internalDns, required this.multiProvider, required this.nsTtl, required this.secondaryOverrides, required this.soa, required this.zoneMode, required this.nameservers, });

factory DnsSettingsDnsSettingsZoneResponse.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsZoneResponse(
  flattenAllCnames: DnsSettingsFlattenAllCnames.fromJson(json['flatten_all_cnames'] as bool),
  foundationDns: DnsSettingsFoundationDns.fromJson(json['foundation_dns'] as bool),
  internalDns: DnsSettingsInternalDnsBase.fromJson(json['internal_dns'] as Map<String, dynamic>),
  multiProvider: DnsSettingsMultiProvider.fromJson(json['multi_provider'] as bool),
  nsTtl: DnsSettingsNsTtl.fromJson(json['ns_ttl'] as num),
  secondaryOverrides: DnsSettingsSecondaryOverrides.fromJson(json['secondary_overrides'] as bool),
  soa: DnsSettingsSoaBase.fromJson(json['soa'] as Map<String, dynamic>),
  zoneMode: DnsSettingsZoneMode.fromJson(json['zone_mode'] as String),
  nameservers: DnsSettingsDnsSettingsZoneResponseNameservers.fromJson(json['nameservers'] as Map<String, dynamic>),
); }

final DnsSettingsFlattenAllCnames flattenAllCnames;

final DnsSettingsFoundationDns foundationDns;

final DnsSettingsInternalDnsBase internalDns;

final DnsSettingsMultiProvider multiProvider;

final DnsSettingsNsTtl nsTtl;

final DnsSettingsSecondaryOverrides secondaryOverrides;

final DnsSettingsSoaBase soa;

final DnsSettingsZoneMode zoneMode;

/// Settings determining the nameservers through which the zone should be available.
final DnsSettingsDnsSettingsZoneResponseNameservers nameservers;

Map<String, dynamic> toJson() { return {
  'flatten_all_cnames': flattenAllCnames.toJson(),
  'foundation_dns': foundationDns.toJson(),
  'internal_dns': internalDns.toJson(),
  'multi_provider': multiProvider.toJson(),
  'ns_ttl': nsTtl.toJson(),
  'secondary_overrides': secondaryOverrides.toJson(),
  'soa': soa.toJson(),
  'zone_mode': zoneMode.toJson(),
  'nameservers': nameservers.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('flatten_all_cnames') &&
      json.containsKey('foundation_dns') &&
      json.containsKey('internal_dns') &&
      json.containsKey('multi_provider') &&
      json.containsKey('ns_ttl') &&
      json.containsKey('secondary_overrides') &&
      json.containsKey('soa') &&
      json.containsKey('zone_mode') &&
      json.containsKey('nameservers'); } 
DnsSettingsDnsSettingsZoneResponse copyWith({DnsSettingsFlattenAllCnames? flattenAllCnames, DnsSettingsFoundationDns? foundationDns, DnsSettingsInternalDnsBase? internalDns, DnsSettingsMultiProvider? multiProvider, DnsSettingsNsTtl? nsTtl, DnsSettingsSecondaryOverrides? secondaryOverrides, DnsSettingsSoaBase? soa, DnsSettingsZoneMode? zoneMode, DnsSettingsDnsSettingsZoneResponseNameservers? nameservers, }) { return DnsSettingsDnsSettingsZoneResponse(
  flattenAllCnames: flattenAllCnames ?? this.flattenAllCnames,
  foundationDns: foundationDns ?? this.foundationDns,
  internalDns: internalDns ?? this.internalDns,
  multiProvider: multiProvider ?? this.multiProvider,
  nsTtl: nsTtl ?? this.nsTtl,
  secondaryOverrides: secondaryOverrides ?? this.secondaryOverrides,
  soa: soa ?? this.soa,
  zoneMode: zoneMode ?? this.zoneMode,
  nameservers: nameservers ?? this.nameservers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsZoneResponse &&
          flattenAllCnames == other.flattenAllCnames &&
          foundationDns == other.foundationDns &&
          internalDns == other.internalDns &&
          multiProvider == other.multiProvider &&
          nsTtl == other.nsTtl &&
          secondaryOverrides == other.secondaryOverrides &&
          soa == other.soa &&
          zoneMode == other.zoneMode &&
          nameservers == other.nameservers; } 
@override int get hashCode { return Object.hash(flattenAllCnames, foundationDns, internalDns, multiProvider, nsTtl, secondaryOverrides, soa, zoneMode, nameservers); } 
@override String toString() { return 'DnsSettingsDnsSettingsZoneResponse(flattenAllCnames: $flattenAllCnames, foundationDns: $foundationDns, internalDns: $internalDns, multiProvider: $multiProvider, nsTtl: $nsTtl, secondaryOverrides: $secondaryOverrides, soa: $soa, zoneMode: $zoneMode, nameservers: $nameservers)'; } 
 }
