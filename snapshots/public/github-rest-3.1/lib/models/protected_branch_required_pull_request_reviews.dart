// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'protected_branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';import 'protected_branch_required_pull_request_reviews_dismissal_restrictions.dart';@immutable final class ProtectedBranchRequiredPullRequestReviews {const ProtectedBranchRequiredPullRequestReviews({required this.url, this.dismissStaleReviews, this.requireCodeOwnerReviews, this.requiredApprovingReviewCount, this.requireLastPushApproval = false, this.dismissalRestrictions, this.bypassPullRequestAllowances, });

factory ProtectedBranchRequiredPullRequestReviews.fromJson(Map<String, dynamic> json) { return ProtectedBranchRequiredPullRequestReviews(
  url: Uri.parse(json['url'] as String),
  dismissStaleReviews: json['dismiss_stale_reviews'] as bool?,
  requireCodeOwnerReviews: json['require_code_owner_reviews'] as bool?,
  requiredApprovingReviewCount: json['required_approving_review_count'] != null ? (json['required_approving_review_count'] as num).toInt() : null,
  requireLastPushApproval: json.containsKey('require_last_push_approval') ? json['require_last_push_approval'] as bool : false,
  dismissalRestrictions: json['dismissal_restrictions'] != null ? ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(json['dismissal_restrictions'] as Map<String, dynamic>) : null,
  bypassPullRequestAllowances: json['bypass_pull_request_allowances'] != null ? ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(json['bypass_pull_request_allowances'] as Map<String, dynamic>) : null,
); }

final Uri url;

final bool? dismissStaleReviews;

final bool? requireCodeOwnerReviews;

final int? requiredApprovingReviewCount;

/// Whether the most recent push must be approved by someone other than the person who pushed it.
final bool requireLastPushApproval;

final ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions? dismissalRestrictions;

final ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances? bypassPullRequestAllowances;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'dismiss_stale_reviews': ?dismissStaleReviews,
  'require_code_owner_reviews': ?requireCodeOwnerReviews,
  'required_approving_review_count': ?requiredApprovingReviewCount,
  'require_last_push_approval': requireLastPushApproval,
  if (dismissalRestrictions != null) 'dismissal_restrictions': dismissalRestrictions?.toJson(),
  if (bypassPullRequestAllowances != null) 'bypass_pull_request_allowances': bypassPullRequestAllowances?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
ProtectedBranchRequiredPullRequestReviews copyWith({Uri? url, bool Function()? dismissStaleReviews, bool Function()? requireCodeOwnerReviews, int Function()? requiredApprovingReviewCount, bool Function()? requireLastPushApproval, ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions Function()? dismissalRestrictions, ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances Function()? bypassPullRequestAllowances, }) { return ProtectedBranchRequiredPullRequestReviews(
  url: url ?? this.url,
  dismissStaleReviews: dismissStaleReviews != null ? dismissStaleReviews() : this.dismissStaleReviews,
  requireCodeOwnerReviews: requireCodeOwnerReviews != null ? requireCodeOwnerReviews() : this.requireCodeOwnerReviews,
  requiredApprovingReviewCount: requiredApprovingReviewCount != null ? requiredApprovingReviewCount() : this.requiredApprovingReviewCount,
  requireLastPushApproval: requireLastPushApproval != null ? requireLastPushApproval() : this.requireLastPushApproval,
  dismissalRestrictions: dismissalRestrictions != null ? dismissalRestrictions() : this.dismissalRestrictions,
  bypassPullRequestAllowances: bypassPullRequestAllowances != null ? bypassPullRequestAllowances() : this.bypassPullRequestAllowances,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchRequiredPullRequestReviews &&
          url == other.url &&
          dismissStaleReviews == other.dismissStaleReviews &&
          requireCodeOwnerReviews == other.requireCodeOwnerReviews &&
          requiredApprovingReviewCount == other.requiredApprovingReviewCount &&
          requireLastPushApproval == other.requireLastPushApproval &&
          dismissalRestrictions == other.dismissalRestrictions &&
          bypassPullRequestAllowances == other.bypassPullRequestAllowances; } 
@override int get hashCode { return Object.hash(url, dismissStaleReviews, requireCodeOwnerReviews, requiredApprovingReviewCount, requireLastPushApproval, dismissalRestrictions, bypassPullRequestAllowances); } 
@override String toString() { return 'ProtectedBranchRequiredPullRequestReviews(url: $url, dismissStaleReviews: $dismissStaleReviews, requireCodeOwnerReviews: $requireCodeOwnerReviews, requiredApprovingReviewCount: $requiredApprovingReviewCount, requireLastPushApproval: $requireLastPushApproval, dismissalRestrictions: $dismissalRestrictions, bypassPullRequestAllowances: $bypassPullRequestAllowances)'; } 
 }
