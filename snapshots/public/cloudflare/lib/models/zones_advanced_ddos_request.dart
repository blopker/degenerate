// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_advanced_ddos_value.dart';/// Advanced protection from Distributed Denial of Service (DDoS) attacks on your website. This is an uneditable value that is 'on' in the case of Business and Enterprise zones.
@immutable final class ZonesAdvancedDdosRequest {const ZonesAdvancedDdosRequest({required this.id, required this.value, });

factory ZonesAdvancedDdosRequest.fromJson(Map<String, dynamic> json) { return ZonesAdvancedDdosRequest(
  id: json['id'],
  value: ZonesAdvancedDdosValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: Defaults to on for Business+ plans
final ZonesAdvancedDdosValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesAdvancedDdosRequest copyWith({dynamic Function()? id, ZonesAdvancedDdosValue? value, }) { return ZonesAdvancedDdosRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesAdvancedDdosRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesAdvancedDdosRequest(id: $id, value: $value)'; } 
 }
