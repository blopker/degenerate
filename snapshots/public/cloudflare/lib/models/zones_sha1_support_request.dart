// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_sha1_support_value.dart';/// Allow SHA1 support.
@immutable final class ZonesSha1SupportRequest {const ZonesSha1SupportRequest({required this.id, required this.value, });

factory ZonesSha1SupportRequest.fromJson(Map<String, dynamic> json) { return ZonesSha1SupportRequest(
  id: json['id'],
  value: ZonesSha1SupportValue.fromJson(json['value'] as String),
); }

/// Zone setting identifier.
final dynamic id;

/// Value of the zone setting.
final ZonesSha1SupportValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSha1SupportRequest copyWith({dynamic Function()? id, ZonesSha1SupportValue? value, }) { return ZonesSha1SupportRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSha1SupportRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSha1SupportRequest(id: $id, value: $value)'; } 
 }
