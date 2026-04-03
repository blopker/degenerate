// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_default_setup_options.dart';import 'code_scanning_options.dart';import 'code_security_update_enterprise_configuration_request_dependency_graph_autosubmit_action_options.dart';/// The enablement status of GitHub Advanced Security features. `enabled` will enable both Code Security and Secret Protection features.
/// 
/// > [!WARNING]
/// > `code_security` and `secret_protection` are deprecated values for this field. Prefer the individual `code_security` and `secret_protection` fields to set the status of these features.
/// 
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity {const CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'code_security' => codeSecurity,
  'secret_protection' => secretProtection,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity enabled = CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity disabled = CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity codeSecurity = CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._('code_security');

static const CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity secretProtection = CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity._('secret_protection');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity> values = [enabled, disabled, codeSecurity, secretProtection];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity($value)'; } 
 }
/// The enablement status of GitHub Code Security features.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity {const CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity enabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity disabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity notSet = CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity($value)'; } 
 }
/// The enablement status of Dependency Graph
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph {const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph enabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph disabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph notSet = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph($value)'; } 
 }
/// The enablement status of Automatic dependency submission
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction {const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction enabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction disabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction notSet = CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction($value)'; } 
 }
/// The enablement status of Dependabot alerts
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts {const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts enabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts disabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts notSet = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts($value)'; } 
 }
/// The enablement status of Dependabot security updates
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates {const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates enabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates disabled = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates notSet = CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates($value)'; } 
 }
/// The enablement status of code scanning default setup
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup {const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup enabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup disabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup notSet = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup($value)'; } 
 }
/// The enablement status of code scanning delegated alert dismissal
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal {const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal enabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal disabled = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal notSet = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal($value)'; } 
 }
/// The enablement status of GitHub Secret Protection features.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection($value)'; } 
 }
/// The enablement status of secret scanning
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning($value)'; } 
 }
/// The enablement status of secret scanning push protection
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection($value)'; } 
 }
/// The enablement status of secret scanning validity checks
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks($value)'; } 
 }
/// The enablement status of secret scanning non-provider patterns
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns($value)'; } 
 }
/// The enablement status of Copilot secret scanning
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets($value)'; } 
 }
/// The enablement status of secret scanning delegated alert dismissal
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal($value)'; } 
 }
/// The enablement status of secret scanning extended metadata
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata {const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata enabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata disabled = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata notSet = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata($value)'; } 
 }
/// The enablement status of private vulnerability reporting
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting {const CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'not_set' => notSet,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting enabled = CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting._('enabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting disabled = CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting._('disabled');

static const CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting notSet = CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting._('not_set');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting> values = [enabled, disabled, notSet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting($value)'; } 
 }
/// The enforcement status for a security configuration
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement {const CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement._(this.value);

factory CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement.fromJson(String json) { return switch (json) {
  'enforced' => enforced,
  'unenforced' => unenforced,
  _ => CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement._(json),
}; }

static const CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement enforced = CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement._('enforced');

static const CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement unenforced = CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement._('unenforced');

static const List<CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement> values = [enforced, unenforced];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement($value)'; } 
 }
@immutable final class CodeSecurityUpdateEnterpriseConfigurationRequest {const CodeSecurityUpdateEnterpriseConfigurationRequest({this.name, this.description, this.advancedSecurity, this.codeSecurity, this.dependencyGraph, this.dependencyGraphAutosubmitAction, this.dependencyGraphAutosubmitActionOptions, this.dependabotAlerts, this.dependabotSecurityUpdates, this.codeScanningDefaultSetup, this.codeScanningDefaultSetupOptions, this.codeScanningOptions, this.codeScanningDelegatedAlertDismissal = CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.disabled, this.secretProtection, this.secretScanning, this.secretScanningPushProtection, this.secretScanningValidityChecks, this.secretScanningNonProviderPatterns, this.secretScanningGenericSecrets = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets.disabled, this.secretScanningDelegatedAlertDismissal = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.disabled, this.secretScanningExtendedMetadata = CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata.disabled, this.privateVulnerabilityReporting, this.enforcement, });

factory CodeSecurityUpdateEnterpriseConfigurationRequest.fromJson(Map<String, dynamic> json) { return CodeSecurityUpdateEnterpriseConfigurationRequest(
  name: json['name'] as String?,
  description: json['description'] as String?,
  advancedSecurity: json['advanced_security'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity.fromJson(json['advanced_security'] as String) : null,
  codeSecurity: json['code_security'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity.fromJson(json['code_security'] as String) : null,
  dependencyGraph: json['dependency_graph'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph.fromJson(json['dependency_graph'] as String) : null,
  dependencyGraphAutosubmitAction: json['dependency_graph_autosubmit_action'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction.fromJson(json['dependency_graph_autosubmit_action'] as String) : null,
  dependencyGraphAutosubmitActionOptions: json['dependency_graph_autosubmit_action_options'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitActionOptions.fromJson(json['dependency_graph_autosubmit_action_options'] as Map<String, dynamic>) : null,
  dependabotAlerts: json['dependabot_alerts'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts.fromJson(json['dependabot_alerts'] as String) : null,
  dependabotSecurityUpdates: json['dependabot_security_updates'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates.fromJson(json['dependabot_security_updates'] as String) : null,
  codeScanningDefaultSetup: json['code_scanning_default_setup'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup.fromJson(json['code_scanning_default_setup'] as String) : null,
  codeScanningDefaultSetupOptions: json['code_scanning_default_setup_options'] != null ? CodeScanningDefaultSetupOptions.fromJson(json['code_scanning_default_setup_options'] as Map<String, dynamic>) : null,
  codeScanningOptions: json['code_scanning_options'] != null ? CodeScanningOptions.fromJson(json['code_scanning_options'] as Map<String, dynamic>) : null,
  codeScanningDelegatedAlertDismissal: json.containsKey('code_scanning_delegated_alert_dismissal') ? CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.fromJson(json['code_scanning_delegated_alert_dismissal'] as String) : CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal.disabled,
  secretProtection: json['secret_protection'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection.fromJson(json['secret_protection'] as String) : null,
  secretScanning: json['secret_scanning'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning.fromJson(json['secret_scanning'] as String) : null,
  secretScanningPushProtection: json['secret_scanning_push_protection'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection.fromJson(json['secret_scanning_push_protection'] as String) : null,
  secretScanningValidityChecks: json['secret_scanning_validity_checks'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks.fromJson(json['secret_scanning_validity_checks'] as String) : null,
  secretScanningNonProviderPatterns: json['secret_scanning_non_provider_patterns'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.fromJson(json['secret_scanning_non_provider_patterns'] as String) : null,
  secretScanningGenericSecrets: json.containsKey('secret_scanning_generic_secrets') ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets.fromJson(json['secret_scanning_generic_secrets'] as String) : CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets.disabled,
  secretScanningDelegatedAlertDismissal: json.containsKey('secret_scanning_delegated_alert_dismissal') ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(json['secret_scanning_delegated_alert_dismissal'] as String) : CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.disabled,
  secretScanningExtendedMetadata: json.containsKey('secret_scanning_extended_metadata') ? CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata.fromJson(json['secret_scanning_extended_metadata'] as String) : CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata.disabled,
  privateVulnerabilityReporting: json['private_vulnerability_reporting'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting.fromJson(json['private_vulnerability_reporting'] as String) : null,
  enforcement: json['enforcement'] != null ? CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement.fromJson(json['enforcement'] as String) : null,
); }

/// The name of the code security configuration. Must be unique across the enterprise.
final String? name;

/// A description of the code security configuration
final String? description;

/// The enablement status of GitHub Advanced Security features. `enabled` will enable both Code Security and Secret Protection features.
/// 
/// > [!WARNING]
/// > `code_security` and `secret_protection` are deprecated values for this field. Prefer the individual `code_security` and `secret_protection` fields to set the status of these features.
/// 
final CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity? advancedSecurity;

/// The enablement status of GitHub Code Security features.
final CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity? codeSecurity;

/// The enablement status of Dependency Graph
final CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph? dependencyGraph;

/// The enablement status of Automatic dependency submission
final CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction? dependencyGraphAutosubmitAction;

/// Feature options for Automatic dependency submission
final CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitActionOptions? dependencyGraphAutosubmitActionOptions;

/// The enablement status of Dependabot alerts
final CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts? dependabotAlerts;

/// The enablement status of Dependabot security updates
final CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates? dependabotSecurityUpdates;

/// The enablement status of code scanning default setup
final CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup? codeScanningDefaultSetup;

final CodeScanningDefaultSetupOptions? codeScanningDefaultSetupOptions;

final CodeScanningOptions? codeScanningOptions;

/// The enablement status of code scanning delegated alert dismissal
final CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal codeScanningDelegatedAlertDismissal;

/// The enablement status of GitHub Secret Protection features.
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection? secretProtection;

/// The enablement status of secret scanning
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning? secretScanning;

/// The enablement status of secret scanning push protection
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection? secretScanningPushProtection;

/// The enablement status of secret scanning validity checks
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks? secretScanningValidityChecks;

/// The enablement status of secret scanning non-provider patterns
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns? secretScanningNonProviderPatterns;

/// The enablement status of Copilot secret scanning
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets secretScanningGenericSecrets;

/// The enablement status of secret scanning delegated alert dismissal
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal secretScanningDelegatedAlertDismissal;

/// The enablement status of secret scanning extended metadata
final CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata secretScanningExtendedMetadata;

/// The enablement status of private vulnerability reporting
final CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting? privateVulnerabilityReporting;

/// The enforcement status for a security configuration
final CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement? enforcement;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'description': ?description,
  if (advancedSecurity != null) 'advanced_security': advancedSecurity?.toJson(),
  if (codeSecurity != null) 'code_security': codeSecurity?.toJson(),
  if (dependencyGraph != null) 'dependency_graph': dependencyGraph?.toJson(),
  if (dependencyGraphAutosubmitAction != null) 'dependency_graph_autosubmit_action': dependencyGraphAutosubmitAction?.toJson(),
  if (dependencyGraphAutosubmitActionOptions != null) 'dependency_graph_autosubmit_action_options': dependencyGraphAutosubmitActionOptions?.toJson(),
  if (dependabotAlerts != null) 'dependabot_alerts': dependabotAlerts?.toJson(),
  if (dependabotSecurityUpdates != null) 'dependabot_security_updates': dependabotSecurityUpdates?.toJson(),
  if (codeScanningDefaultSetup != null) 'code_scanning_default_setup': codeScanningDefaultSetup?.toJson(),
  if (codeScanningDefaultSetupOptions != null) 'code_scanning_default_setup_options': codeScanningDefaultSetupOptions?.toJson(),
  if (codeScanningOptions != null) 'code_scanning_options': codeScanningOptions?.toJson(),
  'code_scanning_delegated_alert_dismissal': codeScanningDelegatedAlertDismissal.toJson(),
  if (secretProtection != null) 'secret_protection': secretProtection?.toJson(),
  if (secretScanning != null) 'secret_scanning': secretScanning?.toJson(),
  if (secretScanningPushProtection != null) 'secret_scanning_push_protection': secretScanningPushProtection?.toJson(),
  if (secretScanningValidityChecks != null) 'secret_scanning_validity_checks': secretScanningValidityChecks?.toJson(),
  if (secretScanningNonProviderPatterns != null) 'secret_scanning_non_provider_patterns': secretScanningNonProviderPatterns?.toJson(),
  'secret_scanning_generic_secrets': secretScanningGenericSecrets.toJson(),
  'secret_scanning_delegated_alert_dismissal': secretScanningDelegatedAlertDismissal.toJson(),
  'secret_scanning_extended_metadata': secretScanningExtendedMetadata.toJson(),
  if (privateVulnerabilityReporting != null) 'private_vulnerability_reporting': privateVulnerabilityReporting?.toJson(),
  if (enforcement != null) 'enforcement': enforcement?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'description', 'advanced_security', 'code_security', 'dependency_graph', 'dependency_graph_autosubmit_action', 'dependency_graph_autosubmit_action_options', 'dependabot_alerts', 'dependabot_security_updates', 'code_scanning_default_setup', 'code_scanning_default_setup_options', 'code_scanning_options', 'code_scanning_delegated_alert_dismissal', 'secret_protection', 'secret_scanning', 'secret_scanning_push_protection', 'secret_scanning_validity_checks', 'secret_scanning_non_provider_patterns', 'secret_scanning_generic_secrets', 'secret_scanning_delegated_alert_dismissal', 'secret_scanning_extended_metadata', 'private_vulnerability_reporting', 'enforcement'}.contains(key)); } 
CodeSecurityUpdateEnterpriseConfigurationRequest copyWith({String Function()? name, String Function()? description, CodeSecurityUpdateEnterpriseConfigurationRequestAdvancedSecurity Function()? advancedSecurity, CodeSecurityUpdateEnterpriseConfigurationRequestCodeSecurity Function()? codeSecurity, CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph Function()? dependencyGraph, CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitAction Function()? dependencyGraphAutosubmitAction, CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraphAutosubmitActionOptions Function()? dependencyGraphAutosubmitActionOptions, CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts Function()? dependabotAlerts, CodeSecurityUpdateEnterpriseConfigurationRequestDependabotSecurityUpdates Function()? dependabotSecurityUpdates, CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup Function()? codeScanningDefaultSetup, CodeScanningDefaultSetupOptions Function()? codeScanningDefaultSetupOptions, CodeScanningOptions Function()? codeScanningOptions, CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDelegatedAlertDismissal Function()? codeScanningDelegatedAlertDismissal, CodeSecurityUpdateEnterpriseConfigurationRequestSecretProtection Function()? secretProtection, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanning Function()? secretScanning, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection Function()? secretScanningPushProtection, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningValidityChecks Function()? secretScanningValidityChecks, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns Function()? secretScanningNonProviderPatterns, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningGenericSecrets Function()? secretScanningGenericSecrets, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal Function()? secretScanningDelegatedAlertDismissal, CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningExtendedMetadata Function()? secretScanningExtendedMetadata, CodeSecurityUpdateEnterpriseConfigurationRequestPrivateVulnerabilityReporting Function()? privateVulnerabilityReporting, CodeSecurityUpdateEnterpriseConfigurationRequestEnforcement Function()? enforcement, }) { return CodeSecurityUpdateEnterpriseConfigurationRequest(
  name: name != null ? name() : this.name,
  description: description != null ? description() : this.description,
  advancedSecurity: advancedSecurity != null ? advancedSecurity() : this.advancedSecurity,
  codeSecurity: codeSecurity != null ? codeSecurity() : this.codeSecurity,
  dependencyGraph: dependencyGraph != null ? dependencyGraph() : this.dependencyGraph,
  dependencyGraphAutosubmitAction: dependencyGraphAutosubmitAction != null ? dependencyGraphAutosubmitAction() : this.dependencyGraphAutosubmitAction,
  dependencyGraphAutosubmitActionOptions: dependencyGraphAutosubmitActionOptions != null ? dependencyGraphAutosubmitActionOptions() : this.dependencyGraphAutosubmitActionOptions,
  dependabotAlerts: dependabotAlerts != null ? dependabotAlerts() : this.dependabotAlerts,
  dependabotSecurityUpdates: dependabotSecurityUpdates != null ? dependabotSecurityUpdates() : this.dependabotSecurityUpdates,
  codeScanningDefaultSetup: codeScanningDefaultSetup != null ? codeScanningDefaultSetup() : this.codeScanningDefaultSetup,
  codeScanningDefaultSetupOptions: codeScanningDefaultSetupOptions != null ? codeScanningDefaultSetupOptions() : this.codeScanningDefaultSetupOptions,
  codeScanningOptions: codeScanningOptions != null ? codeScanningOptions() : this.codeScanningOptions,
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
      other is CodeSecurityUpdateEnterpriseConfigurationRequest &&
          name == other.name &&
          description == other.description &&
          advancedSecurity == other.advancedSecurity &&
          codeSecurity == other.codeSecurity &&
          dependencyGraph == other.dependencyGraph &&
          dependencyGraphAutosubmitAction == other.dependencyGraphAutosubmitAction &&
          dependencyGraphAutosubmitActionOptions == other.dependencyGraphAutosubmitActionOptions &&
          dependabotAlerts == other.dependabotAlerts &&
          dependabotSecurityUpdates == other.dependabotSecurityUpdates &&
          codeScanningDefaultSetup == other.codeScanningDefaultSetup &&
          codeScanningDefaultSetupOptions == other.codeScanningDefaultSetupOptions &&
          codeScanningOptions == other.codeScanningOptions &&
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
@override int get hashCode { return Object.hashAll([name, description, advancedSecurity, codeSecurity, dependencyGraph, dependencyGraphAutosubmitAction, dependencyGraphAutosubmitActionOptions, dependabotAlerts, dependabotSecurityUpdates, codeScanningDefaultSetup, codeScanningDefaultSetupOptions, codeScanningOptions, codeScanningDelegatedAlertDismissal, secretProtection, secretScanning, secretScanningPushProtection, secretScanningValidityChecks, secretScanningNonProviderPatterns, secretScanningGenericSecrets, secretScanningDelegatedAlertDismissal, secretScanningExtendedMetadata, privateVulnerabilityReporting, enforcement]); } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationRequest(name: $name, description: $description, advancedSecurity: $advancedSecurity, codeSecurity: $codeSecurity, dependencyGraph: $dependencyGraph, dependencyGraphAutosubmitAction: $dependencyGraphAutosubmitAction, dependencyGraphAutosubmitActionOptions: $dependencyGraphAutosubmitActionOptions, dependabotAlerts: $dependabotAlerts, dependabotSecurityUpdates: $dependabotSecurityUpdates, codeScanningDefaultSetup: $codeScanningDefaultSetup, codeScanningDefaultSetupOptions: $codeScanningDefaultSetupOptions, codeScanningOptions: $codeScanningOptions, codeScanningDelegatedAlertDismissal: $codeScanningDelegatedAlertDismissal, secretProtection: $secretProtection, secretScanning: $secretScanning, secretScanningPushProtection: $secretScanningPushProtection, secretScanningValidityChecks: $secretScanningValidityChecks, secretScanningNonProviderPatterns: $secretScanningNonProviderPatterns, secretScanningGenericSecrets: $secretScanningGenericSecrets, secretScanningDelegatedAlertDismissal: $secretScanningDelegatedAlertDismissal, secretScanningExtendedMetadata: $secretScanningExtendedMetadata, privateVulnerabilityReporting: $privateVulnerabilityReporting, enforcement: $enforcement)'; } 
 }
