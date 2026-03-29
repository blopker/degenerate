// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_uuid.dart';final class MconnAdminFlare {const MconnAdminFlare({required this.id, required this.triggeredAt, });

factory MconnAdminFlare.fromJson(Map<String, dynamic> json) { return MconnAdminFlare(
  id: MconnUuid.fromJson(json['id'] as String),
  triggeredAt: json['triggered_at'] as String,
); }

final MconnUuid id;

final String triggeredAt;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  'triggered_at': triggeredAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('triggered_at') && json['triggered_at'] is String; } 
MconnAdminFlare copyWith({MconnUuid? id, String? triggeredAt, }) { return MconnAdminFlare(
  id: id ?? this.id,
  triggeredAt: triggeredAt ?? this.triggeredAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminFlare &&
          id == other.id &&
          triggeredAt == other.triggeredAt; } 
@override int get hashCode { return Object.hash(id, triggeredAt); } 
@override String toString() { return 'MconnAdminFlare(id: $id, triggeredAt: $triggeredAt)'; } 
 }
