// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_nel_value.dart';/// Enable Network Error Logging reporting on your zone. (Beta)
@immutable final class ZonesNelRequest {const ZonesNelRequest({required this.id, required this.value, });

factory ZonesNelRequest.fromJson(Map<String, dynamic> json) {return ZonesNelRequest(
  id: json['id'],
  value: ZonesNelValue.fromJson(json['value'] as Map<String, dynamic>),
);}

/// Zone setting identifier.
final dynamic id;

final ZonesNelValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesNelRequest copyWith({dynamic Function()? id, ZonesNelValue? value, }) {return ZonesNelRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesNelRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesNelRequest(id: $id, value: $value)';}
}
