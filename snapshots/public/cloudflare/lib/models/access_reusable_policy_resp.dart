// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_approval_group.dart';import 'access_approval_required.dart';import 'access_components_schemas_session_duration.dart';import 'access_connection_rules.dart';import 'access_isolation_required.dart';import 'access_mfa_config.dart';import 'access_purpose_justification_prompt.dart';import 'access_purpose_justification_required.dart';/// Number of access applications currently using this policy.
extension type const AccessAppCount(int value) {
factory AccessAppCount.fromJson(num json) => AccessAppCount(json.toInt());

num toJson() => value;

}
final class AccessReusablePolicyResp {const AccessReusablePolicyResp({this.approvalGroups, this.approvalRequired, this.connectionRules, this.isolationRequired, this.mfaConfig, this.purposeJustificationPrompt, this.purposeJustificationRequired, this.sessionDuration, this.appCount, this.reusable, });

factory AccessReusablePolicyResp.fromJson(Map<String, dynamic> json) { return AccessReusablePolicyResp(
  approvalGroups: (json['approval_groups'] as List<dynamic>?)?.map((e) => AccessApprovalGroup.fromJson(e as Map<String, dynamic>)).toList(),
  approvalRequired: json['approval_required'] != null ? AccessApprovalRequired.fromJson(json['approval_required'] as bool) : null,
  connectionRules: json['connection_rules'] != null ? AccessConnectionRules.fromJson(json['connection_rules'] as Map<String, dynamic>) : null,
  isolationRequired: json['isolation_required'] != null ? AccessIsolationRequired.fromJson(json['isolation_required'] as bool) : null,
  mfaConfig: json['mfa_config'] != null ? AccessMfaConfig.fromJson(json['mfa_config'] as Map<String, dynamic>) : null,
  purposeJustificationPrompt: json['purpose_justification_prompt'] != null ? AccessPurposeJustificationPrompt.fromJson(json['purpose_justification_prompt'] as String) : null,
  purposeJustificationRequired: json['purpose_justification_required'] != null ? AccessPurposeJustificationRequired.fromJson(json['purpose_justification_required'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  appCount: json['app_count'] != null ? AccessAppCount.fromJson(json['app_count'] as num) : null,
  reusable: json['reusable'] as bool?,
); }

/// Administrators who can approve a temporary authentication request.
final List<AccessApprovalGroup>? approvalGroups;

/// Requires the user to request access from an administrator at the start of each session.
final AccessApprovalRequired? approvalRequired;

final AccessConnectionRules? connectionRules;

/// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
final AccessIsolationRequired? isolationRequired;

final AccessMfaConfig? mfaConfig;

/// A custom message that will appear on the purpose justification screen.
final AccessPurposeJustificationPrompt? purposeJustificationPrompt;

/// Require users to enter a justification when they log in to the application.
final AccessPurposeJustificationRequired? purposeJustificationRequired;

/// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
final AccessComponentsSchemasSessionDuration? sessionDuration;

/// Number of access applications currently using this policy.
final AccessAppCount? appCount;

final bool? reusable;

Map<String, dynamic> toJson() { return {
  if (approvalGroups != null) 'approval_groups': approvalGroups?.map((e) => e.toJson()).toList(),
  if (approvalRequired != null) 'approval_required': approvalRequired?.toJson(),
  if (connectionRules != null) 'connection_rules': connectionRules?.toJson(),
  if (isolationRequired != null) 'isolation_required': isolationRequired?.toJson(),
  if (mfaConfig != null) 'mfa_config': mfaConfig?.toJson(),
  if (purposeJustificationPrompt != null) 'purpose_justification_prompt': purposeJustificationPrompt?.toJson(),
  if (purposeJustificationRequired != null) 'purpose_justification_required': purposeJustificationRequired?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  if (appCount != null) 'app_count': appCount?.toJson(),
  'reusable': ?reusable,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'approval_groups', 'approval_required', 'connection_rules', 'isolation_required', 'mfa_config', 'purpose_justification_prompt', 'purpose_justification_required', 'session_duration', 'app_count', 'reusable'}.contains(key)); } 
AccessReusablePolicyResp copyWith({List<AccessApprovalGroup> Function()? approvalGroups, AccessApprovalRequired Function()? approvalRequired, AccessConnectionRules Function()? connectionRules, AccessIsolationRequired Function()? isolationRequired, AccessMfaConfig Function()? mfaConfig, AccessPurposeJustificationPrompt Function()? purposeJustificationPrompt, AccessPurposeJustificationRequired Function()? purposeJustificationRequired, AccessComponentsSchemasSessionDuration Function()? sessionDuration, AccessAppCount Function()? appCount, bool Function()? reusable, }) { return AccessReusablePolicyResp(
  approvalGroups: approvalGroups != null ? approvalGroups() : this.approvalGroups,
  approvalRequired: approvalRequired != null ? approvalRequired() : this.approvalRequired,
  connectionRules: connectionRules != null ? connectionRules() : this.connectionRules,
  isolationRequired: isolationRequired != null ? isolationRequired() : this.isolationRequired,
  mfaConfig: mfaConfig != null ? mfaConfig() : this.mfaConfig,
  purposeJustificationPrompt: purposeJustificationPrompt != null ? purposeJustificationPrompt() : this.purposeJustificationPrompt,
  purposeJustificationRequired: purposeJustificationRequired != null ? purposeJustificationRequired() : this.purposeJustificationRequired,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  appCount: appCount != null ? appCount() : this.appCount,
  reusable: reusable != null ? reusable() : this.reusable,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessReusablePolicyResp &&
          listEquals(approvalGroups, other.approvalGroups) &&
          approvalRequired == other.approvalRequired &&
          connectionRules == other.connectionRules &&
          isolationRequired == other.isolationRequired &&
          mfaConfig == other.mfaConfig &&
          purposeJustificationPrompt == other.purposeJustificationPrompt &&
          purposeJustificationRequired == other.purposeJustificationRequired &&
          sessionDuration == other.sessionDuration &&
          appCount == other.appCount &&
          reusable == other.reusable; } 
@override int get hashCode { return Object.hash(Object.hashAll(approvalGroups ?? const []), approvalRequired, connectionRules, isolationRequired, mfaConfig, purposeJustificationPrompt, purposeJustificationRequired, sessionDuration, appCount, reusable); } 
@override String toString() { return 'AccessReusablePolicyResp(approvalGroups: $approvalGroups, approvalRequired: $approvalRequired, connectionRules: $connectionRules, isolationRequired: $isolationRequired, mfaConfig: $mfaConfig, purposeJustificationPrompt: $purposeJustificationPrompt, purposeJustificationRequired: $purposeJustificationRequired, sessionDuration: $sessionDuration, appCount: $appCount, reusable: $reusable)'; } 
 }
