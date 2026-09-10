// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cname_flattening_value.dart';/// Whether or not cname flattening is on.
@immutable final class ZonesCnameFlatteningRequest {const ZonesCnameFlatteningRequest({required this.id, required this.value, });

factory ZonesCnameFlatteningRequest.fromJson(Map<String, dynamic> json) { return ZonesCnameFlatteningRequest(
  id: json['id'],
  value: ZonesCnameFlatteningValue.fromJson(json['value'] as String),
); }

/// How to flatten the cname destination.
final dynamic id;

/// Value of the cname flattening setting.
final ZonesCnameFlatteningValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesCnameFlatteningRequest copyWith({dynamic Function()? id, ZonesCnameFlatteningValue? value, }) { return ZonesCnameFlatteningRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCnameFlatteningRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCnameFlatteningRequest(id: $id, value: $value)'; } 
 }
