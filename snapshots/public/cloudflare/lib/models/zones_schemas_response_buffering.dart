// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_response_buffering_value.dart';/// Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.
@immutable final class ZonesSchemasResponseBuffering {const ZonesSchemasResponseBuffering({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesSchemasResponseBuffering.fromJson(Map<String, dynamic> json) { return ZonesSchemasResponseBuffering(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesResponseBufferingValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

/// Value of the zone setting.
final ZonesResponseBufferingValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasResponseBuffering copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesResponseBufferingValue? value, }) { return ZonesSchemasResponseBuffering(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasResponseBuffering &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasResponseBuffering(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
