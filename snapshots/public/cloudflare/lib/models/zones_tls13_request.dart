// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_tls13_value.dart';/// Enables Crypto TLS 1.3 feature for a zone.
@immutable final class ZonesTls13Request {const ZonesTls13Request({required this.id, required this.value, });

factory ZonesTls13Request.fromJson(Map<String, dynamic> json) {return ZonesTls13Request(
  id: json['id'],
  value: ZonesTls13Value.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final ZonesTls13Value value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesTls13Request copyWith({dynamic Function()? id, ZonesTls13Value? value, }) {return ZonesTls13Request(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesTls13Request &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesTls13Request(id: $id, value: $value)';}
}
