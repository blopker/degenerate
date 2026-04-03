// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesBase {const ZonesBase({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesBase.fromJson(Map<String, dynamic> json) { return ZonesBase(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'] as String,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'],
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// Identifier of the zone setting.
final String id;

/// last time this setting was modified.
final DateTime? modifiedOn;

/// Current value of the zone setting.
final dynamic value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('value'); } 
ZonesBase copyWith({bool Function()? editable, String? id, DateTime? Function()? modifiedOn, dynamic Function()? value, }) { return ZonesBase(
  editable: editable != null ? editable() : this.editable,
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesBase &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesBase(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
