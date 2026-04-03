// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Change the origin address to the value specified in this setting.
/// 
@immutable final class ZonesResolveOverrideId {const ZonesResolveOverrideId._(this.value);

factory ZonesResolveOverrideId.fromJson(String json) { return switch (json) {
  'resolve_override' => resolveOverride,
  _ => ZonesResolveOverrideId._(json),
}; }

static const ZonesResolveOverrideId resolveOverride = ZonesResolveOverrideId._('resolve_override');

static const List<ZonesResolveOverrideId> values = [resolveOverride];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesResolveOverrideId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesResolveOverrideId($value)'; } 
 }
@immutable final class ZonesResolveOverride {const ZonesResolveOverride({this.id, this.value, });

factory ZonesResolveOverride.fromJson(Map<String, dynamic> json) { return ZonesResolveOverride(
  id: json['id'] != null ? ZonesResolveOverrideId.fromJson(json['id'] as String) : null,
  value: json['value'] as String?,
); }

/// Change the origin address to the value specified in this setting.
/// 
final ZonesResolveOverrideId? id;

/// The origin address you want to override with.
/// 
final String? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesResolveOverride copyWith({ZonesResolveOverrideId Function()? id, String Function()? value, }) { return ZonesResolveOverride(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesResolveOverride &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesResolveOverride(id: $id, value: $value)'; } 
 }
