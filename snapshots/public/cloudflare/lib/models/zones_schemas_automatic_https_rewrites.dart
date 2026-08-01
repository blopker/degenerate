// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_automatic_https_rewrites_value.dart';/// Enable the Automatic HTTPS Rewrites feature for this zone.
@immutable final class ZonesSchemasAutomaticHttpsRewrites {const ZonesSchemasAutomaticHttpsRewrites({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesSchemasAutomaticHttpsRewrites.fromJson(Map<String, dynamic> json) { return ZonesSchemasAutomaticHttpsRewrites(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesAutomaticHttpsRewritesValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final ZonesAutomaticHttpsRewritesValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasAutomaticHttpsRewrites copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesAutomaticHttpsRewritesValue? value, }) { return ZonesSchemasAutomaticHttpsRewrites(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasAutomaticHttpsRewrites &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasAutomaticHttpsRewrites(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
