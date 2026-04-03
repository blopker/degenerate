// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_branch_name_pattern.dart';import 'repository_rule_code_scanning.dart';import 'repository_rule_commit_author_email_pattern.dart';import 'repository_rule_commit_message_pattern.dart';import 'repository_rule_committer_email_pattern.dart';import 'repository_rule_copilot_code_review.dart';import 'repository_rule_creation.dart';import 'repository_rule_deletion.dart';import 'repository_rule_file_extension_restriction.dart';import 'repository_rule_file_path_restriction.dart';import 'repository_rule_max_file_path_length.dart';import 'repository_rule_max_file_size.dart';import 'repository_rule_merge_queue.dart';import 'repository_rule_non_fast_forward.dart';import 'repository_rule_pull_request.dart';import 'repository_rule_required_deployments.dart';import 'repository_rule_required_linear_history.dart';import 'repository_rule_required_signatures.dart';import 'repository_rule_required_status_checks.dart';import 'repository_rule_tag_name_pattern.dart';import 'repository_rule_update.dart';import 'repository_rule_workflows.dart';/// A value that is one of: `RepositoryRuleCreation`, `RepositoryRuleUpdate`, `RepositoryRuleDeletion`, `RepositoryRuleRequiredLinearHistory`, `RepositoryRuleMergeQueue`, `RepositoryRuleRequiredDeployments`, `RepositoryRuleRequiredSignatures`, `RepositoryRulePullRequest`, `RepositoryRuleRequiredStatusChecks`, `RepositoryRuleNonFastForward`, `RepositoryRuleCommitMessagePattern`, `RepositoryRuleCommitAuthorEmailPattern`, `RepositoryRuleCommitterEmailPattern`, `RepositoryRuleBranchNamePattern`, `RepositoryRuleTagNamePattern`, `RepositoryRuleFilePathRestriction`, `RepositoryRuleMaxFilePathLength`, `RepositoryRuleFileExtensionRestriction`, `RepositoryRuleMaxFileSize`, `RepositoryRuleWorkflows`, `RepositoryRuleCodeScanning`, `RepositoryRuleCopilotCodeReview`.
sealed class RepositoryRuleDetailed {const RepositoryRuleDetailed();

factory RepositoryRuleDetailed.fromJson(Map<String, dynamic> json) {   if (RepositoryRuleCreation.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCreation(RepositoryRuleCreation.fromJson(json));
  }
  if (RepositoryRuleUpdate.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleUpdate(RepositoryRuleUpdate.fromJson(json));
  }
  if (RepositoryRuleDeletion.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDeletion(RepositoryRuleDeletion.fromJson(json));
  }
  if (RepositoryRuleRequiredLinearHistory.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleRequiredLinearHistory(RepositoryRuleRequiredLinearHistory.fromJson(json));
  }
  if (RepositoryRuleMergeQueue.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleMergeQueue(RepositoryRuleMergeQueue.fromJson(json));
  }
  if (RepositoryRuleRequiredDeployments.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleRequiredDeployments(RepositoryRuleRequiredDeployments.fromJson(json));
  }
  if (RepositoryRuleRequiredSignatures.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleRequiredSignatures(RepositoryRuleRequiredSignatures.fromJson(json));
  }
  if (RepositoryRulePullRequest.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRulePullRequest(RepositoryRulePullRequest.fromJson(json));
  }
  if (RepositoryRuleRequiredStatusChecks.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleRequiredStatusChecks(RepositoryRuleRequiredStatusChecks.fromJson(json));
  }
  if (RepositoryRuleNonFastForward.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleNonFastForward(RepositoryRuleNonFastForward.fromJson(json));
  }
  if (RepositoryRuleCommitMessagePattern.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCommitMessagePattern(RepositoryRuleCommitMessagePattern.fromJson(json));
  }
  if (RepositoryRuleCommitAuthorEmailPattern.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCommitAuthorEmailPattern(RepositoryRuleCommitAuthorEmailPattern.fromJson(json));
  }
  if (RepositoryRuleCommitterEmailPattern.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCommitterEmailPattern(RepositoryRuleCommitterEmailPattern.fromJson(json));
  }
  if (RepositoryRuleBranchNamePattern.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleBranchNamePattern(RepositoryRuleBranchNamePattern.fromJson(json));
  }
  if (RepositoryRuleTagNamePattern.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleTagNamePattern(RepositoryRuleTagNamePattern.fromJson(json));
  }
  if (RepositoryRuleFilePathRestriction.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleFilePathRestriction(RepositoryRuleFilePathRestriction.fromJson(json));
  }
  if (RepositoryRuleMaxFilePathLength.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleMaxFilePathLength(RepositoryRuleMaxFilePathLength.fromJson(json));
  }
  if (RepositoryRuleFileExtensionRestriction.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleFileExtensionRestriction(RepositoryRuleFileExtensionRestriction.fromJson(json));
  }
  if (RepositoryRuleMaxFileSize.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleMaxFileSize(RepositoryRuleMaxFileSize.fromJson(json));
  }
  if (RepositoryRuleWorkflows.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleWorkflows(RepositoryRuleWorkflows.fromJson(json));
  }
  if (RepositoryRuleCodeScanning.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCodeScanning(RepositoryRuleCodeScanning.fromJson(json));
  }
  if (RepositoryRuleCopilotCodeReview.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleCopilotCodeReview(RepositoryRuleCopilotCodeReview.fromJson(json));
  }
  return RepositoryRuleDetailed$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCreation extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCreation(this._value);

final RepositoryRuleCreation _value;

@override RepositoryRuleCreation get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCreation && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCreation($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleUpdate extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleUpdate(this._value);

final RepositoryRuleUpdate _value;

@override RepositoryRuleUpdate get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleUpdate && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleUpdate($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDeletion extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDeletion(this._value);

final RepositoryRuleDeletion _value;

@override RepositoryRuleDeletion get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDeletion && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDeletion($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleRequiredLinearHistory extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleRequiredLinearHistory(this._value);

final RepositoryRuleRequiredLinearHistory _value;

@override RepositoryRuleRequiredLinearHistory get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleRequiredLinearHistory && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleRequiredLinearHistory($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleMergeQueue extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleMergeQueue(this._value);

final RepositoryRuleMergeQueue _value;

@override RepositoryRuleMergeQueue get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleMergeQueue && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleMergeQueue($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleRequiredDeployments extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleRequiredDeployments(this._value);

final RepositoryRuleRequiredDeployments _value;

@override RepositoryRuleRequiredDeployments get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleRequiredDeployments && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleRequiredDeployments($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleRequiredSignatures extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleRequiredSignatures(this._value);

final RepositoryRuleRequiredSignatures _value;

@override RepositoryRuleRequiredSignatures get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleRequiredSignatures && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleRequiredSignatures($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRulePullRequest extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRulePullRequest(this._value);

final RepositoryRulePullRequest _value;

@override RepositoryRulePullRequest get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRulePullRequest && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRulePullRequest($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleRequiredStatusChecks extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleRequiredStatusChecks(this._value);

final RepositoryRuleRequiredStatusChecks _value;

@override RepositoryRuleRequiredStatusChecks get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleRequiredStatusChecks && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleRequiredStatusChecks($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleNonFastForward extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleNonFastForward(this._value);

final RepositoryRuleNonFastForward _value;

@override RepositoryRuleNonFastForward get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleNonFastForward && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleNonFastForward($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCommitMessagePattern extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCommitMessagePattern(this._value);

final RepositoryRuleCommitMessagePattern _value;

@override RepositoryRuleCommitMessagePattern get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCommitMessagePattern && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCommitMessagePattern($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCommitAuthorEmailPattern extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCommitAuthorEmailPattern(this._value);

final RepositoryRuleCommitAuthorEmailPattern _value;

@override RepositoryRuleCommitAuthorEmailPattern get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCommitAuthorEmailPattern && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCommitAuthorEmailPattern($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCommitterEmailPattern extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCommitterEmailPattern(this._value);

final RepositoryRuleCommitterEmailPattern _value;

@override RepositoryRuleCommitterEmailPattern get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCommitterEmailPattern && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCommitterEmailPattern($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleBranchNamePattern extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleBranchNamePattern(this._value);

final RepositoryRuleBranchNamePattern _value;

@override RepositoryRuleBranchNamePattern get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleBranchNamePattern && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleBranchNamePattern($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleTagNamePattern extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleTagNamePattern(this._value);

final RepositoryRuleTagNamePattern _value;

@override RepositoryRuleTagNamePattern get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleTagNamePattern && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleTagNamePattern($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleFilePathRestriction extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleFilePathRestriction(this._value);

final RepositoryRuleFilePathRestriction _value;

@override RepositoryRuleFilePathRestriction get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleFilePathRestriction && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleFilePathRestriction($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleMaxFilePathLength extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleMaxFilePathLength(this._value);

final RepositoryRuleMaxFilePathLength _value;

@override RepositoryRuleMaxFilePathLength get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleMaxFilePathLength && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleMaxFilePathLength($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleFileExtensionRestriction extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleFileExtensionRestriction(this._value);

final RepositoryRuleFileExtensionRestriction _value;

@override RepositoryRuleFileExtensionRestriction get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleFileExtensionRestriction && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleFileExtensionRestriction($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleMaxFileSize extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleMaxFileSize(this._value);

final RepositoryRuleMaxFileSize _value;

@override RepositoryRuleMaxFileSize get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleMaxFileSize && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleMaxFileSize($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleWorkflows extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleWorkflows(this._value);

final RepositoryRuleWorkflows _value;

@override RepositoryRuleWorkflows get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleWorkflows && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleWorkflows($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCodeScanning extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCodeScanning(this._value);

final RepositoryRuleCodeScanning _value;

@override RepositoryRuleCodeScanning get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCodeScanning && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCodeScanning($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleCopilotCodeReview extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleCopilotCodeReview(this._value);

final RepositoryRuleCopilotCodeReview _value;

@override RepositoryRuleCopilotCodeReview get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleCopilotCodeReview && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleCopilotCodeReview($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class RepositoryRuleDetailed$Unknown extends RepositoryRuleDetailed {const RepositoryRuleDetailed$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailed$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.unknown($_value)'; } 
 }
