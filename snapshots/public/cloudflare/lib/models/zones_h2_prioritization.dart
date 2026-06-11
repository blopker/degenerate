// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_h2_prioritization_value.dart';/// HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.
@immutable final class ZonesH2Prioritization {const ZonesH2Prioritization({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesH2Prioritization.fromJson(Map<String, dynamic> json) { return ZonesH2Prioritization(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesH2PrioritizationValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesH2PrioritizationValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesH2Prioritization copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesH2PrioritizationValue? value, }) { return ZonesH2Prioritization(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesH2Prioritization &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesH2Prioritization(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
