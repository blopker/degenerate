// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_bond_id.dart';import 'magic_identifier.dart';import 'magic_lan_static_addressing.dart';import 'magic_nat.dart';import 'magic_port.dart';import 'magic_routed_subnet.dart';import 'magic_vlan_tag.dart';final class MagicLan {const MagicLan({this.bondId, this.haLink, this.id, this.isBreakout, this.isPrioritized, this.name, this.nat, this.physport, this.routedSubnets, this.siteId, this.staticAddressing, this.vlanTag, });

factory MagicLan.fromJson(Map<String, dynamic> json) { return MagicLan(
  bondId: json['bond_id'] != null ? MagicBondId.fromJson(json['bond_id'] as num) : null,
  haLink: json['ha_link'] as bool?,
  id: json['id'] != null ? MagicIdentifier.fromJson(json['id'] as String) : null,
  isBreakout: json['is_breakout'] as bool?,
  isPrioritized: json['is_prioritized'] as bool?,
  name: json['name'] as String?,
  nat: json['nat'] != null ? MagicNat.fromJson(json['nat'] as Map<String, dynamic>) : null,
  physport: json['physport'] != null ? MagicPort.fromJson(json['physport'] as num) : null,
  routedSubnets: (json['routed_subnets'] as List<dynamic>?)?.map((e) => MagicRoutedSubnet.fromJson(e as Map<String, dynamic>)).toList(),
  siteId: json['site_id'] != null ? MagicIdentifier.fromJson(json['site_id'] as String) : null,
  staticAddressing: json['static_addressing'] != null ? MagicLanStaticAddressing.fromJson(json['static_addressing'] as Map<String, dynamic>) : null,
  vlanTag: json['vlan_tag'] != null ? MagicVlanTag.fromJson(json['vlan_tag'] as num) : null,
); }

final MagicBondId? bondId;

/// mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
final bool? haLink;

/// Identifier
final MagicIdentifier? id;

/// mark true to use this LAN for source-based breakout traffic
final bool? isBreakout;

/// mark true to use this LAN for source-based prioritized traffic
final bool? isPrioritized;

final String? name;

final MagicNat? nat;

final MagicPort? physport;

final List<MagicRoutedSubnet>? routedSubnets;

/// Identifier
final MagicIdentifier? siteId;

final MagicLanStaticAddressing? staticAddressing;

final MagicVlanTag? vlanTag;

Map<String, dynamic> toJson() { return {
  if (bondId != null) 'bond_id': bondId?.toJson(),
  'ha_link': ?haLink,
  if (id != null) 'id': id?.toJson(),
  'is_breakout': ?isBreakout,
  'is_prioritized': ?isPrioritized,
  'name': ?name,
  if (nat != null) 'nat': nat?.toJson(),
  if (physport != null) 'physport': physport?.toJson(),
  if (routedSubnets != null) 'routed_subnets': routedSubnets?.map((e) => e.toJson()).toList(),
  if (siteId != null) 'site_id': siteId?.toJson(),
  if (staticAddressing != null) 'static_addressing': staticAddressing?.toJson(),
  if (vlanTag != null) 'vlan_tag': vlanTag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bond_id', 'ha_link', 'id', 'is_breakout', 'is_prioritized', 'name', 'nat', 'physport', 'routed_subnets', 'site_id', 'static_addressing', 'vlan_tag'}.contains(key)); } 
MagicLan copyWith({MagicBondId Function()? bondId, bool Function()? haLink, MagicIdentifier Function()? id, bool Function()? isBreakout, bool Function()? isPrioritized, String Function()? name, MagicNat Function()? nat, MagicPort Function()? physport, List<MagicRoutedSubnet> Function()? routedSubnets, MagicIdentifier Function()? siteId, MagicLanStaticAddressing Function()? staticAddressing, MagicVlanTag Function()? vlanTag, }) { return MagicLan(
  bondId: bondId != null ? bondId() : this.bondId,
  haLink: haLink != null ? haLink() : this.haLink,
  id: id != null ? id() : this.id,
  isBreakout: isBreakout != null ? isBreakout() : this.isBreakout,
  isPrioritized: isPrioritized != null ? isPrioritized() : this.isPrioritized,
  name: name != null ? name() : this.name,
  nat: nat != null ? nat() : this.nat,
  physport: physport != null ? physport() : this.physport,
  routedSubnets: routedSubnets != null ? routedSubnets() : this.routedSubnets,
  siteId: siteId != null ? siteId() : this.siteId,
  staticAddressing: staticAddressing != null ? staticAddressing() : this.staticAddressing,
  vlanTag: vlanTag != null ? vlanTag() : this.vlanTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicLan &&
          bondId == other.bondId &&
          haLink == other.haLink &&
          id == other.id &&
          isBreakout == other.isBreakout &&
          isPrioritized == other.isPrioritized &&
          name == other.name &&
          nat == other.nat &&
          physport == other.physport &&
          listEquals(routedSubnets, other.routedSubnets) &&
          siteId == other.siteId &&
          staticAddressing == other.staticAddressing &&
          vlanTag == other.vlanTag; } 
@override int get hashCode { return Object.hash(bondId, haLink, id, isBreakout, isPrioritized, name, nat, physport, Object.hashAll(routedSubnets ?? const []), siteId, staticAddressing, vlanTag); } 
@override String toString() { return 'MagicLan(bondId: $bondId, haLink: $haLink, id: $id, isBreakout: $isBreakout, isPrioritized: $isPrioritized, name: $name, nat: $nat, physport: $physport, routedSubnets: $routedSubnets, siteId: $siteId, staticAddressing: $staticAddressing, vlanTag: $vlanTag)'; } 
 }
