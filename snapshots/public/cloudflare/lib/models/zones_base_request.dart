// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesBaseRequest {const ZonesBaseRequest({required this.id, required this.value, });

factory ZonesBaseRequest.fromJson(Map<String, dynamic> json) { return ZonesBaseRequest(
  id: json['id'] as String,
  value: json['value'],
); }

/// Identifier of the zone setting.
final String id;

/// Current value of the zone setting.
final dynamic value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('value'); } 
ZonesBaseRequest copyWith({String? id, dynamic Function()? value, }) { return ZonesBaseRequest(
  id: id ?? this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesBaseRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesBaseRequest(id: $id, value: $value)'; } 
 }
