// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_uuid.dart';final class AccessIdResponseResult {const AccessIdResponseResult({this.id});

factory AccessIdResponseResult.fromJson(Map<String, dynamic> json) { return AccessIdResponseResult(
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
); }

final AccessUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AccessIdResponseResult copyWith({AccessUuid Function()? id}) { return AccessIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessIdResponseResult(id: $id)'; } 
 }
