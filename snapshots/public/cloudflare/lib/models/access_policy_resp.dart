// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_approval_group.dart';import 'access_approval_required.dart';import 'access_components_schemas_session_duration.dart';import 'access_connection_rules.dart';import 'access_decision.dart';import 'access_isolation_required.dart';import 'access_mfa_config.dart';import 'access_policy_components_schemas_name.dart';import 'access_purpose_justification_prompt.dart';import 'access_purpose_justification_required.dart';import 'access_rule.dart';import 'access_schemas_uuid.dart';import 'access_timestamp.dart';@immutable final class AccessPolicyResp {const AccessPolicyResp({this.createdAt, this.decision, this.exclude, this.id, this.include, this.name, this.require, this.updatedAt, this.approvalGroups, this.approvalRequired, this.connectionRules, this.isolationRequired, this.mfaConfig, this.purposeJustificationPrompt, this.purposeJustificationRequired, this.sessionDuration, });

factory AccessPolicyResp.fromJson(Map<String, dynamic> json) { return AccessPolicyResp(
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  decision: json['decision'] != null ? AccessDecision.fromJson(json['decision'] as String) : null,
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] != null ? AccessPolicyComponentsSchemasName.fromJson(json['name'] as String) : null,
  require: (json['require'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  approvalGroups: (json['approval_groups'] as List<dynamic>?)?.map((e) => AccessApprovalGroup.fromJson(e as Map<String, dynamic>)).toList(),
  approvalRequired: json['approval_required'] != null ? AccessApprovalRequired.fromJson(json['approval_required'] as bool) : null,
  connectionRules: json['connection_rules'] != null ? AccessConnectionRules.fromJson(json['connection_rules'] as Map<String, dynamic>) : null,
  isolationRequired: json['isolation_required'] != null ? AccessIsolationRequired.fromJson(json['isolation_required'] as bool) : null,
  mfaConfig: json['mfa_config'] != null ? AccessMfaConfig.fromJson(json['mfa_config'] as Map<String, dynamic>) : null,
  purposeJustificationPrompt: json['purpose_justification_prompt'] != null ? AccessPurposeJustificationPrompt.fromJson(json['purpose_justification_prompt'] as String) : null,
  purposeJustificationRequired: json['purpose_justification_required'] != null ? AccessPurposeJustificationRequired.fromJson(json['purpose_justification_required'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
); }

final AccessTimestamp? createdAt;

/// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
final AccessDecision? decision;

final List<AccessRule>? exclude;

final AccessSchemasUuid? id;

final List<AccessRule>? include;

/// The name of the Access policy.
final AccessPolicyComponentsSchemasName? name;

final List<AccessRule>? require;

final AccessTimestamp? updatedAt;

/// Administrators who can approve a temporary authentication request.
final List<AccessApprovalGroup>? approvalGroups;

/// Requires the user to request access from an administrator at the start of each session.
final AccessApprovalRequired? approvalRequired;

final AccessConnectionRules? connectionRules;

/// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
final AccessIsolationRequired? isolationRequired;

final AccessMfaConfig? mfaConfig;

final AccessPurposeJustificationPrompt? purposeJustificationPrompt;

final AccessPurposeJustificationRequired? purposeJustificationRequired;

/// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
final AccessComponentsSchemasSessionDuration? sessionDuration;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (decision != null) 'decision': decision?.toJson(),
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  if (id != null) 'id': id?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  if (name != null) 'name': name?.toJson(),
  if (require != null) 'require': require?.map((e) => e.toJson()).toList(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (approvalGroups != null) 'approval_groups': approvalGroups?.map((e) => e.toJson()).toList(),
  if (approvalRequired != null) 'approval_required': approvalRequired?.toJson(),
  if (connectionRules != null) 'connection_rules': connectionRules?.toJson(),
  if (isolationRequired != null) 'isolation_required': isolationRequired?.toJson(),
  if (mfaConfig != null) 'mfa_config': mfaConfig?.toJson(),
  if (purposeJustificationPrompt != null) 'purpose_justification_prompt': purposeJustificationPrompt?.toJson(),
  if (purposeJustificationRequired != null) 'purpose_justification_required': purposeJustificationRequired?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'decision', 'exclude', 'id', 'include', 'name', 'require', 'updated_at', 'approval_groups', 'approval_required', 'connection_rules', 'isolation_required', 'mfa_config', 'purpose_justification_prompt', 'purpose_justification_required', 'session_duration'}.contains(key)); } 
AccessPolicyResp copyWith({AccessTimestamp Function()? createdAt, AccessDecision Function()? decision, List<AccessRule> Function()? exclude, AccessSchemasUuid Function()? id, List<AccessRule> Function()? include, AccessPolicyComponentsSchemasName Function()? name, List<AccessRule> Function()? require, AccessTimestamp Function()? updatedAt, List<AccessApprovalGroup> Function()? approvalGroups, AccessApprovalRequired Function()? approvalRequired, AccessConnectionRules Function()? connectionRules, AccessIsolationRequired Function()? isolationRequired, AccessMfaConfig Function()? mfaConfig, AccessPurposeJustificationPrompt Function()? purposeJustificationPrompt, AccessPurposeJustificationRequired Function()? purposeJustificationRequired, AccessComponentsSchemasSessionDuration Function()? sessionDuration, }) { return AccessPolicyResp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  decision: decision != null ? decision() : this.decision,
  exclude: exclude != null ? exclude() : this.exclude,
  id: id != null ? id() : this.id,
  include: include != null ? include() : this.include,
  name: name != null ? name() : this.name,
  require: require != null ? require() : this.require,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  approvalGroups: approvalGroups != null ? approvalGroups() : this.approvalGroups,
  approvalRequired: approvalRequired != null ? approvalRequired() : this.approvalRequired,
  connectionRules: connectionRules != null ? connectionRules() : this.connectionRules,
  isolationRequired: isolationRequired != null ? isolationRequired() : this.isolationRequired,
  mfaConfig: mfaConfig != null ? mfaConfig() : this.mfaConfig,
  purposeJustificationPrompt: purposeJustificationPrompt != null ? purposeJustificationPrompt() : this.purposeJustificationPrompt,
  purposeJustificationRequired: purposeJustificationRequired != null ? purposeJustificationRequired() : this.purposeJustificationRequired,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyResp &&
          createdAt == other.createdAt &&
          decision == other.decision &&
          listEquals(exclude, other.exclude) &&
          id == other.id &&
          listEquals(include, other.include) &&
          name == other.name &&
          listEquals(require, other.require) &&
          updatedAt == other.updatedAt &&
          listEquals(approvalGroups, other.approvalGroups) &&
          approvalRequired == other.approvalRequired &&
          connectionRules == other.connectionRules &&
          isolationRequired == other.isolationRequired &&
          mfaConfig == other.mfaConfig &&
          purposeJustificationPrompt == other.purposeJustificationPrompt &&
          purposeJustificationRequired == other.purposeJustificationRequired &&
          sessionDuration == other.sessionDuration; } 
@override int get hashCode { return Object.hash(createdAt, decision, Object.hashAll(exclude ?? const []), id, Object.hashAll(include ?? const []), name, Object.hashAll(require ?? const []), updatedAt, Object.hashAll(approvalGroups ?? const []), approvalRequired, connectionRules, isolationRequired, mfaConfig, purposeJustificationPrompt, purposeJustificationRequired, sessionDuration); } 
@override String toString() { return 'AccessPolicyResp(createdAt: $createdAt, decision: $decision, exclude: $exclude, id: $id, include: $include, name: $name, require: $require, updatedAt: $updatedAt, approvalGroups: $approvalGroups, approvalRequired: $approvalRequired, connectionRules: $connectionRules, isolationRequired: $isolationRequired, mfaConfig: $mfaConfig, purposeJustificationPrompt: $purposeJustificationPrompt, purposeJustificationRequired: $purposeJustificationRequired, sessionDuration: $sessionDuration)'; } 
 }
