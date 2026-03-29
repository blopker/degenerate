// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_monitor_group_id.dart';import 'load_balancing_monitor_group_member.dart';final class LoadBalancingMonitorGroup {const LoadBalancingMonitorGroup({this.createdAt, required this.description, required this.id, required this.members, this.updatedAt, });

factory LoadBalancingMonitorGroup.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorGroup(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  description: json['description'] as String,
  id: LoadBalancingMonitorGroupId.fromJson(json['id'] as String),
  members: (json['members'] as List<dynamic>).map((e) => LoadBalancingMonitorGroupMember.fromJson(e as Map<String, dynamic>)).toList(),
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

/// The timestamp of when the monitor group was created
final DateTime? createdAt;

/// A short description of the monitor group
final String description;

final LoadBalancingMonitorGroupId id;

/// List of monitors in this group
final List<LoadBalancingMonitorGroupMember> members;

/// The timestamp of when the monitor group was last updated
final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'description': description,
  'id': id.toJson(),
  'members': members.map((e) => e.toJson()).toList(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') &&
      json.containsKey('members'); } 
LoadBalancingMonitorGroup copyWith({DateTime Function()? createdAt, String? description, LoadBalancingMonitorGroupId? id, List<LoadBalancingMonitorGroupMember>? members, DateTime Function()? updatedAt, }) { return LoadBalancingMonitorGroup(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description ?? this.description,
  id: id ?? this.id,
  members: members ?? this.members,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorGroup &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          listEquals(members, other.members) &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, id, Object.hashAll(members), updatedAt); } 
@override String toString() { return 'LoadBalancingMonitorGroup(createdAt: $createdAt, description: $description, id: $id, members: $members, updatedAt: $updatedAt)'; } 
 }
