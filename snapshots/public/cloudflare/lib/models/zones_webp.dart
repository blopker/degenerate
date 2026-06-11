// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_webp_value.dart';/// When the client requesting the image supports the WebP image codec, and WebP offers a performance advantage over the original image format, Cloudflare will serve a WebP version of the original image.
@immutable final class ZonesWebp {const ZonesWebp({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesWebp.fromJson(Map<String, dynamic> json) { return ZonesWebp(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesWebpValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesWebpValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesWebp copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesWebpValue? value, }) { return ZonesWebp(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesWebp &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesWebp(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
