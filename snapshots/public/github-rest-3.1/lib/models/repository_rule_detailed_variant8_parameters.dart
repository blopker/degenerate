// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_params_required_reviewer_configuration.dart';@immutable final class RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods {const RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods._(this.value);

factory RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods.fromJson(String json) { return switch (json) {
  'merge' => merge,
  'squash' => squash,
  'rebase' => rebase,
  _ => RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods._(json),
}; }

static const RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods merge = RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods._('merge');

static const RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods squash = RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods._('squash');

static const RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods rebase = RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods._('rebase');

static const List<RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods> values = [merge, squash, rebase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods($value)'; } 
 }
@immutable final class RepositoryRuleDetailedVariant8Parameters {const RepositoryRuleDetailedVariant8Parameters({required this.dismissStaleReviewsOnPush, required this.requireCodeOwnerReview, required this.requireLastPushApproval, required this.requiredApprovingReviewCount, required this.requiredReviewThreadResolution, this.allowedMergeMethods, this.requiredReviewers, });

factory RepositoryRuleDetailedVariant8Parameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleDetailedVariant8Parameters(
  allowedMergeMethods: (json['allowed_merge_methods'] as List<dynamic>?)?.map((e) => RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods.fromJson(e as String)).toList(),
  dismissStaleReviewsOnPush: json['dismiss_stale_reviews_on_push'] as bool,
  requireCodeOwnerReview: json['require_code_owner_review'] as bool,
  requireLastPushApproval: json['require_last_push_approval'] as bool,
  requiredApprovingReviewCount: (json['required_approving_review_count'] as num).toInt(),
  requiredReviewThreadResolution: json['required_review_thread_resolution'] as bool,
  requiredReviewers: (json['required_reviewers'] as List<dynamic>?)?.map((e) => RepositoryRuleParamsRequiredReviewerConfiguration.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of allowed merge methods. Allowed values include `merge`, `squash`, and `rebase`. At least one option must be enabled.
final List<RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods>? allowedMergeMethods;

/// New, reviewable commits pushed will dismiss previous pull request review approvals.
final bool dismissStaleReviewsOnPush;

/// Require an approving review in pull requests that modify files that have a designated code owner.
final bool requireCodeOwnerReview;

/// Whether the most recent reviewable push must be approved by someone other than the person who pushed it.
final bool requireLastPushApproval;

/// The number of approving reviews that are required before a pull request can be merged.
final int requiredApprovingReviewCount;

/// All conversations on code must be resolved before a pull request can be merged.
final bool requiredReviewThreadResolution;

/// > `[!NOTE]`
/// > `required_reviewers` is in beta and subject to change.
/// 
/// A collection of reviewers and associated file patterns. Each reviewer has a list of file patterns which determine the files that reviewer is required to review.
final List<RepositoryRuleParamsRequiredReviewerConfiguration>? requiredReviewers;

Map<String, dynamic> toJson() { return {
  if (allowedMergeMethods != null) 'allowed_merge_methods': allowedMergeMethods?.map((e) => e.toJson()).toList(),
  'dismiss_stale_reviews_on_push': dismissStaleReviewsOnPush,
  'require_code_owner_review': requireCodeOwnerReview,
  'require_last_push_approval': requireLastPushApproval,
  'required_approving_review_count': requiredApprovingReviewCount,
  'required_review_thread_resolution': requiredReviewThreadResolution,
  if (requiredReviewers != null) 'required_reviewers': requiredReviewers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dismiss_stale_reviews_on_push') && json['dismiss_stale_reviews_on_push'] is bool &&
      json.containsKey('require_code_owner_review') && json['require_code_owner_review'] is bool &&
      json.containsKey('require_last_push_approval') && json['require_last_push_approval'] is bool &&
      json.containsKey('required_approving_review_count') && json['required_approving_review_count'] is num &&
      json.containsKey('required_review_thread_resolution') && json['required_review_thread_resolution'] is bool; } 
RepositoryRuleDetailedVariant8Parameters copyWith({List<RepositoryRuleDetailedVariant8ParametersAllowedMergeMethods> Function()? allowedMergeMethods, bool? dismissStaleReviewsOnPush, bool? requireCodeOwnerReview, bool? requireLastPushApproval, int? requiredApprovingReviewCount, bool? requiredReviewThreadResolution, List<RepositoryRuleParamsRequiredReviewerConfiguration> Function()? requiredReviewers, }) { return RepositoryRuleDetailedVariant8Parameters(
  allowedMergeMethods: allowedMergeMethods != null ? allowedMergeMethods() : this.allowedMergeMethods,
  dismissStaleReviewsOnPush: dismissStaleReviewsOnPush ?? this.dismissStaleReviewsOnPush,
  requireCodeOwnerReview: requireCodeOwnerReview ?? this.requireCodeOwnerReview,
  requireLastPushApproval: requireLastPushApproval ?? this.requireLastPushApproval,
  requiredApprovingReviewCount: requiredApprovingReviewCount ?? this.requiredApprovingReviewCount,
  requiredReviewThreadResolution: requiredReviewThreadResolution ?? this.requiredReviewThreadResolution,
  requiredReviewers: requiredReviewers != null ? requiredReviewers() : this.requiredReviewers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleDetailedVariant8Parameters &&
          listEquals(allowedMergeMethods, other.allowedMergeMethods) &&
          dismissStaleReviewsOnPush == other.dismissStaleReviewsOnPush &&
          requireCodeOwnerReview == other.requireCodeOwnerReview &&
          requireLastPushApproval == other.requireLastPushApproval &&
          requiredApprovingReviewCount == other.requiredApprovingReviewCount &&
          requiredReviewThreadResolution == other.requiredReviewThreadResolution &&
          listEquals(requiredReviewers, other.requiredReviewers); } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedMergeMethods ?? const []), dismissStaleReviewsOnPush, requireCodeOwnerReview, requireLastPushApproval, requiredApprovingReviewCount, requiredReviewThreadResolution, Object.hashAll(requiredReviewers ?? const [])); } 
@override String toString() { return 'RepositoryRuleDetailedVariant8Parameters(allowedMergeMethods: $allowedMergeMethods, dismissStaleReviewsOnPush: $dismissStaleReviewsOnPush, requireCodeOwnerReview: $requireCodeOwnerReview, requireLastPushApproval: $requireLastPushApproval, requiredApprovingReviewCount: $requiredApprovingReviewCount, requiredReviewThreadResolution: $requiredReviewThreadResolution, requiredReviewers: $requiredReviewers)'; } 
 }
