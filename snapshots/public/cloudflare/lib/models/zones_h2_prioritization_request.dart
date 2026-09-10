// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_h2_prioritization_value.dart';/// HTTP/2 Edge Prioritization optimises the delivery of resources served through HTTP/2 to improve page load performance. It also supports fine control of content delivery when used in conjunction with Workers.
@immutable final class ZonesH2PrioritizationRequest {const ZonesH2PrioritizationRequest({required this.id, required this.value, });

factory ZonesH2PrioritizationRequest.fromJson(Map<String, dynamic> json) {return ZonesH2PrioritizationRequest(
  id: json['id'],
  value: ZonesH2PrioritizationValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesH2PrioritizationValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesH2PrioritizationRequest copyWith({dynamic Function()? id, ZonesH2PrioritizationValue? value, }) {return ZonesH2PrioritizationRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesH2PrioritizationRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesH2PrioritizationRequest(id: $id, value: $value)';}
}
