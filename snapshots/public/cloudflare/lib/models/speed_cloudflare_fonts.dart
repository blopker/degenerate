// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speed_cloudflare_fonts_value.dart';/// ID of the zone setting.
@immutable final class SpeedCloudflareFontsId {const SpeedCloudflareFontsId._(this.value);

factory SpeedCloudflareFontsId.fromJson(String json) { return switch (json) {
  'fonts' => fonts,
  _ => SpeedCloudflareFontsId._(json),
}; }

static const SpeedCloudflareFontsId fonts = SpeedCloudflareFontsId._('fonts');

static const List<SpeedCloudflareFontsId> values = [fonts];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpeedCloudflareFontsId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpeedCloudflareFontsId($value)'; } 
 }
/// Enhance your website's font delivery with Cloudflare Fonts. Deliver Google Hosted fonts from your own domain,
/// boost performance, and enhance user privacy. Refer to the Cloudflare Fonts documentation for more information.
/// 
@immutable final class SpeedCloudflareFonts {const SpeedCloudflareFonts({this.editable = true, this.id, this.modifiedOn = const Omittable.absent(), this.value, });

factory SpeedCloudflareFonts.fromJson(Map<String, dynamic> json) { return SpeedCloudflareFonts(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'] != null ? SpeedCloudflareFontsId.fromJson(json['id'] as String) : null,
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: json['value'] != null ? SpeedCloudflareFontsValue.fromJson(json['value'] as String) : null,
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final SpeedCloudflareFontsId? id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final SpeedCloudflareFontsValue? value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  if (id != null) 'id': id?.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'modified_on', 'value'}.contains(key)); } 
SpeedCloudflareFonts copyWith({bool Function()? editable, SpeedCloudflareFontsId? Function()? id, Omittable<DateTime?>? modifiedOn, SpeedCloudflareFontsValue? Function()? value, }) { return SpeedCloudflareFonts(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpeedCloudflareFonts &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'SpeedCloudflareFonts(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
