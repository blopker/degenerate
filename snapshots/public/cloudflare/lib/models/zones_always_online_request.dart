// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_always_online_value.dart';/// When enabled, Cloudflare serves limited copies of web pages available from the [Internet Archive's Wayback Machine](https://archive.org/web/) if your server is offline. Refer to [Always Online](https://developers.cloudflare.com/cache/about/always-online) for more information.
@immutable final class ZonesAlwaysOnlineRequest {const ZonesAlwaysOnlineRequest({required this.id, required this.value, });

factory ZonesAlwaysOnlineRequest.fromJson(Map<String, dynamic> json) { return ZonesAlwaysOnlineRequest(
  id: json['id'],
  value: ZonesAlwaysOnlineValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesAlwaysOnlineValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesAlwaysOnlineRequest copyWith({dynamic Function()? id, ZonesAlwaysOnlineValue? value, }) { return ZonesAlwaysOnlineRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesAlwaysOnlineRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesAlwaysOnlineRequest(id: $id, value: $value)'; } 
 }
