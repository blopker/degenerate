// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_response_buffering_value.dart';/// Enables or disables buffering of responses from the proxied server. Cloudflare may buffer the whole payload to deliver it at once to the client versus allowing it to be delivered in chunks. By default, the proxied server streams directly and is not buffered by Cloudflare. This is limited to Enterprise Zones.
@immutable final class ZonesSchemasResponseBufferingRequest {const ZonesSchemasResponseBufferingRequest({required this.id, required this.value, });

factory ZonesSchemasResponseBufferingRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasResponseBufferingRequest(
  id: json['id'],
  value: ZonesResponseBufferingValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesResponseBufferingValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasResponseBufferingRequest copyWith({dynamic Function()? id, ZonesResponseBufferingValue? value, }) {return ZonesSchemasResponseBufferingRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasResponseBufferingRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasResponseBufferingRequest(id: $id, value: $value)';}
}
