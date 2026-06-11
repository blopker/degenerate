// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_settings_zone_patch_nameservers.dart';import 'dns_settings_flatten_all_cnames.dart';import 'dns_settings_foundation_dns.dart';import 'dns_settings_internal_dns_base.dart';import 'dns_settings_multi_provider.dart';import 'dns_settings_ns_ttl.dart';import 'dns_settings_secondary_overrides.dart';import 'dns_settings_soa_base.dart';import 'dns_settings_zone_mode.dart';@immutable final class DnsSettingsDnsSettingsZonePatch {const DnsSettingsDnsSettingsZonePatch({this.flattenAllCnames, this.foundationDns, this.internalDns, this.multiProvider, this.nsTtl, this.secondaryOverrides, this.soa, this.zoneMode, this.nameservers, });

factory DnsSettingsDnsSettingsZonePatch.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsZonePatch(
  flattenAllCnames: json['flatten_all_cnames'] != null ? DnsSettingsFlattenAllCnames.fromJson(json['flatten_all_cnames'] as bool) : null,
  foundationDns: json['foundation_dns'] != null ? DnsSettingsFoundationDns.fromJson(json['foundation_dns'] as bool) : null,
  internalDns: json['internal_dns'] != null ? DnsSettingsInternalDnsBase.fromJson(json['internal_dns'] as Map<String, dynamic>) : null,
  multiProvider: json['multi_provider'] != null ? DnsSettingsMultiProvider.fromJson(json['multi_provider'] as bool) : null,
  nsTtl: json['ns_ttl'] != null ? DnsSettingsNsTtl.fromJson(json['ns_ttl'] as num) : null,
  secondaryOverrides: json['secondary_overrides'] != null ? DnsSettingsSecondaryOverrides.fromJson(json['secondary_overrides'] as bool) : null,
  soa: json['soa'] != null ? DnsSettingsSoaBase.fromJson(json['soa'] as Map<String, dynamic>) : null,
  zoneMode: json['zone_mode'] != null ? DnsSettingsZoneMode.fromJson(json['zone_mode'] as String) : null,
  nameservers: json['nameservers'] != null ? DnsSettingsDnsSettingsZonePatchNameservers.fromJson(json['nameservers'] as Map<String, dynamic>) : null,
); }

final DnsSettingsFlattenAllCnames? flattenAllCnames;

final DnsSettingsFoundationDns? foundationDns;

final DnsSettingsInternalDnsBase? internalDns;

final DnsSettingsMultiProvider? multiProvider;

final DnsSettingsNsTtl? nsTtl;

final DnsSettingsSecondaryOverrides? secondaryOverrides;

final DnsSettingsSoaBase? soa;

final DnsSettingsZoneMode? zoneMode;

/// Settings determining the nameservers through which the zone should be available.
final DnsSettingsDnsSettingsZonePatchNameservers? nameservers;

Map<String, dynamic> toJson() { return {
  if (flattenAllCnames != null) 'flatten_all_cnames': flattenAllCnames?.toJson(),
  if (foundationDns != null) 'foundation_dns': foundationDns?.toJson(),
  if (internalDns != null) 'internal_dns': internalDns?.toJson(),
  if (multiProvider != null) 'multi_provider': multiProvider?.toJson(),
  if (nsTtl != null) 'ns_ttl': nsTtl?.toJson(),
  if (secondaryOverrides != null) 'secondary_overrides': secondaryOverrides?.toJson(),
  if (soa != null) 'soa': soa?.toJson(),
  if (zoneMode != null) 'zone_mode': zoneMode?.toJson(),
  if (nameservers != null) 'nameservers': nameservers?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flatten_all_cnames', 'foundation_dns', 'internal_dns', 'multi_provider', 'ns_ttl', 'secondary_overrides', 'soa', 'zone_mode', 'nameservers'}.contains(key)); } 
DnsSettingsDnsSettingsZonePatch copyWith({DnsSettingsFlattenAllCnames Function()? flattenAllCnames, DnsSettingsFoundationDns Function()? foundationDns, DnsSettingsInternalDnsBase Function()? internalDns, DnsSettingsMultiProvider Function()? multiProvider, DnsSettingsNsTtl Function()? nsTtl, DnsSettingsSecondaryOverrides Function()? secondaryOverrides, DnsSettingsSoaBase Function()? soa, DnsSettingsZoneMode Function()? zoneMode, DnsSettingsDnsSettingsZonePatchNameservers Function()? nameservers, }) { return DnsSettingsDnsSettingsZonePatch(
  flattenAllCnames: flattenAllCnames != null ? flattenAllCnames() : this.flattenAllCnames,
  foundationDns: foundationDns != null ? foundationDns() : this.foundationDns,
  internalDns: internalDns != null ? internalDns() : this.internalDns,
  multiProvider: multiProvider != null ? multiProvider() : this.multiProvider,
  nsTtl: nsTtl != null ? nsTtl() : this.nsTtl,
  secondaryOverrides: secondaryOverrides != null ? secondaryOverrides() : this.secondaryOverrides,
  soa: soa != null ? soa() : this.soa,
  zoneMode: zoneMode != null ? zoneMode() : this.zoneMode,
  nameservers: nameservers != null ? nameservers() : this.nameservers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsZonePatch &&
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
@override String toString() { return 'DnsSettingsDnsSettingsZonePatch(flattenAllCnames: $flattenAllCnames, foundationDns: $foundationDns, internalDns: $internalDns, multiProvider: $multiProvider, nsTtl: $nsTtl, secondaryOverrides: $secondaryOverrides, soa: $soa, zoneMode: $zoneMode, nameservers: $nameservers)'; } 
 }
