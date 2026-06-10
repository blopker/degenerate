// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_approval_group.dart';import 'access_approval_required.dart';import 'access_components_schemas_session_duration.dart';import 'access_connection_rules.dart';import 'access_decision.dart';import 'access_isolation_required.dart';import 'access_mfa_config.dart';import 'access_policy_components_schemas_name.dart';import 'access_precedence.dart';import 'access_purpose_justification_prompt.dart';import 'access_purpose_justification_required.dart';import 'access_rule.dart';@immutable final class AccessAppPolicyRequest {const AccessAppPolicyRequest({required this.decision, required this.include, required this.name, this.approvalGroups, this.approvalRequired, this.connectionRules, this.isolationRequired, this.mfaConfig, this.purposeJustificationPrompt, this.purposeJustificationRequired, this.sessionDuration, this.exclude, this.require, this.precedence, });

factory AccessAppPolicyRequest.fromJson(Map<String, dynamic> json) { return AccessAppPolicyRequest(
  approvalGroups: (json['approval_groups'] as List<dynamic>?)?.map((e) => AccessApprovalGroup.fromJson(e as Map<String, dynamic>)).toList(),
  approvalRequired: json['approval_required'] != null ? AccessApprovalRequired.fromJson(json['approval_required'] as bool) : null,
  connectionRules: json['connection_rules'] != null ? AccessConnectionRules.fromJson(json['connection_rules'] as Map<String, dynamic>) : null,
  isolationRequired: json['isolation_required'] != null ? AccessIsolationRequired.fromJson(json['isolation_required'] as bool) : null,
  mfaConfig: json['mfa_config'] != null ? AccessMfaConfig.fromJson(json['mfa_config'] as Map<String, dynamic>) : null,
  purposeJustificationPrompt: json['purpose_justification_prompt'] != null ? AccessPurposeJustificationPrompt.fromJson(json['purpose_justification_prompt'] as String) : null,
  purposeJustificationRequired: json['purpose_justification_required'] != null ? AccessPurposeJustificationRequired.fromJson(json['purpose_justification_required'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  decision: AccessDecision.fromJson(json['decision'] as String),
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  include: (json['include'] as List<dynamic>).map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  name: AccessPolicyComponentsSchemasName.fromJson(json['name'] as String),
  require: (json['require'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  precedence: json['precedence'] != null ? AccessPrecedence.fromJson(json['precedence'] as num) : null,
); }

final List<AccessApprovalGroup>? approvalGroups;

final AccessApprovalRequired? approvalRequired;

final AccessConnectionRules? connectionRules;

final AccessIsolationRequired? isolationRequired;

final AccessMfaConfig? mfaConfig;

final AccessPurposeJustificationPrompt? purposeJustificationPrompt;

final AccessPurposeJustificationRequired? purposeJustificationRequired;

final AccessComponentsSchemasSessionDuration? sessionDuration;

final AccessDecision decision;

final List<AccessRule>? exclude;

final List<AccessRule> include;

final AccessPolicyComponentsSchemasName name;

final List<AccessRule>? require;

final AccessPrecedence? precedence;

Map<String, dynamic> toJson() { return {
  if (approvalGroups != null) 'approval_groups': approvalGroups?.map((e) => e.toJson()).toList(),
  if (approvalRequired != null) 'approval_required': approvalRequired?.toJson(),
  if (connectionRules != null) 'connection_rules': connectionRules?.toJson(),
  if (isolationRequired != null) 'isolation_required': isolationRequired?.toJson(),
  if (mfaConfig != null) 'mfa_config': mfaConfig?.toJson(),
  if (purposeJustificationPrompt != null) 'purpose_justification_prompt': purposeJustificationPrompt?.toJson(),
  if (purposeJustificationRequired != null) 'purpose_justification_required': purposeJustificationRequired?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'decision': decision.toJson(),
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  'include': include.map((e) => e.toJson()).toList(),
  'name': name.toJson(),
  if (require != null) 'require': require?.map((e) => e.toJson()).toList(),
  if (precedence != null) 'precedence': precedence?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('decision') &&
      json.containsKey('include') &&
      json.containsKey('name'); } 
AccessAppPolicyRequest copyWith({List<AccessApprovalGroup> Function()? approvalGroups, AccessApprovalRequired Function()? approvalRequired, AccessConnectionRules Function()? connectionRules, AccessIsolationRequired Function()? isolationRequired, AccessMfaConfig Function()? mfaConfig, AccessPurposeJustificationPrompt Function()? purposeJustificationPrompt, AccessPurposeJustificationRequired Function()? purposeJustificationRequired, AccessComponentsSchemasSessionDuration Function()? sessionDuration, AccessDecision? decision, List<AccessRule> Function()? exclude, List<AccessRule>? include, AccessPolicyComponentsSchemasName? name, List<AccessRule> Function()? require, AccessPrecedence Function()? precedence, }) { return AccessAppPolicyRequest(
  approvalGroups: approvalGroups != null ? approvalGroups() : this.approvalGroups,
  approvalRequired: approvalRequired != null ? approvalRequired() : this.approvalRequired,
  connectionRules: connectionRules != null ? connectionRules() : this.connectionRules,
  isolationRequired: isolationRequired != null ? isolationRequired() : this.isolationRequired,
  mfaConfig: mfaConfig != null ? mfaConfig() : this.mfaConfig,
  purposeJustificationPrompt: purposeJustificationPrompt != null ? purposeJustificationPrompt() : this.purposeJustificationPrompt,
  purposeJustificationRequired: purposeJustificationRequired != null ? purposeJustificationRequired() : this.purposeJustificationRequired,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  decision: decision ?? this.decision,
  exclude: exclude != null ? exclude() : this.exclude,
  include: include ?? this.include,
  name: name ?? this.name,
  require: require != null ? require() : this.require,
  precedence: precedence != null ? precedence() : this.precedence,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPolicyRequest &&
          listEquals(approvalGroups, other.approvalGroups) &&
          approvalRequired == other.approvalRequired &&
          connectionRules == other.connectionRules &&
          isolationRequired == other.isolationRequired &&
          mfaConfig == other.mfaConfig &&
          purposeJustificationPrompt == other.purposeJustificationPrompt &&
          purposeJustificationRequired == other.purposeJustificationRequired &&
          sessionDuration == other.sessionDuration &&
          decision == other.decision &&
          listEquals(exclude, other.exclude) &&
          listEquals(include, other.include) &&
          name == other.name &&
          listEquals(require, other.require) &&
          precedence == other.precedence; } 
@override int get hashCode { return Object.hash(Object.hashAll(approvalGroups ?? const []), approvalRequired, connectionRules, isolationRequired, mfaConfig, purposeJustificationPrompt, purposeJustificationRequired, sessionDuration, decision, Object.hashAll(exclude ?? const []), Object.hashAll(include), name, Object.hashAll(require ?? const []), precedence); } 
@override String toString() { return 'AccessAppPolicyRequest(approvalGroups: $approvalGroups, approvalRequired: $approvalRequired, connectionRules: $connectionRules, isolationRequired: $isolationRequired, mfaConfig: $mfaConfig, purposeJustificationPrompt: $purposeJustificationPrompt, purposeJustificationRequired: $purposeJustificationRequired, sessionDuration: $sessionDuration, decision: $decision, exclude: $exclude, include: $include, name: $name, require: $require, precedence: $precedence)'; } 
 }
