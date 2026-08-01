// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to use labeled runners or standard GitHub runners.
@immutable final class CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType {const CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._(this.value);

factory CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  'labeled' => labeled,
  'not_set' => notSet,
  'null' => $null,
  _ => CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._(json),
}; }

static const CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType standard = CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._('standard');

static const CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType labeled = CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._('labeled');

static const CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType notSet = CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._('not_set');

static const CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType $null = CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType._('null');

static const List<CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType> values = [standard, labeled, notSet, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType($value)'; } 
 }
/// Feature options for code scanning default setup
@immutable final class CodeSecurityConfigurationCodeScanningDefaultSetupOptions {const CodeSecurityConfigurationCodeScanningDefaultSetupOptions({this.runnerType = const Omittable.absent(), this.runnerLabel = const Omittable.absent(), });

factory CodeSecurityConfigurationCodeScanningDefaultSetupOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityConfigurationCodeScanningDefaultSetupOptions(
  runnerType: json.containsKey('runner_type') ? Omittable(json['runner_type'] != null ? CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType.fromJson(json['runner_type'] as String) : null) : const Omittable.absent(),
  runnerLabel: json.containsKey('runner_label') ? Omittable(json['runner_label'] as String?) : const Omittable.absent(),
); }

/// Whether to use labeled runners or standard GitHub runners.
final Omittable<CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType?> runnerType;

/// The label of the runner to use for code scanning when runner_type is 'labeled'.
final Omittable<String?> runnerLabel;

Map<String, dynamic> toJson() { return {
  if (runnerType.isPresent) 'runner_type': runnerType.value?.toJson(),
  if (runnerLabel.isPresent) 'runner_label': runnerLabel.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'runner_type', 'runner_label'}.contains(key)); } 
CodeSecurityConfigurationCodeScanningDefaultSetupOptions copyWith({Omittable<CodeSecurityConfigurationCodeScanningDefaultSetupOptionsRunnerType?>? runnerType, Omittable<String?>? runnerLabel, }) { return CodeSecurityConfigurationCodeScanningDefaultSetupOptions(
  runnerType: runnerType ?? this.runnerType,
  runnerLabel: runnerLabel ?? this.runnerLabel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityConfigurationCodeScanningDefaultSetupOptions &&
          runnerType == other.runnerType &&
          runnerLabel == other.runnerLabel; } 
@override int get hashCode { return Object.hash(runnerType, runnerLabel); } 
@override String toString() { return 'CodeSecurityConfigurationCodeScanningDefaultSetupOptions(runnerType: $runnerType, runnerLabel: $runnerLabel)'; } 
 }
