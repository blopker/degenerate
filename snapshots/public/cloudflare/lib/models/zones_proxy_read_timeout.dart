// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
/// Notes: Value must be between 1 and 6000
extension type const ZonesProxyReadTimeoutValue(double value) {
factory ZonesProxyReadTimeoutValue.fromJson(num json) => ZonesProxyReadTimeoutValue(json.toDouble());

num toJson() => value;

}
/// Maximum time between two read operations from origin.
@immutable final class ZonesProxyReadTimeout {const ZonesProxyReadTimeout({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesProxyReadTimeout.fromJson(Map<String, dynamic> json) { return ZonesProxyReadTimeout(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesProxyReadTimeoutValue.fromJson(json['value'] as num),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesProxyReadTimeoutValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesProxyReadTimeout copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesProxyReadTimeoutValue? value, }) { return ZonesProxyReadTimeout(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesProxyReadTimeout &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesProxyReadTimeout(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
