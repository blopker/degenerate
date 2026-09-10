// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_hotlink_protection_value.dart';/// When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026).
@immutable final class ZonesHotlinkProtectionRequest {const ZonesHotlinkProtectionRequest({required this.id, required this.value, });

factory ZonesHotlinkProtectionRequest.fromJson(Map<String, dynamic> json) { return ZonesHotlinkProtectionRequest(
  id: json['id'],
  value: ZonesHotlinkProtectionValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesHotlinkProtectionValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesHotlinkProtectionRequest copyWith({dynamic Function()? id, ZonesHotlinkProtectionValue? value, }) { return ZonesHotlinkProtectionRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesHotlinkProtectionRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesHotlinkProtectionRequest(id: $id, value: $value)'; } 
 }
