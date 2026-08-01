// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesSchemasBase {const ZonesSchemasBase({required this.id, required this.value, this.editable, this.modifiedOn = const Omittable.absent(), });

factory ZonesSchemasBase.fromJson(Map<String, dynamic> json) { return ZonesSchemasBase(
  editable: json['editable'] as bool?,
  id: json['id'] as String,
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: json['value'],
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool? editable;

/// Identifier of the zone setting.
final String id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

/// Current value of the zone setting.
final dynamic value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('value'); } 
ZonesSchemasBase copyWith({bool? Function()? editable, String? id, Omittable<DateTime?>? modifiedOn, dynamic Function()? value, }) { return ZonesSchemasBase(
  editable: editable != null ? editable() : this.editable,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasBase &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasBase(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
