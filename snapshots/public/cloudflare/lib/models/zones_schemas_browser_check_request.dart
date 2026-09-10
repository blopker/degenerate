// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_browser_check_value.dart';/// Browser Integrity Check is similar to Bad Behavior and looks for common HTTP headers abused most commonly by spammers and denies access to your page.  It will also challenge visitors that do not have a user agent or a non standard user agent (also commonly used by abuse bots, crawlers or visitors). (https://support.cloudflare.com/hc/en-us/articles/200170086).
@immutable final class ZonesSchemasBrowserCheckRequest {const ZonesSchemasBrowserCheckRequest({required this.id, required this.value, });

factory ZonesSchemasBrowserCheckRequest.fromJson(Map<String, dynamic> json) { return ZonesSchemasBrowserCheckRequest(
  id: json['id'],
  value: ZonesBrowserCheckValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesBrowserCheckValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasBrowserCheckRequest copyWith({dynamic Function()? id, ZonesBrowserCheckValue? value, }) { return ZonesSchemasBrowserCheckRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasBrowserCheckRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSchemasBrowserCheckRequest(id: $id, value: $value)'; } 
 }
