// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleDetailedVariant22Parameters {const RepositoryRuleDetailedVariant22Parameters({this.reviewDraftPullRequests, this.reviewOnPush, });

factory RepositoryRuleDetailedVariant22Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant22Parameters(
  reviewDraftPullRequests: json['review_draft_pull_requests'] as bool?,
  reviewOnPush: json['review_on_push'] as bool?,
); }

/// Copilot automatically reviews draft pull requests before they are marked as ready for review.
final bool? reviewDraftPullRequests;

/// Copilot automatically reviews each new push to the pull request.
final bool? reviewOnPush;

Map<String, dynamic> toJson() { return {
  'review_draft_pull_requests': ?reviewDraftPullRequests,
  'review_on_push': ?reviewOnPush,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'review_draft_pull_requests', 'review_on_push'}.contains(key)); } 
RepositoryRuleDetailedVariant22Parameters copyWith({bool Function()? reviewDraftPullRequests, bool Function()? reviewOnPush, }) { return RepositoryRuleDetailedVariant22Parameters(
  reviewDraftPullRequests: reviewDraftPullRequests != null ? reviewDraftPullRequests() : this.reviewDraftPullRequests,
  reviewOnPush: reviewOnPush != null ? reviewOnPush() : this.reviewOnPush,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant22Parameters &&
          reviewDraftPullRequests == other.reviewDraftPullRequests &&
          reviewOnPush == other.reviewOnPush; } 
@override int get hashCode { return Object.hash(reviewDraftPullRequests, reviewOnPush); } 
@override String toString() { return 'RepositoryRuleDetailedVariant22Parameters(reviewDraftPullRequests: $reviewDraftPullRequests, reviewOnPush: $reviewOnPush)'; } 
 }
