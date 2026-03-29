// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'commit_comment.dart';/// Timeline Commit Commented Event
final class TimelineCommitCommentedEvent {const TimelineCommitCommentedEvent({this.event, this.nodeId, this.commitId, this.comments, });

factory TimelineCommitCommentedEvent.fromJson(Map<String, dynamic> json) { return TimelineCommitCommentedEvent(
  event: json['event'] as String?,
  nodeId: json['node_id'] as String?,
  commitId: json['commit_id'] as String?,
  comments: (json['comments'] as List<dynamic>?)?.map((e) => CommitComment.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? event;

final String? nodeId;

final String? commitId;

final List<CommitComment>? comments;

Map<String, dynamic> toJson() { return {
  'event': ?event,
  'node_id': ?nodeId,
  'commit_id': ?commitId,
  if (comments != null) 'comments': comments?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TimelineCommitCommentedEvent copyWith({String Function()? event, String Function()? nodeId, String Function()? commitId, List<CommitComment> Function()? comments, }) { return TimelineCommitCommentedEvent(
  event: event != null ? event() : this.event,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  commitId: commitId != null ? commitId() : this.commitId,
  comments: comments != null ? comments() : this.comments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineCommitCommentedEvent &&
          event == other.event &&
          nodeId == other.nodeId &&
          commitId == other.commitId &&
          listEquals(comments, other.comments); } 
@override int get hashCode { return Object.hash(event, nodeId, commitId, Object.hashAll(comments ?? const [])); } 
@override String toString() { return 'TimelineCommitCommentedEvent(event: $event, nodeId: $nodeId, commitId: $commitId, comments: $comments)'; } 
 }
