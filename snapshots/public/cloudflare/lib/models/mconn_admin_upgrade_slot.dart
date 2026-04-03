// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_uuid.dart';@immutable final class MconnAdminUpgradeSlot {const MconnAdminUpgradeSlot({required this.id, this.connectorId, this.startedAt, });

factory MconnAdminUpgradeSlot.fromJson(Map<String, dynamic> json) { return MconnAdminUpgradeSlot(
  connectorId: json['connector_id'] != null ? MconnUuid.fromJson(json['connector_id'] as String) : null,
  id: (json['id'] as num).toDouble(),
  startedAt: json['started_at'] as String?,
); }

final MconnUuid? connectorId;

final double id;

final String? startedAt;

Map<String, dynamic> toJson() { return {
  if (connectorId != null) 'connector_id': connectorId?.toJson(),
  'id': id,
  'started_at': ?startedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
MconnAdminUpgradeSlot copyWith({MconnUuid Function()? connectorId, double? id, String Function()? startedAt, }) { return MconnAdminUpgradeSlot(
  connectorId: connectorId != null ? connectorId() : this.connectorId,
  id: id ?? this.id,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminUpgradeSlot &&
          connectorId == other.connectorId &&
          id == other.id &&
          startedAt == other.startedAt; } 
@override int get hashCode { return Object.hash(connectorId, id, startedAt); } 
@override String toString() { return 'MconnAdminUpgradeSlot(connectorId: $connectorId, id: $id, startedAt: $startedAt)'; } 
 }
