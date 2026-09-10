// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_default_setup_options.dart';import 'code_scanning_options.dart';import 'code_security_create_configuration_for_enterprise_request_dependency_graph_autosubmit_action_options.dart';/// The enablement status of GitHub Advanced Security features. `enabled` will enable both Code Security and Secret Protection features.
/// 
/// > `[!WARNING]`
/// > `code_security` and `secret_protection` are deprecated values for this field. Prefer the individual `code_security` and `secret_protection` fields to set the status of these features.
/// 
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity {const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'code_security' => codeSecurity,
  'secret_protection' => secretProtection,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity enabled = CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity disabled = CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity codeSecurity = CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._('code_security');

static const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity secretProtection = CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._('secret_protection');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity> values = [enabled, disabled, codeSecurity, secretProtection];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity($value)'; } 
 }
/// The enablement status of GitHub Code Security features.
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity {const CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity enabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity disabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity notSet = CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity($value)'; } 
 }
/// The enablement status of Dependency Graph
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph {const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph enabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph disabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph notSet = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph($value)'; } 
 }
/// The enablement status of Automatic dependency submission
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction {const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction enabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction disabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction notSet = CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction($value)'; } 
 }
/// The enablement status of Dependabot alerts
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts {const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts enabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts disabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts notSet = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts($value)'; } 
 }
/// The enablement status of Dependabot security updates
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates {const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates enabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates disabled = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates notSet = CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates($value)'; } 
 }
/// The enablement status of code scanning default setup
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup {const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup enabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup disabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup notSet = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup($value)'; } 
 }
/// The enablement status of code scanning delegated alert dismissal
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal {const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal enabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal disabled = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal notSet = CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal($value)'; } 
 }
/// The enablement status of GitHub Secret Protection features.
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection($value)'; } 
 }
/// The enablement status of secret scanning
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning($value)'; } 
 }
/// The enablement status of secret scanning push protection
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection($value)'; } 
 }
/// The enablement status of secret scanning validity checks
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks($value)'; } 
 }
/// The enablement status of secret scanning non provider patterns
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns($value)'; } 
 }
/// The enablement status of Copilot secret scanning
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets($value)'; } 
 }
/// The enablement status of secret scanning delegated alert dismissal
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal($value)'; } 
 }
/// The enablement status of secret scanning extended metadata
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata {const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata enabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata disabled = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata notSet = CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata($value)'; } 
 }
/// The enablement status of private vulnerability reporting
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting {const CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting enabled = CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting._('enabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting disabled = CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting._('disabled');

static const CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting notSet = CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting._('not_set');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting($value)'; } 
 }
/// The enforcement status for a security configuration
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement {const CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement._(this.value);

factory CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.fromJson(String json) { return switch (json) {
  'enforced' => enforced,
  'unenforced' => unenforced,
  _ => CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement._(json),
}; }

static const CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement enforced = CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement._('enforced');

static const CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement unenforced = CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement._('unenforced');

static const List<CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement> values = [enforced, unenforced];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement($value)'; } 
 }
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequest {const CodeSecurityCreateConfigurationForEnterpriseRequest({required this.name, required this.description, this.advancedSecurity, this.codeSecurity, this.dependencyGraph, this.dependencyGraphAutosubmitAction, this.dependencyGraphAutosubmitActionOptions, this.dependabotAlerts, this.dependabotSecurityUpdates, this.codeScanningOptions = const Omittable.absent(), this.codeScanningDefaultSetup, this.codeScanningDefaultSetupOptions = const Omittable.absent(), this.codeScanningDelegatedAlertDismissal, this.secretProtection, this.secretScanning, this.secretScanningPushProtection, this.secretScanningValidityChecks, this.secretScanningNonProviderPatterns, this.secretScanningGenericSecrets, this.secretScanningDelegatedAlertDismissal, this.secretScanningExtendedMetadata, this.privateVulnerabilityReporting, this.enforcement, });

factory CodeSecurityCreateConfigurationForEnterpriseRequest.fromJson(Map<String, dynamic> json) { return CodeSecurityCreateConfigurationForEnterpriseRequest(
  name: json['name'] as String,
  description: json['description'] as String,
  advancedSecurity: json['advanced_security'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(json['advanced_security'] as String) : null,
  codeSecurity: json['code_security'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity.fromJson(json['code_security'] as String) : null,
  dependencyGraph: json['dependency_graph'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph.fromJson(json['dependency_graph'] as String) : null,
  dependencyGraphAutosubmitAction: json['dependency_graph_autosubmit_action'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.fromJson(json['dependency_graph_autosubmit_action'] as String) : null,
  dependencyGraphAutosubmitActionOptions: json['dependency_graph_autosubmit_action_options'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions.fromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>) : null,
  dependabotAlerts: json['dependabot_alerts'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts.fromJson(json['dependabot_alerts'] as String) : null,
  dependabotSecurityUpdates: json['dependabot_security_updates'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates.fromJson(json['dependabot_security_updates'] as String) : null,
  codeScanningOptions: json.containsKey('code_scanning_options') ? Omittable(json['code_scanning_options'] != null ? CodeScanningOptions.fromJson(json['code_scanning_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  codeScanningDefaultSetup: json['code_scanning_default_setup'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup.fromJson(json['code_scanning_default_setup'] as String) : null,
  codeScanningDefaultSetupOptions: json.containsKey('code_scanning_default_setup_options') ? Omittable(json['code_scanning_default_setup_options'] != null ? CodeScanningDefaultSetupOptions.fromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  codeScanningDelegatedAlertDismissal: json['code_scanning_delegated_alert_dismissal'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.fromJson(json['code_scanning_delegated_alert_dismissal'] as String) : null,
  secretProtection: json['secret_protection'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection.fromJson(json['secret_protection'] as String) : null,
  secretScanning: json['secret_scanning'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning.fromJson(json['secret_scanning'] as String) : null,
  secretScanningPushProtection: json['secret_scanning_push_protection'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection.fromJson(json['secret_scanning_push_protection'] as String) : null,
  secretScanningValidityChecks: json['secret_scanning_validity_checks'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks.fromJson(json['secret_scanning_validity_checks'] as String) : null,
  secretScanningNonProviderPatterns: json['secret_scanning_non_provider_patterns'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.fromJson(json['secret_scanning_non_provider_patterns'] as String) : null,
  secretScanningGenericSecrets: json['secret_scanning_generic_secrets'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets.fromJson(json['secret_scanning_generic_secrets'] as String) : null,
  secretScanningDelegatedAlertDismissal: json['secret_scanning_delegated_alert_dismissal'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.fromJson(json['secret_scanning_delegated_alert_dismissal'] as String) : null,
  secretScanningExtendedMetadata: json['secret_scanning_extended_metadata'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata.fromJson(json['secret_scanning_extended_metadata'] as String) : null,
  privateVulnerabilityReporting: json['private_vulnerability_reporting'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.fromJson(json['private_vulnerability_reporting'] as String) : null,
  enforcement: json['enforcement'] != null ? CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.fromJson(json['enforcement'] as String) : null,
); }

/// The name of the code security configuration. Must be unique within the enterprise.
final String name;

/// A description of the code security configuration
final String description;

/// The enablement status of GitHub Advanced Security features. `enabled` will enable both Code Security and Secret Protection features.
/// 
/// > `[!WARNING]`
/// > `code_security` and `secret_protection` are deprecated values for this field. Prefer the individual `code_security` and `secret_protection` fields to set the status of these features.
/// 
final CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity? advancedSecurity;

/// The enablement status of GitHub Code Security features.
final CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity? codeSecurity;

/// The enablement status of Dependency Graph
final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph? dependencyGraph;

/// The enablement status of Automatic dependency submission
final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction? dependencyGraphAutosubmitAction;

/// Feature options for Automatic dependency submission
final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions? dependencyGraphAutosubmitActionOptions;

/// The enablement status of Dependabot alerts
final CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts? dependabotAlerts;

/// The enablement status of Dependabot security updates
final CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates? dependabotSecurityUpdates;

final Omittable<CodeScanningOptions?> codeScanningOptions;

/// The enablement status of code scanning default setup
final CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup? codeScanningDefaultSetup;

final Omittable<CodeScanningDefaultSetupOptions?> codeScanningDefaultSetupOptions;

/// The enablement status of code scanning delegated alert dismissal
final CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal? codeScanningDelegatedAlertDismissal;

/// The enablement status of GitHub Secret Protection features.
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection? secretProtection;

/// The enablement status of secret scanning
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning? secretScanning;

/// The enablement status of secret scanning push protection
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection? secretScanningPushProtection;

/// The enablement status of secret scanning validity checks
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks? secretScanningValidityChecks;

/// The enablement status of secret scanning non provider patterns
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns? secretScanningNonProviderPatterns;

/// The enablement status of Copilot secret scanning
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets? secretScanningGenericSecrets;

/// The enablement status of secret scanning delegated alert dismissal
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal? secretScanningDelegatedAlertDismissal;

/// The enablement status of secret scanning extended metadata
final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata? secretScanningExtendedMetadata;

/// The enablement status of private vulnerability reporting
final CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting? privateVulnerabilityReporting;

/// The enforcement status for a security configuration
final CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement? enforcement;

/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity get advancedSecurityOrDefault { return advancedSecurity ?? CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph get dependencyGraphOrDefault { return dependencyGraph ?? CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph.fromJson('enabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction get dependencyGraphAutosubmitActionOrDefault { return dependencyGraphAutosubmitAction ?? CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts get dependabotAlertsOrDefault { return dependabotAlerts ?? CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates get dependabotSecurityUpdatesOrDefault { return dependabotSecurityUpdates ?? CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup get codeScanningDefaultSetupOrDefault { return codeScanningDefaultSetup ?? CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal get codeScanningDelegatedAlertDismissalOrDefault { return codeScanningDelegatedAlertDismissal ?? CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning get secretScanningOrDefault { return secretScanning ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection get secretScanningPushProtectionOrDefault { return secretScanningPushProtection ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks get secretScanningValidityChecksOrDefault { return secretScanningValidityChecks ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns get secretScanningNonProviderPatternsOrDefault { return secretScanningNonProviderPatterns ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets get secretScanningGenericSecretsOrDefault { return secretScanningGenericSecrets ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal get secretScanningDelegatedAlertDismissalOrDefault { return secretScanningDelegatedAlertDismissal ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata get secretScanningExtendedMetadataOrDefault { return secretScanningExtendedMetadata ?? CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting get privateVulnerabilityReportingOrDefault { return privateVulnerabilityReporting ?? CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.fromJson('disabled'); } 
/// The value with the schema default applied when absent.
CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement get enforcementOrDefault { return enforcement ?? CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.fromJson('enforced'); } 
Map<String, dynamic> toJson() { return {
  'name': name,
  'description': description,
  if (advancedSecurity != null) 'advanced_security': advancedSecurity?.toJson(),
  if (codeSecurity != null) 'code_security': codeSecurity?.toJson(),
  if (dependencyGraph != null) 'dependency_graph': dependencyGraph?.toJson(),
  if (dependencyGraphAutosubmitAction != null) 'dependency_graph_autosubmit_action': dependencyGraphAutosubmitAction?.toJson(),
  if (dependencyGraphAutosubmitActionOptions != null) 'dependency_graph_autosubmit_action_options': dependencyGraphAutosubmitActionOptions?.toJson(),
  if (dependabotAlerts != null) 'dependabot_alerts': dependabotAlerts?.toJson(),
  if (dependabotSecurityUpdates != null) 'dependabot_security_updates': dependabotSecurityUpdates?.toJson(),
  if (codeScanningOptions.isPresent) 'code_scanning_options': codeScanningOptions.value?.toJson(),
  if (codeScanningDefaultSetup != null) 'code_scanning_default_setup': codeScanningDefaultSetup?.toJson(),
  if (codeScanningDefaultSetupOptions.isPresent) 'code_scanning_default_setup_options': codeScanningDefaultSetupOptions.value?.toJson(),
  if (codeScanningDelegatedAlertDismissal != null) 'code_scanning_delegated_alert_dismissal': codeScanningDelegatedAlertDismissal?.toJson(),
  if (secretProtection != null) 'secret_protection': secretProtection?.toJson(),
  if (secretScanning != null) 'secret_scanning': secretScanning?.toJson(),
  if (secretScanningPushProtection != null) 'secret_scanning_push_protection': secretScanningPushProtection?.toJson(),
  if (secretScanningValidityChecks != null) 'secret_scanning_validity_checks': secretScanningValidityChecks?.toJson(),
  if (secretScanningNonProviderPatterns != null) 'secret_scanning_non_provider_patterns': secretScanningNonProviderPatterns?.toJson(),
  if (secretScanningGenericSecrets != null) 'secret_scanning_generic_secrets': secretScanningGenericSecrets?.toJson(),
  if (secretScanningDelegatedAlertDismissal != null) 'secret_scanning_delegated_alert_dismissal': secretScanningDelegatedAlertDismissal?.toJson(),
  if (secretScanningExtendedMetadata != null) 'secret_scanning_extended_metadata': secretScanningExtendedMetadata?.toJson(),
  if (privateVulnerabilityReporting != null) 'private_vulnerability_reporting': privateVulnerabilityReporting?.toJson(),
  if (enforcement != null) 'enforcement': enforcement?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('description') && json['description'] is String; } 
CodeSecurityCreateConfigurationForEnterpriseRequest copyWith({String? name, String? description, CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity? Function()? advancedSecurity, CodeSecurityCreateConfigurationForEnterpriseRequestCodeSecurity? Function()? codeSecurity, CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph? Function()? dependencyGraph, CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction? Function()? dependencyGraphAutosubmitAction, CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions? Function()? dependencyGraphAutosubmitActionOptions, CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts? Function()? dependabotAlerts, CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates? Function()? dependabotSecurityUpdates, Omittable<CodeScanningOptions?>? codeScanningOptions, CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup? Function()? codeScanningDefaultSetup, Omittable<CodeScanningDefaultSetupOptions?>? codeScanningDefaultSetupOptions, CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal? Function()? codeScanningDelegatedAlertDismissal, CodeSecurityCreateConfigurationForEnterpriseRequestSecretProtection? Function()? secretProtection, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning? Function()? secretScanning, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection? Function()? secretScanningPushProtection, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks? Function()? secretScanningValidityChecks, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns? Function()? secretScanningNonProviderPatterns, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets? Function()? secretScanningGenericSecrets, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal? Function()? secretScanningDelegatedAlertDismissal, CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningExtendedMetadata? Function()? secretScanningExtendedMetadata, CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting? Function()? privateVulnerabilityReporting, CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement? Function()? enforcement, }) { return CodeSecurityCreateConfigurationForEnterpriseRequest(
  name: name ?? this.name,
  description: description ?? this.description,
  advancedSecurity: advancedSecurity != null ? advancedSecurity() : this.advancedSecurity,
  codeSecurity: codeSecurity != null ? codeSecurity() : this.codeSecurity,
  dependencyGraph: dependencyGraph != null ? dependencyGraph() : this.dependencyGraph,
  dependencyGraphAutosubmitAction: dependencyGraphAutosubmitAction != null ? dependencyGraphAutosubmitAction() : this.dependencyGraphAutosubmitAction,
  dependencyGraphAutosubmitActionOptions: dependencyGraphAutosubmitActionOptions != null ? dependencyGraphAutosubmitActionOptions() : this.dependencyGraphAutosubmitActionOptions,
  dependabotAlerts: dependabotAlerts != null ? dependabotAlerts() : this.dependabotAlerts,
  dependabotSecurityUpdates: dependabotSecurityUpdates != null ? dependabotSecurityUpdates() : this.dependabotSecurityUpdates,
  codeScanningOptions: codeScanningOptions ?? this.codeScanningOptions,
  codeScanningDefaultSetup: codeScanningDefaultSetup != null ? codeScanningDefaultSetup() : this.codeScanningDefaultSetup,
  codeScanningDefaultSetupOptions: codeScanningDefaultSetupOptions ?? this.codeScanningDefaultSetupOptions,
  codeScanningDelegatedAlertDismissal: codeScanningDelegatedAlertDismissal != null ? codeScanningDelegatedAlertDismissal() : this.codeScanningDelegatedAlertDismissal,
  secretProtection: secretProtection != null ? secretProtection() : this.secretProtection,
  secretScanning: secretScanning != null ? secretScanning() : this.secretScanning,
  secretScanningPushProtection: secretScanningPushProtection != null ? secretScanningPushProtection() : this.secretScanningPushProtection,
  secretScanningValidityChecks: secretScanningValidityChecks != null ? secretScanningValidityChecks() : this.secretScanningValidityChecks,
  secretScanningNonProviderPatterns: secretScanningNonProviderPatterns != null ? secretScanningNonProviderPatterns() : this.secretScanningNonProviderPatterns,
  secretScanningGenericSecrets: secretScanningGenericSecrets != null ? secretScanningGenericSecrets() : this.secretScanningGenericSecrets,
  secretScanningDelegatedAlertDismissal: secretScanningDelegatedAlertDismissal != null ? secretScanningDelegatedAlertDismissal() : this.secretScanningDelegatedAlertDismissal,
  secretScanningExtendedMetadata: secretScanningExtendedMetadata != null ? secretScanningExtendedMetadata() : this.secretScanningExtendedMetadata,
  privateVulnerabilityReporting: privateVulnerabilityReporting != null ? privateVulnerabilityReporting() : this.privateVulnerabilityReporting,
  enforcement: enforcement != null ? enforcement() : this.enforcement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityCreateConfigurationForEnterpriseRequest &&
          name == other.name &&
          description == other.description &&
          advancedSecurity == other.advancedSecurity &&
          codeSecurity == other.codeSecurity &&
          dependencyGraph == other.dependencyGraph &&
          dependencyGraphAutosubmitAction == other.dependencyGraphAutosubmitAction &&
          dependencyGraphAutosubmitActionOptions == other.dependencyGraphAutosubmitActionOptions &&
          dependabotAlerts == other.dependabotAlerts &&
          dependabotSecurityUpdates == other.dependabotSecurityUpdates &&
          codeScanningOptions == other.codeScanningOptions &&
          codeScanningDefaultSetup == other.codeScanningDefaultSetup &&
          codeScanningDefaultSetupOptions == other.codeScanningDefaultSetupOptions &&
          codeScanningDelegatedAlertDismissal == other.codeScanningDelegatedAlertDismissal &&
          secretProtection == other.secretProtection &&
          secretScanning == other.secretScanning &&
          secretScanningPushProtection == other.secretScanningPushProtection &&
          secretScanningValidityChecks == other.secretScanningValidityChecks &&
          secretScanningNonProviderPatterns == other.secretScanningNonProviderPatterns &&
          secretScanningGenericSecrets == other.secretScanningGenericSecrets &&
          secretScanningDelegatedAlertDismissal == other.secretScanningDelegatedAlertDismissal &&
          secretScanningExtendedMetadata == other.secretScanningExtendedMetadata &&
          privateVulnerabilityReporting == other.privateVulnerabilityReporting &&
          enforcement == other.enforcement; } 
@override int get hashCode { return Object.hashAll([name, description, advancedSecurity, codeSecurity, dependencyGraph, dependencyGraphAutosubmitAction, dependencyGraphAutosubmitActionOptions, dependabotAlerts, dependabotSecurityUpdates, codeScanningOptions, codeScanningDefaultSetup, codeScanningDefaultSetupOptions, codeScanningDelegatedAlertDismissal, secretProtection, secretScanning, secretScanningPushProtection, secretScanningValidityChecks, secretScanningNonProviderPatterns, secretScanningGenericSecrets, secretScanningDelegatedAlertDismissal, secretScanningExtendedMetadata, privateVulnerabilityReporting, enforcement]); } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequest(name: $name, description: $description, advancedSecurity: $advancedSecurity, codeSecurity: $codeSecurity, dependencyGraph: $dependencyGraph, dependencyGraphAutosubmitAction: $dependencyGraphAutosubmitAction, dependencyGraphAutosubmitActionOptions: $dependencyGraphAutosubmitActionOptions, dependabotAlerts: $dependabotAlerts, dependabotSecurityUpdates: $dependabotSecurityUpdates, codeScanningOptions: $codeScanningOptions, codeScanningDefaultSetup: $codeScanningDefaultSetup, codeScanningDefaultSetupOptions: $codeScanningDefaultSetupOptions, codeScanningDelegatedAlertDismissal: $codeScanningDelegatedAlertDismissal, secretProtection: $secretProtection, secretScanning: $secretScanning, secretScanningPushProtection: $secretScanningPushProtection, secretScanningValidityChecks: $secretScanningValidityChecks, secretScanningNonProviderPatterns: $secretScanningNonProviderPatterns, secretScanningGenericSecrets: $secretScanningGenericSecrets, secretScanningDelegatedAlertDismissal: $secretScanningDelegatedAlertDismissal, secretScanningExtendedMetadata: $secretScanningExtendedMetadata, privateVulnerabilityReporting: $privateVulnerabilityReporting, enforcement: $enforcement)'; } 
 }
