// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_opportunistic_onion_value.dart';/// Add an Alt-Svc header to all legitimate requests from Tor, allowing the connection to use our onion services instead of exit nodes.
@immutable final class ZonesOpportunisticOnionRequest {const ZonesOpportunisticOnionRequest({required this.id, required this.value, });

factory ZonesOpportunisticOnionRequest.fromJson(Map<String, dynamic> json) { return ZonesOpportunisticOnionRequest(
  id: json['id'],
  value: ZonesOpportunisticOnionValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final ZonesOpportunisticOnionValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesOpportunisticOnionRequest copyWith({dynamic Function()? id, ZonesOpportunisticOnionValue? value, }) { return ZonesOpportunisticOnionRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesOpportunisticOnionRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesOpportunisticOnionRequest(id: $id, value: $value)'; } 
 }
