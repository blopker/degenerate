// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_uuid.dart';final class MconnAdminSite {const MconnAdminSite({required this.id});

factory MconnAdminSite.fromJson(Map<String, dynamic> json) { return MconnAdminSite(
  id: MconnUuid.fromJson(json['id'] as String),
); }

final MconnUuid id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
MconnAdminSite copyWith({MconnUuid? id}) { return MconnAdminSite(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminSite &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'MconnAdminSite(id: $id)'; } 
 }
