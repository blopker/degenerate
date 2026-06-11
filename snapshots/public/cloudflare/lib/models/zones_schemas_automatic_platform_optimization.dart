// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_automatic_platform_optimization.dart';/// [Automatic Platform Optimization for WordPress](https://developers.cloudflare.com/automatic-platform-optimization/) serves your WordPress site from Cloudflare's edge network and caches third-party fonts.
@immutable final class ZonesSchemasAutomaticPlatformOptimization {const ZonesSchemasAutomaticPlatformOptimization({required this.id, required this.value, this.editable, this.modifiedOn, });

factory ZonesSchemasAutomaticPlatformOptimization.fromJson(Map<String, dynamic> json) { return ZonesSchemasAutomaticPlatformOptimization(
  editable: json['editable'] as bool?,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesAutomaticPlatformOptimization.fromJson(json['value'] as Map<String, dynamic>),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool? editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesAutomaticPlatformOptimization value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasAutomaticPlatformOptimization copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesAutomaticPlatformOptimization? value, }) { return ZonesSchemasAutomaticPlatformOptimization(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasAutomaticPlatformOptimization &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasAutomaticPlatformOptimization(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
