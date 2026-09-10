// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_browser_cache_ttl_value.dart';/// Browser Cache TTL (in seconds) specifies how long Cloudflare-cached resources will remain on your visitors' computers. Cloudflare will honor any larger times specified by your server. (https://support.cloudflare.com/hc/en-us/articles/200168276).
@immutable final class ZonesSchemasBrowserCacheTtlRequest {const ZonesSchemasBrowserCacheTtlRequest({required this.id, required this.value, });

factory ZonesSchemasBrowserCacheTtlRequest.fromJson(Map<String, dynamic> json) { return ZonesSchemasBrowserCacheTtlRequest(
  id: json['id'],
  value: ZonesBrowserCacheTtlValue.fromJson(json['value'] as num),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting in seconds.
/// Minimum values by plan:
/// - Free: 1 second
/// - Pro: 1 second
/// - Business: 1 second
/// - Enterprise: 1 second
/// Setting a TTL of 0 is equivalent to selecting `Respect Existing Headers` and is allowed for all plans.
final ZonesBrowserCacheTtlValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasBrowserCacheTtlRequest copyWith({dynamic Function()? id, ZonesBrowserCacheTtlValue? value, }) { return ZonesSchemasBrowserCacheTtlRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasBrowserCacheTtlRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSchemasBrowserCacheTtlRequest(id: $id, value: $value)'; } 
 }
