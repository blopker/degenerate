// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
@immutable final class ZonesCiphersRequest {const ZonesCiphersRequest({required this.id, required this.value, });

factory ZonesCiphersRequest.fromJson(Map<String, dynamic> json) {return ZonesCiphersRequest(
  id: json['id'],
  value: (json['value'] as List<dynamic>).map((e) => e as String).toList(),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final List<String> value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesCiphersRequest copyWith({dynamic Function()? id, List<String>? value, }) {return ZonesCiphersRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesCiphersRequest &&
          id == other.id &&
          listEquals(value, other.value);}
@override int get hashCode {return Object.hash(id, Object.hashAll(value));}
@override String toString() {return 'ZonesCiphersRequest(id: $id, value: $value)';}
}
