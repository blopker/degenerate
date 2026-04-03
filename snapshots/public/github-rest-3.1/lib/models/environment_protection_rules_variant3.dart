// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnvironmentProtectionRulesVariant3 {const EnvironmentProtectionRulesVariant3({required this.id, required this.nodeId, required this.type, });

factory EnvironmentProtectionRulesVariant3.fromJson(Map<String, dynamic> json) { return EnvironmentProtectionRulesVariant3(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  type: json['type'] as String,
); }

final int id;

final String nodeId;

final String type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('type') && json['type'] is String; } 
EnvironmentProtectionRulesVariant3 copyWith({int? id, String? nodeId, String? type, }) { return EnvironmentProtectionRulesVariant3(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnvironmentProtectionRulesVariant3 &&
          id == other.id &&
          nodeId == other.nodeId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, nodeId, type); } 
@override String toString() { return 'EnvironmentProtectionRulesVariant3(id: $id, nodeId: $nodeId, type: $type)'; } 
 }
