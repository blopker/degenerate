// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksRuleAllowDeletionsEnforcementLevel {const WebhooksRuleAllowDeletionsEnforcementLevel._(this.value);

factory WebhooksRuleAllowDeletionsEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleAllowDeletionsEnforcementLevel._(json),
}; }

static const WebhooksRuleAllowDeletionsEnforcementLevel off = WebhooksRuleAllowDeletionsEnforcementLevel._('off');

static const WebhooksRuleAllowDeletionsEnforcementLevel nonAdmins = WebhooksRuleAllowDeletionsEnforcementLevel._('non_admins');

static const WebhooksRuleAllowDeletionsEnforcementLevel everyone = WebhooksRuleAllowDeletionsEnforcementLevel._('everyone');

static const List<WebhooksRuleAllowDeletionsEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleAllowDeletionsEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleAllowDeletionsEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleAllowForcePushesEnforcementLevel {const WebhooksRuleAllowForcePushesEnforcementLevel._(this.value);

factory WebhooksRuleAllowForcePushesEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleAllowForcePushesEnforcementLevel._(json),
}; }

static const WebhooksRuleAllowForcePushesEnforcementLevel off = WebhooksRuleAllowForcePushesEnforcementLevel._('off');

static const WebhooksRuleAllowForcePushesEnforcementLevel nonAdmins = WebhooksRuleAllowForcePushesEnforcementLevel._('non_admins');

static const WebhooksRuleAllowForcePushesEnforcementLevel everyone = WebhooksRuleAllowForcePushesEnforcementLevel._('everyone');

static const List<WebhooksRuleAllowForcePushesEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleAllowForcePushesEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleAllowForcePushesEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleLinearHistoryRequirementEnforcementLevel {const WebhooksRuleLinearHistoryRequirementEnforcementLevel._(this.value);

factory WebhooksRuleLinearHistoryRequirementEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleLinearHistoryRequirementEnforcementLevel._(json),
}; }

static const WebhooksRuleLinearHistoryRequirementEnforcementLevel off = WebhooksRuleLinearHistoryRequirementEnforcementLevel._('off');

static const WebhooksRuleLinearHistoryRequirementEnforcementLevel nonAdmins = WebhooksRuleLinearHistoryRequirementEnforcementLevel._('non_admins');

static const WebhooksRuleLinearHistoryRequirementEnforcementLevel everyone = WebhooksRuleLinearHistoryRequirementEnforcementLevel._('everyone');

static const List<WebhooksRuleLinearHistoryRequirementEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleLinearHistoryRequirementEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleLinearHistoryRequirementEnforcementLevel($value)'; } 
 }
/// The enforcement level of the branch lock setting. `off` means the branch is not locked, `non_admins` means the branch is read-only for non_admins, and `everyone` means the branch is read-only for everyone.
@immutable final class WebhooksRuleLockBranchEnforcementLevel {const WebhooksRuleLockBranchEnforcementLevel._(this.value);

factory WebhooksRuleLockBranchEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleLockBranchEnforcementLevel._(json),
}; }

static const WebhooksRuleLockBranchEnforcementLevel off = WebhooksRuleLockBranchEnforcementLevel._('off');

static const WebhooksRuleLockBranchEnforcementLevel nonAdmins = WebhooksRuleLockBranchEnforcementLevel._('non_admins');

static const WebhooksRuleLockBranchEnforcementLevel everyone = WebhooksRuleLockBranchEnforcementLevel._('everyone');

static const List<WebhooksRuleLockBranchEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleLockBranchEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleLockBranchEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleMergeQueueEnforcementLevel {const WebhooksRuleMergeQueueEnforcementLevel._(this.value);

factory WebhooksRuleMergeQueueEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleMergeQueueEnforcementLevel._(json),
}; }

static const WebhooksRuleMergeQueueEnforcementLevel off = WebhooksRuleMergeQueueEnforcementLevel._('off');

static const WebhooksRuleMergeQueueEnforcementLevel nonAdmins = WebhooksRuleMergeQueueEnforcementLevel._('non_admins');

static const WebhooksRuleMergeQueueEnforcementLevel everyone = WebhooksRuleMergeQueueEnforcementLevel._('everyone');

static const List<WebhooksRuleMergeQueueEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleMergeQueueEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleMergeQueueEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRulePullRequestReviewsEnforcementLevel {const WebhooksRulePullRequestReviewsEnforcementLevel._(this.value);

factory WebhooksRulePullRequestReviewsEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRulePullRequestReviewsEnforcementLevel._(json),
}; }

static const WebhooksRulePullRequestReviewsEnforcementLevel off = WebhooksRulePullRequestReviewsEnforcementLevel._('off');

static const WebhooksRulePullRequestReviewsEnforcementLevel nonAdmins = WebhooksRulePullRequestReviewsEnforcementLevel._('non_admins');

static const WebhooksRulePullRequestReviewsEnforcementLevel everyone = WebhooksRulePullRequestReviewsEnforcementLevel._('everyone');

static const List<WebhooksRulePullRequestReviewsEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRulePullRequestReviewsEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRulePullRequestReviewsEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleRequiredConversationResolutionLevel {const WebhooksRuleRequiredConversationResolutionLevel._(this.value);

factory WebhooksRuleRequiredConversationResolutionLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleRequiredConversationResolutionLevel._(json),
}; }

static const WebhooksRuleRequiredConversationResolutionLevel off = WebhooksRuleRequiredConversationResolutionLevel._('off');

static const WebhooksRuleRequiredConversationResolutionLevel nonAdmins = WebhooksRuleRequiredConversationResolutionLevel._('non_admins');

static const WebhooksRuleRequiredConversationResolutionLevel everyone = WebhooksRuleRequiredConversationResolutionLevel._('everyone');

static const List<WebhooksRuleRequiredConversationResolutionLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleRequiredConversationResolutionLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleRequiredConversationResolutionLevel($value)'; } 
 }
@immutable final class WebhooksRuleRequiredDeploymentsEnforcementLevel {const WebhooksRuleRequiredDeploymentsEnforcementLevel._(this.value);

factory WebhooksRuleRequiredDeploymentsEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleRequiredDeploymentsEnforcementLevel._(json),
}; }

static const WebhooksRuleRequiredDeploymentsEnforcementLevel off = WebhooksRuleRequiredDeploymentsEnforcementLevel._('off');

static const WebhooksRuleRequiredDeploymentsEnforcementLevel nonAdmins = WebhooksRuleRequiredDeploymentsEnforcementLevel._('non_admins');

static const WebhooksRuleRequiredDeploymentsEnforcementLevel everyone = WebhooksRuleRequiredDeploymentsEnforcementLevel._('everyone');

static const List<WebhooksRuleRequiredDeploymentsEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleRequiredDeploymentsEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleRequiredDeploymentsEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleRequiredStatusChecksEnforcementLevel {const WebhooksRuleRequiredStatusChecksEnforcementLevel._(this.value);

factory WebhooksRuleRequiredStatusChecksEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleRequiredStatusChecksEnforcementLevel._(json),
}; }

static const WebhooksRuleRequiredStatusChecksEnforcementLevel off = WebhooksRuleRequiredStatusChecksEnforcementLevel._('off');

static const WebhooksRuleRequiredStatusChecksEnforcementLevel nonAdmins = WebhooksRuleRequiredStatusChecksEnforcementLevel._('non_admins');

static const WebhooksRuleRequiredStatusChecksEnforcementLevel everyone = WebhooksRuleRequiredStatusChecksEnforcementLevel._('everyone');

static const List<WebhooksRuleRequiredStatusChecksEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleRequiredStatusChecksEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleRequiredStatusChecksEnforcementLevel($value)'; } 
 }
@immutable final class WebhooksRuleSignatureRequirementEnforcementLevel {const WebhooksRuleSignatureRequirementEnforcementLevel._(this.value);

factory WebhooksRuleSignatureRequirementEnforcementLevel.fromJson(String json) { return switch (json) {
  'off' => off,
  'non_admins' => nonAdmins,
  'everyone' => everyone,
  _ => WebhooksRuleSignatureRequirementEnforcementLevel._(json),
}; }

static const WebhooksRuleSignatureRequirementEnforcementLevel off = WebhooksRuleSignatureRequirementEnforcementLevel._('off');

static const WebhooksRuleSignatureRequirementEnforcementLevel nonAdmins = WebhooksRuleSignatureRequirementEnforcementLevel._('non_admins');

static const WebhooksRuleSignatureRequirementEnforcementLevel everyone = WebhooksRuleSignatureRequirementEnforcementLevel._('everyone');

static const List<WebhooksRuleSignatureRequirementEnforcementLevel> values = [off, nonAdmins, everyone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRuleSignatureRequirementEnforcementLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRuleSignatureRequirementEnforcementLevel($value)'; } 
 }
/// The branch protection rule. Includes a `name` and all the [branch protection settings](https://docs.github.com/github/administering-a-repository/defining-the-mergeability-of-pull-requests/about-protected-branches#about-branch-protection-settings) applied to branches that match the name. Binary settings are boolean. Multi-level configurations are one of `off`, `non_admins`, or `everyone`. Actor and build lists are arrays of strings.
@immutable final class WebhooksRule {const WebhooksRule({required this.adminEnforced, required this.allowDeletionsEnforcementLevel, required this.allowForcePushesEnforcementLevel, required this.authorizedActorNames, required this.authorizedActorsOnly, required this.authorizedDismissalActorsOnly, required this.createdAt, required this.dismissStaleReviewsOnPush, required this.id, required this.ignoreApprovalsFromContributors, required this.linearHistoryRequirementEnforcementLevel, required this.lockBranchEnforcementLevel, required this.mergeQueueEnforcementLevel, required this.name, required this.pullRequestReviewsEnforcementLevel, required this.repositoryId, required this.requireCodeOwnerReview, required this.requiredApprovingReviewCount, required this.requiredConversationResolutionLevel, required this.requiredDeploymentsEnforcementLevel, required this.requiredStatusChecks, required this.requiredStatusChecksEnforcementLevel, required this.signatureRequirementEnforcementLevel, required this.strictRequiredStatusChecksPolicy, required this.updatedAt, this.createProtected, this.lockAllowsForkSync, this.requireLastPushApproval, });

factory WebhooksRule.fromJson(Map<String, dynamic> json) { return WebhooksRule(
  adminEnforced: json['admin_enforced'] as bool,
  allowDeletionsEnforcementLevel: WebhooksRuleAllowDeletionsEnforcementLevel.fromJson(json['allow_deletions_enforcement_level'] as String),
  allowForcePushesEnforcementLevel: WebhooksRuleAllowForcePushesEnforcementLevel.fromJson(json['allow_force_pushes_enforcement_level'] as String),
  authorizedActorNames: (json['authorized_actor_names'] as List<dynamic>).map((e) => e as String).toList(),
  authorizedActorsOnly: json['authorized_actors_only'] as bool,
  authorizedDismissalActorsOnly: json['authorized_dismissal_actors_only'] as bool,
  createProtected: json['create_protected'] as bool?,
  createdAt: DateTime.parse(json['created_at'] as String),
  dismissStaleReviewsOnPush: json['dismiss_stale_reviews_on_push'] as bool,
  id: (json['id'] as num).toInt(),
  ignoreApprovalsFromContributors: json['ignore_approvals_from_contributors'] as bool,
  linearHistoryRequirementEnforcementLevel: WebhooksRuleLinearHistoryRequirementEnforcementLevel.fromJson(json['linear_history_requirement_enforcement_level'] as String),
  lockBranchEnforcementLevel: WebhooksRuleLockBranchEnforcementLevel.fromJson(json['lock_branch_enforcement_level'] as String),
  lockAllowsForkSync: json['lock_allows_fork_sync'] as bool?,
  mergeQueueEnforcementLevel: WebhooksRuleMergeQueueEnforcementLevel.fromJson(json['merge_queue_enforcement_level'] as String),
  name: json['name'] as String,
  pullRequestReviewsEnforcementLevel: WebhooksRulePullRequestReviewsEnforcementLevel.fromJson(json['pull_request_reviews_enforcement_level'] as String),
  repositoryId: (json['repository_id'] as num).toInt(),
  requireCodeOwnerReview: json['require_code_owner_review'] as bool,
  requireLastPushApproval: json['require_last_push_approval'] as bool?,
  requiredApprovingReviewCount: (json['required_approving_review_count'] as num).toInt(),
  requiredConversationResolutionLevel: WebhooksRuleRequiredConversationResolutionLevel.fromJson(json['required_conversation_resolution_level'] as String),
  requiredDeploymentsEnforcementLevel: WebhooksRuleRequiredDeploymentsEnforcementLevel.fromJson(json['required_deployments_enforcement_level'] as String),
  requiredStatusChecks: (json['required_status_checks'] as List<dynamic>).map((e) => e as String).toList(),
  requiredStatusChecksEnforcementLevel: WebhooksRuleRequiredStatusChecksEnforcementLevel.fromJson(json['required_status_checks_enforcement_level'] as String),
  signatureRequirementEnforcementLevel: WebhooksRuleSignatureRequirementEnforcementLevel.fromJson(json['signature_requirement_enforcement_level'] as String),
  strictRequiredStatusChecksPolicy: json['strict_required_status_checks_policy'] as bool,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final bool adminEnforced;

final WebhooksRuleAllowDeletionsEnforcementLevel allowDeletionsEnforcementLevel;

final WebhooksRuleAllowForcePushesEnforcementLevel allowForcePushesEnforcementLevel;

final List<String> authorizedActorNames;

final bool authorizedActorsOnly;

final bool authorizedDismissalActorsOnly;

final bool? createProtected;

final DateTime createdAt;

final bool dismissStaleReviewsOnPush;

final int id;

final bool ignoreApprovalsFromContributors;

final WebhooksRuleLinearHistoryRequirementEnforcementLevel linearHistoryRequirementEnforcementLevel;

/// The enforcement level of the branch lock setting. `off` means the branch is not locked, `non_admins` means the branch is read-only for non_admins, and `everyone` means the branch is read-only for everyone.
final WebhooksRuleLockBranchEnforcementLevel lockBranchEnforcementLevel;

/// Whether users can pull changes from upstream when the branch is locked. Set to `true` to allow users to pull changes from upstream when the branch is locked. This setting is only applicable for forks.
final bool? lockAllowsForkSync;

final WebhooksRuleMergeQueueEnforcementLevel mergeQueueEnforcementLevel;

final String name;

final WebhooksRulePullRequestReviewsEnforcementLevel pullRequestReviewsEnforcementLevel;

final int repositoryId;

final bool requireCodeOwnerReview;

/// Whether the most recent push must be approved by someone other than the person who pushed it
final bool? requireLastPushApproval;

final int requiredApprovingReviewCount;

final WebhooksRuleRequiredConversationResolutionLevel requiredConversationResolutionLevel;

final WebhooksRuleRequiredDeploymentsEnforcementLevel requiredDeploymentsEnforcementLevel;

final List<String> requiredStatusChecks;

final WebhooksRuleRequiredStatusChecksEnforcementLevel requiredStatusChecksEnforcementLevel;

final WebhooksRuleSignatureRequirementEnforcementLevel signatureRequirementEnforcementLevel;

final bool strictRequiredStatusChecksPolicy;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'admin_enforced': adminEnforced,
  'allow_deletions_enforcement_level': allowDeletionsEnforcementLevel.toJson(),
  'allow_force_pushes_enforcement_level': allowForcePushesEnforcementLevel.toJson(),
  'authorized_actor_names': authorizedActorNames,
  'authorized_actors_only': authorizedActorsOnly,
  'authorized_dismissal_actors_only': authorizedDismissalActorsOnly,
  'create_protected': ?createProtected,
  'created_at': createdAt.toIso8601String(),
  'dismiss_stale_reviews_on_push': dismissStaleReviewsOnPush,
  'id': id,
  'ignore_approvals_from_contributors': ignoreApprovalsFromContributors,
  'linear_history_requirement_enforcement_level': linearHistoryRequirementEnforcementLevel.toJson(),
  'lock_branch_enforcement_level': lockBranchEnforcementLevel.toJson(),
  'lock_allows_fork_sync': ?lockAllowsForkSync,
  'merge_queue_enforcement_level': mergeQueueEnforcementLevel.toJson(),
  'name': name,
  'pull_request_reviews_enforcement_level': pullRequestReviewsEnforcementLevel.toJson(),
  'repository_id': repositoryId,
  'require_code_owner_review': requireCodeOwnerReview,
  'require_last_push_approval': ?requireLastPushApproval,
  'required_approving_review_count': requiredApprovingReviewCount,
  'required_conversation_resolution_level': requiredConversationResolutionLevel.toJson(),
  'required_deployments_enforcement_level': requiredDeploymentsEnforcementLevel.toJson(),
  'required_status_checks': requiredStatusChecks,
  'required_status_checks_enforcement_level': requiredStatusChecksEnforcementLevel.toJson(),
  'signature_requirement_enforcement_level': signatureRequirementEnforcementLevel.toJson(),
  'strict_required_status_checks_policy': strictRequiredStatusChecksPolicy,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('admin_enforced') && json['admin_enforced'] is bool &&
      json.containsKey('allow_deletions_enforcement_level') &&
      json.containsKey('allow_force_pushes_enforcement_level') &&
      json.containsKey('authorized_actor_names') &&
      json.containsKey('authorized_actors_only') && json['authorized_actors_only'] is bool &&
      json.containsKey('authorized_dismissal_actors_only') && json['authorized_dismissal_actors_only'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('dismiss_stale_reviews_on_push') && json['dismiss_stale_reviews_on_push'] is bool &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('ignore_approvals_from_contributors') && json['ignore_approvals_from_contributors'] is bool &&
      json.containsKey('linear_history_requirement_enforcement_level') &&
      json.containsKey('lock_branch_enforcement_level') &&
      json.containsKey('merge_queue_enforcement_level') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pull_request_reviews_enforcement_level') &&
      json.containsKey('repository_id') && json['repository_id'] is num &&
      json.containsKey('require_code_owner_review') && json['require_code_owner_review'] is bool &&
      json.containsKey('required_approving_review_count') && json['required_approving_review_count'] is num &&
      json.containsKey('required_conversation_resolution_level') &&
      json.containsKey('required_deployments_enforcement_level') &&
      json.containsKey('required_status_checks') &&
      json.containsKey('required_status_checks_enforcement_level') &&
      json.containsKey('signature_requirement_enforcement_level') &&
      json.containsKey('strict_required_status_checks_policy') && json['strict_required_status_checks_policy'] is bool &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
WebhooksRule copyWith({bool? adminEnforced, WebhooksRuleAllowDeletionsEnforcementLevel? allowDeletionsEnforcementLevel, WebhooksRuleAllowForcePushesEnforcementLevel? allowForcePushesEnforcementLevel, List<String>? authorizedActorNames, bool? authorizedActorsOnly, bool? authorizedDismissalActorsOnly, bool Function()? createProtected, DateTime? createdAt, bool? dismissStaleReviewsOnPush, int? id, bool? ignoreApprovalsFromContributors, WebhooksRuleLinearHistoryRequirementEnforcementLevel? linearHistoryRequirementEnforcementLevel, WebhooksRuleLockBranchEnforcementLevel? lockBranchEnforcementLevel, bool Function()? lockAllowsForkSync, WebhooksRuleMergeQueueEnforcementLevel? mergeQueueEnforcementLevel, String? name, WebhooksRulePullRequestReviewsEnforcementLevel? pullRequestReviewsEnforcementLevel, int? repositoryId, bool? requireCodeOwnerReview, bool Function()? requireLastPushApproval, int? requiredApprovingReviewCount, WebhooksRuleRequiredConversationResolutionLevel? requiredConversationResolutionLevel, WebhooksRuleRequiredDeploymentsEnforcementLevel? requiredDeploymentsEnforcementLevel, List<String>? requiredStatusChecks, WebhooksRuleRequiredStatusChecksEnforcementLevel? requiredStatusChecksEnforcementLevel, WebhooksRuleSignatureRequirementEnforcementLevel? signatureRequirementEnforcementLevel, bool? strictRequiredStatusChecksPolicy, DateTime? updatedAt, }) { return WebhooksRule(
  adminEnforced: adminEnforced ?? this.adminEnforced,
  allowDeletionsEnforcementLevel: allowDeletionsEnforcementLevel ?? this.allowDeletionsEnforcementLevel,
  allowForcePushesEnforcementLevel: allowForcePushesEnforcementLevel ?? this.allowForcePushesEnforcementLevel,
  authorizedActorNames: authorizedActorNames ?? this.authorizedActorNames,
  authorizedActorsOnly: authorizedActorsOnly ?? this.authorizedActorsOnly,
  authorizedDismissalActorsOnly: authorizedDismissalActorsOnly ?? this.authorizedDismissalActorsOnly,
  createProtected: createProtected != null ? createProtected() : this.createProtected,
  createdAt: createdAt ?? this.createdAt,
  dismissStaleReviewsOnPush: dismissStaleReviewsOnPush ?? this.dismissStaleReviewsOnPush,
  id: id ?? this.id,
  ignoreApprovalsFromContributors: ignoreApprovalsFromContributors ?? this.ignoreApprovalsFromContributors,
  linearHistoryRequirementEnforcementLevel: linearHistoryRequirementEnforcementLevel ?? this.linearHistoryRequirementEnforcementLevel,
  lockBranchEnforcementLevel: lockBranchEnforcementLevel ?? this.lockBranchEnforcementLevel,
  lockAllowsForkSync: lockAllowsForkSync != null ? lockAllowsForkSync() : this.lockAllowsForkSync,
  mergeQueueEnforcementLevel: mergeQueueEnforcementLevel ?? this.mergeQueueEnforcementLevel,
  name: name ?? this.name,
  pullRequestReviewsEnforcementLevel: pullRequestReviewsEnforcementLevel ?? this.pullRequestReviewsEnforcementLevel,
  repositoryId: repositoryId ?? this.repositoryId,
  requireCodeOwnerReview: requireCodeOwnerReview ?? this.requireCodeOwnerReview,
  requireLastPushApproval: requireLastPushApproval != null ? requireLastPushApproval() : this.requireLastPushApproval,
  requiredApprovingReviewCount: requiredApprovingReviewCount ?? this.requiredApprovingReviewCount,
  requiredConversationResolutionLevel: requiredConversationResolutionLevel ?? this.requiredConversationResolutionLevel,
  requiredDeploymentsEnforcementLevel: requiredDeploymentsEnforcementLevel ?? this.requiredDeploymentsEnforcementLevel,
  requiredStatusChecks: requiredStatusChecks ?? this.requiredStatusChecks,
  requiredStatusChecksEnforcementLevel: requiredStatusChecksEnforcementLevel ?? this.requiredStatusChecksEnforcementLevel,
  signatureRequirementEnforcementLevel: signatureRequirementEnforcementLevel ?? this.signatureRequirementEnforcementLevel,
  strictRequiredStatusChecksPolicy: strictRequiredStatusChecksPolicy ?? this.strictRequiredStatusChecksPolicy,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksRule &&
          adminEnforced == other.adminEnforced &&
          allowDeletionsEnforcementLevel == other.allowDeletionsEnforcementLevel &&
          allowForcePushesEnforcementLevel == other.allowForcePushesEnforcementLevel &&
          listEquals(authorizedActorNames, other.authorizedActorNames) &&
          authorizedActorsOnly == other.authorizedActorsOnly &&
          authorizedDismissalActorsOnly == other.authorizedDismissalActorsOnly &&
          createProtected == other.createProtected &&
          createdAt == other.createdAt &&
          dismissStaleReviewsOnPush == other.dismissStaleReviewsOnPush &&
          id == other.id &&
          ignoreApprovalsFromContributors == other.ignoreApprovalsFromContributors &&
          linearHistoryRequirementEnforcementLevel == other.linearHistoryRequirementEnforcementLevel &&
          lockBranchEnforcementLevel == other.lockBranchEnforcementLevel &&
          lockAllowsForkSync == other.lockAllowsForkSync &&
          mergeQueueEnforcementLevel == other.mergeQueueEnforcementLevel &&
          name == other.name &&
          pullRequestReviewsEnforcementLevel == other.pullRequestReviewsEnforcementLevel &&
          repositoryId == other.repositoryId &&
          requireCodeOwnerReview == other.requireCodeOwnerReview &&
          requireLastPushApproval == other.requireLastPushApproval &&
          requiredApprovingReviewCount == other.requiredApprovingReviewCount &&
          requiredConversationResolutionLevel == other.requiredConversationResolutionLevel &&
          requiredDeploymentsEnforcementLevel == other.requiredDeploymentsEnforcementLevel &&
          listEquals(requiredStatusChecks, other.requiredStatusChecks) &&
          requiredStatusChecksEnforcementLevel == other.requiredStatusChecksEnforcementLevel &&
          signatureRequirementEnforcementLevel == other.signatureRequirementEnforcementLevel &&
          strictRequiredStatusChecksPolicy == other.strictRequiredStatusChecksPolicy &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hashAll([adminEnforced, allowDeletionsEnforcementLevel, allowForcePushesEnforcementLevel, Object.hashAll(authorizedActorNames), authorizedActorsOnly, authorizedDismissalActorsOnly, createProtected, createdAt, dismissStaleReviewsOnPush, id, ignoreApprovalsFromContributors, linearHistoryRequirementEnforcementLevel, lockBranchEnforcementLevel, lockAllowsForkSync, mergeQueueEnforcementLevel, name, pullRequestReviewsEnforcementLevel, repositoryId, requireCodeOwnerReview, requireLastPushApproval, requiredApprovingReviewCount, requiredConversationResolutionLevel, requiredDeploymentsEnforcementLevel, Object.hashAll(requiredStatusChecks), requiredStatusChecksEnforcementLevel, signatureRequirementEnforcementLevel, strictRequiredStatusChecksPolicy, updatedAt]); } 
@override String toString() { return 'WebhooksRule(adminEnforced: $adminEnforced, allowDeletionsEnforcementLevel: $allowDeletionsEnforcementLevel, allowForcePushesEnforcementLevel: $allowForcePushesEnforcementLevel, authorizedActorNames: $authorizedActorNames, authorizedActorsOnly: $authorizedActorsOnly, authorizedDismissalActorsOnly: $authorizedDismissalActorsOnly, createProtected: $createProtected, createdAt: $createdAt, dismissStaleReviewsOnPush: $dismissStaleReviewsOnPush, id: $id, ignoreApprovalsFromContributors: $ignoreApprovalsFromContributors, linearHistoryRequirementEnforcementLevel: $linearHistoryRequirementEnforcementLevel, lockBranchEnforcementLevel: $lockBranchEnforcementLevel, lockAllowsForkSync: $lockAllowsForkSync, mergeQueueEnforcementLevel: $mergeQueueEnforcementLevel, name: $name, pullRequestReviewsEnforcementLevel: $pullRequestReviewsEnforcementLevel, repositoryId: $repositoryId, requireCodeOwnerReview: $requireCodeOwnerReview, requireLastPushApproval: $requireLastPushApproval, requiredApprovingReviewCount: $requiredApprovingReviewCount, requiredConversationResolutionLevel: $requiredConversationResolutionLevel, requiredDeploymentsEnforcementLevel: $requiredDeploymentsEnforcementLevel, requiredStatusChecks: $requiredStatusChecks, requiredStatusChecksEnforcementLevel: $requiredStatusChecksEnforcementLevel, signatureRequirementEnforcementLevel: $signatureRequirementEnforcementLevel, strictRequiredStatusChecksPolicy: $strictRequiredStatusChecksPolicy, updatedAt: $updatedAt)'; } 
 }
