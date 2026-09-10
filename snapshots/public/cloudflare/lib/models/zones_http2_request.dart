// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_http2_value.dart';/// HTTP2 enabled for this zone.
@immutable final class ZonesHttp2Request {const ZonesHttp2Request({required this.id, required this.value, });

factory ZonesHttp2Request.fromJson(Map<String, dynamic> json) {return ZonesHttp2Request(
  id: json['id'],
  value: ZonesHttp2Value.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the HTTP2 setting.
final ZonesHttp2Value value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesHttp2Request copyWith({dynamic Function()? id, ZonesHttp2Value? value, }) {return ZonesHttp2Request(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesHttp2Request &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesHttp2Request(id: $id, value: $value)';}
}
