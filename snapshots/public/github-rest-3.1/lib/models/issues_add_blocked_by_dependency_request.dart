// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesAddBlockedByDependencyRequest {const IssuesAddBlockedByDependencyRequest({required this.issueId});

factory IssuesAddBlockedByDependencyRequest.fromJson(Map<String, dynamic> json) { return IssuesAddBlockedByDependencyRequest(
  issueId: (json['issue_id'] as num).toInt(),
); }

/// The id of the issue that blocks the current issue
final int issueId;

Map<String, dynamic> toJson() { return {
  'issue_id': issueId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('issue_id') && json['issue_id'] is num; } 
IssuesAddBlockedByDependencyRequest copyWith({int? issueId}) { return IssuesAddBlockedByDependencyRequest(
  issueId: issueId ?? this.issueId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesAddBlockedByDependencyRequest &&
          issueId == other.issueId; } 
@override int get hashCode { return issueId.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyRequest(issueId: $issueId)'; } 
 }
