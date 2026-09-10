// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Determines whether or not the china network is enabled.
/// 
@immutable final class ZonesChinaNetworkEnabledRequest {const ZonesChinaNetworkEnabledRequest({required this.id, required this.value, });

factory ZonesChinaNetworkEnabledRequest.fromJson(Map<String, dynamic> json) { return ZonesChinaNetworkEnabledRequest(
  id: json['id'],
  value: json['value'],
); }

/// ID of the zone setting.
final dynamic id;

/// Current value of the zone setting.
final dynamic value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesChinaNetworkEnabledRequest copyWith({dynamic Function()? id, dynamic Function()? value, }) { return ZonesChinaNetworkEnabledRequest(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesChinaNetworkEnabledRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesChinaNetworkEnabledRequest(id: $id, value: $value)'; } 
 }
