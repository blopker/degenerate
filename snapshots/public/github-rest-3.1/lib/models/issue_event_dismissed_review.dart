// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssueEventDismissedReview {const IssueEventDismissedReview({required this.state, required this.reviewId, required this.dismissalMessage, this.dismissalCommitId = const Omittable.absent(), });

factory IssueEventDismissedReview.fromJson(Map<String, dynamic> json) { return IssueEventDismissedReview(
  state: json['state'] as String,
  reviewId: (json['review_id'] as num).toInt(),
  dismissalMessage: json['dismissal_message'] as String?,
  dismissalCommitId: json.containsKey('dismissal_commit_id') ? Omittable(json['dismissal_commit_id'] as String?) : const Omittable.absent(),
); }

final String state;

final int reviewId;

final String? dismissalMessage;

final Omittable<String?> dismissalCommitId;

Map<String, dynamic> toJson() { return {
  'state': state,
  'review_id': reviewId,
  'dismissal_message': dismissalMessage,
  if (dismissalCommitId.isPresent) 'dismissal_commit_id': dismissalCommitId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('state') && json['state'] is String &&
      json.containsKey('review_id') && json['review_id'] is num &&
      json.containsKey('dismissal_message') && json['dismissal_message'] is String; } 
IssueEventDismissedReview copyWith({String? state, int? reviewId, String? Function()? dismissalMessage, Omittable<String?>? dismissalCommitId, }) { return IssueEventDismissedReview(
  state: state ?? this.state,
  reviewId: reviewId ?? this.reviewId,
  dismissalMessage: dismissalMessage != null ? dismissalMessage() : this.dismissalMessage,
  dismissalCommitId: dismissalCommitId ?? this.dismissalCommitId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssueEventDismissedReview &&
          state == other.state &&
          reviewId == other.reviewId &&
          dismissalMessage == other.dismissalMessage &&
          dismissalCommitId == other.dismissalCommitId; } 
@override int get hashCode { return Object.hash(state, reviewId, dismissalMessage, dismissalCommitId); } 
@override String toString() { return 'IssueEventDismissedReview(state: $state, reviewId: $reviewId, dismissalMessage: $dismissalMessage, dismissalCommitId: $dismissalCommitId)'; } 
 }
