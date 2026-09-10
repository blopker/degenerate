// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_websockets_value.dart';/// WebSockets are open connections sustained between the client and the origin server. Inside a WebSockets connection, the client and the origin can pass data back and forth without having to reestablish sessions. This makes exchanging data within a WebSockets connection fast. WebSockets are often used for real-time applications such as live chat and gaming. For more information refer to [Can I use Cloudflare with Websockets](https://support.cloudflare.com/hc/en-us/articles/200169466-Can-I-use-Cloudflare-with-WebSockets-).
@immutable final class ZonesWebsocketsRequest {const ZonesWebsocketsRequest({required this.id, required this.value, });

factory ZonesWebsocketsRequest.fromJson(Map<String, dynamic> json) {return ZonesWebsocketsRequest(
  id: json['id'],
  value: ZonesWebsocketsValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesWebsocketsValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesWebsocketsRequest copyWith({dynamic Function()? id, ZonesWebsocketsValue? value, }) {return ZonesWebsocketsRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesWebsocketsRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesWebsocketsRequest(id: $id, value: $value)';}
}
