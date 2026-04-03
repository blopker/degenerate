// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pull_request_minimal.dart';import 'pull_request_review_event_review.dart';@immutable final class PullRequestReviewEvent {const PullRequestReviewEvent({required this.action, required this.review, required this.pullRequest, });

factory PullRequestReviewEvent.fromJson(Map<String, dynamic> json) { return PullRequestReviewEvent(
  action: json['action'] as String,
  review: PullRequestReviewEventReview.fromJson(json['review'] as Map<String, dynamic>),
  pullRequest: PullRequestMinimal.fromJson(json['pull_request'] as Map<String, dynamic>),
); }

final String action;

final PullRequestReviewEventReview review;

final PullRequestMinimal pullRequest;

Map<String, dynamic> toJson() { return {
  'action': action,
  'review': review.toJson(),
  'pull_request': pullRequest.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String &&
      json.containsKey('review') &&
      json.containsKey('pull_request'); } 
PullRequestReviewEvent copyWith({String? action, PullRequestReviewEventReview? review, PullRequestMinimal? pullRequest, }) { return PullRequestReviewEvent(
  action: action ?? this.action,
  review: review ?? this.review,
  pullRequest: pullRequest ?? this.pullRequest,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewEvent &&
          action == other.action &&
          review == other.review &&
          pullRequest == other.pullRequest; } 
@override int get hashCode { return Object.hash(action, review, pullRequest); } 
@override String toString() { return 'PullRequestReviewEvent(action: $action, review: $review, pullRequest: $pullRequest)'; } 
 }
