// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_max_upload_value.dart';/// Maximum size of an allowable upload.
@immutable final class ZonesMaxUploadRequest {const ZonesMaxUploadRequest({required this.id, required this.value, });

factory ZonesMaxUploadRequest.fromJson(Map<String, dynamic> json) { return ZonesMaxUploadRequest(
  id: json['id'],
  value: ZonesMaxUploadValue.fromJson((json['value'] as num).toInt()),
); }

/// identifier of the zone setting.
final dynamic id;

/// Value of the zone setting.
/// Notes: The size depends on the plan level of the zone. (Enterprise = 500, Business = 200, Pro = 100, Free = 100)
final ZonesMaxUploadValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesMaxUploadRequest copyWith({dynamic Function()? id, ZonesMaxUploadValue? value, }) { return ZonesMaxUploadRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesMaxUploadRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesMaxUploadRequest(id: $id, value: $value)'; } 
 }
