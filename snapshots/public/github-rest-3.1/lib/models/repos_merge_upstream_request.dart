// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposMergeUpstreamRequest {const ReposMergeUpstreamRequest({required this.branch});

factory ReposMergeUpstreamRequest.fromJson(Map<String, dynamic> json) { return ReposMergeUpstreamRequest(
  branch: json['branch'] as String,
); }

/// The name of the branch which should be updated to match upstream.
final String branch;

Map<String, dynamic> toJson() { return {
  'branch': branch,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('branch') && json['branch'] is String; } 
ReposMergeUpstreamRequest copyWith({String? branch}) { return ReposMergeUpstreamRequest(
  branch: branch ?? this.branch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposMergeUpstreamRequest &&
          branch == other.branch; } 
@override int get hashCode { return branch.hashCode; } 
@override String toString() { return 'ReposMergeUpstreamRequest(branch: $branch)'; } 
 }
