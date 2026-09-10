// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_monitor_group_id.dart';import 'load_balancing_monitor_group_member_request.dart';@immutable final class LoadBalancingMonitorGroupRequest {const LoadBalancingMonitorGroupRequest({required this.description, required this.id, required this.members, });

factory LoadBalancingMonitorGroupRequest.fromJson(Map<String, dynamic> json) {return LoadBalancingMonitorGroupRequest(
  description: json['description'] as String,
  id: LoadBalancingMonitorGroupId.fromJson(json['id'] as String),
  members: (json['members'] as List<dynamic>).map((e) => LoadBalancingMonitorGroupMemberRequest.fromJson(e as Map<String, dynamic>)).toList(),
);}

/// A short description of the monitor group
final String description;

/// The ID of the Monitor Group to use for checking the health of origins within this pool.
final LoadBalancingMonitorGroupId id;

/// List of monitors in this group
final List<LoadBalancingMonitorGroupMemberRequest> members;

Map<String, dynamic> toJson() {return {
  'description': description,
  'id': id.toJson(),
  'members': members.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') &&
      json.containsKey('members');}
LoadBalancingMonitorGroupRequest copyWith({String? description, LoadBalancingMonitorGroupId? id, List<LoadBalancingMonitorGroupMemberRequest>? members, }) {return LoadBalancingMonitorGroupRequest(
  description: description ?? this.description,
  id: id ?? this.id,
  members: members ?? this.members,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is LoadBalancingMonitorGroupRequest &&
          description == other.description &&
          id == other.id &&
          listEquals(members, other.members);}
@override int get hashCode {return Object.hash(description, id, Object.hashAll(members));}
@override String toString() {return 'LoadBalancingMonitorGroupRequest(description: $description, id: $id, members: $members)';}
}
