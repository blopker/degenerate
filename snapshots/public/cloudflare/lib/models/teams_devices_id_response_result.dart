// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_uuid.dart';final class TeamsDevicesIdResponseResult {const TeamsDevicesIdResponseResult({this.id});

factory TeamsDevicesIdResponseResult.fromJson(Map<String, dynamic> json) { return TeamsDevicesIdResponseResult(
  id: json['id'] != null ? TeamsDevicesUuid.fromJson(json['id'] as String) : null,
); }

final TeamsDevicesUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
TeamsDevicesIdResponseResult copyWith({TeamsDevicesUuid Function()? id}) { return TeamsDevicesIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TeamsDevicesIdResponseResult(id: $id)'; } 
 }
