// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_always_online_value.dart';/// When enabled, Cloudflare serves limited copies of web pages available from the [Internet Archive's Wayback Machine](https://archive.org/web/) if your server is offline. Refer to [Always Online](https://developers.cloudflare.com/cache/about/always-online) for more information.
@immutable final class ZonesAlwaysOnline {const ZonesAlwaysOnline({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesAlwaysOnline.fromJson(Map<String, dynamic> json) { return ZonesAlwaysOnline(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesAlwaysOnlineValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesAlwaysOnlineValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesAlwaysOnline copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesAlwaysOnlineValue? value, }) { return ZonesAlwaysOnline(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesAlwaysOnline &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesAlwaysOnline(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
