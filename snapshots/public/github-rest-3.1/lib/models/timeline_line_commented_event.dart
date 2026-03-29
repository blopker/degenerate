// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pull_request_review_comment.dart';/// Timeline Line Commented Event
final class TimelineLineCommentedEvent {const TimelineLineCommentedEvent({this.event, this.nodeId, this.comments, });

factory TimelineLineCommentedEvent.fromJson(Map<String, dynamic> json) { return TimelineLineCommentedEvent(
  event: json['event'] as String?,
  nodeId: json['node_id'] as String?,
  comments: (json['comments'] as List<dynamic>?)?.map((e) => PullRequestReviewComment.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? event;

final String? nodeId;

final List<PullRequestReviewComment>? comments;

Map<String, dynamic> toJson() { return {
  'event': ?event,
  'node_id': ?nodeId,
  if (comments != null) 'comments': comments?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TimelineLineCommentedEvent copyWith({String Function()? event, String Function()? nodeId, List<PullRequestReviewComment> Function()? comments, }) { return TimelineLineCommentedEvent(
  event: event != null ? event() : this.event,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  comments: comments != null ? comments() : this.comments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineLineCommentedEvent &&
          event == other.event &&
          nodeId == other.nodeId &&
          listEquals(comments, other.comments); } 
@override int get hashCode { return Object.hash(event, nodeId, Object.hashAll(comments ?? const [])); } 
@override String toString() { return 'TimelineLineCommentedEvent(event: $event, nodeId: $nodeId, comments: $comments)'; } 
 }
