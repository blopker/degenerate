// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_http3_value.dart';/// HTTP3 enabled for this zone.
@immutable final class ZonesHttp3Request {const ZonesHttp3Request({required this.id, required this.value, });

factory ZonesHttp3Request.fromJson(Map<String, dynamic> json) {return ZonesHttp3Request(
  id: json['id'],
  value: ZonesHttp3Value.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the HTTP3 setting.
final ZonesHttp3Value value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesHttp3Request copyWith({dynamic Function()? id, ZonesHttp3Value? value, }) {return ZonesHttp3Request(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesHttp3Request &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesHttp3Request(id: $id, value: $value)';}
}
