// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Comma-separated list of allowed origins.
/// Refer to the [Image Transformations](https://developers.cloudflare.com/images/transform-images/sources/) and [Video Transformations](https://developers.cloudflare.com/stream/transform-videos/#getting-started) documentation for more information.
extension type const ZonesTransformationsAllowedOriginsValue(String value) {
factory ZonesTransformationsAllowedOriginsValue.fromJson(String json) => ZonesTransformationsAllowedOriginsValue(json);

String toJson() => value;

}
/// Media Transformations Allowed Origins restricts transformations for images and video served through Cloudflare's network. Refer to the [Image Transformations](https://developers.cloudflare.com/images/) and [Video Transformations](https://developers.cloudflare.com/stream/transform-videos/#getting-started) documentation for more information.
@immutable final class ZonesTransformationsAllowedOrigins {const ZonesTransformationsAllowedOrigins({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesTransformationsAllowedOrigins.fromJson(Map<String, dynamic> json) { return ZonesTransformationsAllowedOrigins(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesTransformationsAllowedOriginsValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting. Shared between Image Transformations and Video Transformations.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesTransformationsAllowedOriginsValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesTransformationsAllowedOrigins copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesTransformationsAllowedOriginsValue? value, }) { return ZonesTransformationsAllowedOrigins(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesTransformationsAllowedOrigins &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesTransformationsAllowedOrigins(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
