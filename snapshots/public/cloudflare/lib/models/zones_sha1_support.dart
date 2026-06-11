// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_sha1_support_value.dart';/// Allow SHA1 support.
@immutable final class ZonesSha1Support {const ZonesSha1Support({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesSha1Support.fromJson(Map<String, dynamic> json) { return ZonesSha1Support(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesSha1SupportValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// Zone setting identifier.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesSha1SupportValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSha1Support copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesSha1SupportValue? value, }) { return ZonesSha1Support(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSha1Support &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSha1Support(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
