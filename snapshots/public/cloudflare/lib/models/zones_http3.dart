// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_http3_value.dart';/// HTTP3 enabled for this zone.
@immutable final class ZonesHttp3 {const ZonesHttp3({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesHttp3.fromJson(Map<String, dynamic> json) { return ZonesHttp3(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesHttp3Value.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesHttp3Value value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesHttp3 copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesHttp3Value? value, }) { return ZonesHttp3(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesHttp3 &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesHttp3(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
