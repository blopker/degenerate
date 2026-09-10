// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_orange_to_orange_value.dart';/// Orange to Orange (O2O) allows zones on Cloudflare to CNAME to other zones also on Cloudflare.
@immutable final class ZonesOrangeToOrangeRequest {const ZonesOrangeToOrangeRequest({required this.id, required this.value, });

factory ZonesOrangeToOrangeRequest.fromJson(Map<String, dynamic> json) {return ZonesOrangeToOrangeRequest(
  id: json['id'],
  value: ZonesOrangeToOrangeValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesOrangeToOrangeValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesOrangeToOrangeRequest copyWith({dynamic Function()? id, ZonesOrangeToOrangeValue? value, }) {return ZonesOrangeToOrangeRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesOrangeToOrangeRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesOrangeToOrangeRequest(id: $id, value: $value)';}
}
