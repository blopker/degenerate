// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_brotli_value.dart';/// When the client requesting an asset supports the Brotli compression algorithm, Cloudflare will serve a Brotli compressed version of the asset.
@immutable final class ZonesBrotli {const ZonesBrotli({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesBrotli.fromJson(Map<String, dynamic> json) { return ZonesBrotli(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesBrotliValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesBrotliValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesBrotli copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesBrotliValue? value, }) { return ZonesBrotli(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesBrotli &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesBrotli(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
