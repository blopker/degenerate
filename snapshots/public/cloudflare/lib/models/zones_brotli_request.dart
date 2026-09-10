// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_brotli_value.dart';/// When the client requesting an asset supports the Brotli compression algorithm, Cloudflare will serve a Brotli compressed version of the asset.
@immutable final class ZonesBrotliRequest {const ZonesBrotliRequest({required this.id, required this.value, });

factory ZonesBrotliRequest.fromJson(Map<String, dynamic> json) {return ZonesBrotliRequest(
  id: json['id'],
  value: ZonesBrotliValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesBrotliValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesBrotliRequest copyWith({dynamic Function()? id, ZonesBrotliValue? value, }) {return ZonesBrotliRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesBrotliRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesBrotliRequest(id: $id, value: $value)';}
}
