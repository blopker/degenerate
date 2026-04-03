// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_can_approve_pull_request_reviews.dart';import 'actions_default_workflow_permissions.dart';@immutable final class ActionsSetDefaultWorkflowPermissions {const ActionsSetDefaultWorkflowPermissions({this.defaultWorkflowPermissions, this.canApprovePullRequestReviews, });

factory ActionsSetDefaultWorkflowPermissions.fromJson(Map<String, dynamic> json) { return ActionsSetDefaultWorkflowPermissions(
  defaultWorkflowPermissions: json['default_workflow_permissions'] != null ? ActionsDefaultWorkflowPermissions.fromJson(json['default_workflow_permissions'] as String) : null,
  canApprovePullRequestReviews: json['can_approve_pull_request_reviews'] != null ? ActionsCanApprovePullRequestReviews.fromJson(json['can_approve_pull_request_reviews'] as bool) : null,
); }

/// The default workflow permissions granted to the GITHUB_TOKEN when running workflows.
final ActionsDefaultWorkflowPermissions? defaultWorkflowPermissions;

/// Whether GitHub Actions can approve pull requests. Enabling this can be a security risk.
final ActionsCanApprovePullRequestReviews? canApprovePullRequestReviews;

Map<String, dynamic> toJson() { return {
  if (defaultWorkflowPermissions != null) 'default_workflow_permissions': defaultWorkflowPermissions?.toJson(),
  if (canApprovePullRequestReviews != null) 'can_approve_pull_request_reviews': canApprovePullRequestReviews?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_workflow_permissions', 'can_approve_pull_request_reviews'}.contains(key)); } 
ActionsSetDefaultWorkflowPermissions copyWith({ActionsDefaultWorkflowPermissions Function()? defaultWorkflowPermissions, ActionsCanApprovePullRequestReviews Function()? canApprovePullRequestReviews, }) { return ActionsSetDefaultWorkflowPermissions(
  defaultWorkflowPermissions: defaultWorkflowPermissions != null ? defaultWorkflowPermissions() : this.defaultWorkflowPermissions,
  canApprovePullRequestReviews: canApprovePullRequestReviews != null ? canApprovePullRequestReviews() : this.canApprovePullRequestReviews,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetDefaultWorkflowPermissions &&
          defaultWorkflowPermissions == other.defaultWorkflowPermissions &&
          canApprovePullRequestReviews == other.canApprovePullRequestReviews; } 
@override int get hashCode { return Object.hash(defaultWorkflowPermissions, canApprovePullRequestReviews); } 
@override String toString() { return 'ActionsSetDefaultWorkflowPermissions(defaultWorkflowPermissions: $defaultWorkflowPermissions, canApprovePullRequestReviews: $canApprovePullRequestReviews)'; } 
 }
