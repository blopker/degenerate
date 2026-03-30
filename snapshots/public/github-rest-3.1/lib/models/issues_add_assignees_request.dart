// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class IssuesAddAssigneesRequest {const IssuesAddAssigneesRequest({this.assignees});

factory IssuesAddAssigneesRequest.fromJson(Map<String, dynamic> json) { return IssuesAddAssigneesRequest(
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Usernames of people to assign this issue to. _NOTE: Only users with push access can add assignees to an issue. Assignees are silently ignored otherwise._
final List<String>? assignees;

Map<String, dynamic> toJson() { return {
  'assignees': ?assignees,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'assignees'}.contains(key)); } 
IssuesAddAssigneesRequest copyWith({List<String> Function()? assignees}) { return IssuesAddAssigneesRequest(
  assignees: assignees != null ? assignees() : this.assignees,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesAddAssigneesRequest &&
          listEquals(assignees, other.assignees); } 
@override int get hashCode { return Object.hashAll(assignees ?? const []).hashCode; } 
@override String toString() { return 'IssuesAddAssigneesRequest(assignees: $assignees)'; } 
 }
