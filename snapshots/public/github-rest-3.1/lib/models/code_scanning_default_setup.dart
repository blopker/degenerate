// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code scanning default setup has been configured or not.
final class CodeScanningDefaultSetupState {const CodeScanningDefaultSetupState._(this.value);

factory CodeScanningDefaultSetupState.fromJson(String json) { return switch (json) {
  'configured' => configured,
  'not-configured' => notConfigured,
  _ => CodeScanningDefaultSetupState._(json),
}; }

static const CodeScanningDefaultSetupState configured = CodeScanningDefaultSetupState._('configured');

static const CodeScanningDefaultSetupState notConfigured = CodeScanningDefaultSetupState._('not-configured');

static const List<CodeScanningDefaultSetupState> values = [configured, notConfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupState($value)'; } 
 }
final class CodeScanningDefaultSetupLanguages {const CodeScanningDefaultSetupLanguages._(this.value);

factory CodeScanningDefaultSetupLanguages.fromJson(String json) { return switch (json) {
  'actions' => actions,
  'c-cpp' => cCpp,
  'csharp' => csharp,
  'go' => go,
  'java-kotlin' => javaKotlin,
  'javascript-typescript' => javascriptTypescript,
  'javascript' => javascript,
  'python' => python,
  'ruby' => ruby,
  'typescript' => typescript,
  'swift' => swift,
  _ => CodeScanningDefaultSetupLanguages._(json),
}; }

static const CodeScanningDefaultSetupLanguages actions = CodeScanningDefaultSetupLanguages._('actions');

static const CodeScanningDefaultSetupLanguages cCpp = CodeScanningDefaultSetupLanguages._('c-cpp');

static const CodeScanningDefaultSetupLanguages csharp = CodeScanningDefaultSetupLanguages._('csharp');

static const CodeScanningDefaultSetupLanguages go = CodeScanningDefaultSetupLanguages._('go');

static const CodeScanningDefaultSetupLanguages javaKotlin = CodeScanningDefaultSetupLanguages._('java-kotlin');

static const CodeScanningDefaultSetupLanguages javascriptTypescript = CodeScanningDefaultSetupLanguages._('javascript-typescript');

static const CodeScanningDefaultSetupLanguages javascript = CodeScanningDefaultSetupLanguages._('javascript');

static const CodeScanningDefaultSetupLanguages python = CodeScanningDefaultSetupLanguages._('python');

static const CodeScanningDefaultSetupLanguages ruby = CodeScanningDefaultSetupLanguages._('ruby');

static const CodeScanningDefaultSetupLanguages typescript = CodeScanningDefaultSetupLanguages._('typescript');

static const CodeScanningDefaultSetupLanguages swift = CodeScanningDefaultSetupLanguages._('swift');

static const List<CodeScanningDefaultSetupLanguages> values = [actions, cCpp, csharp, go, javaKotlin, javascriptTypescript, javascript, python, ruby, typescript, swift];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupLanguages && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupLanguages($value)'; } 
 }
/// Runner type to be used.
final class CodeScanningDefaultSetupRunnerType {const CodeScanningDefaultSetupRunnerType._(this.value);

factory CodeScanningDefaultSetupRunnerType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  'labeled' => labeled,
  'null' => $null,
  _ => CodeScanningDefaultSetupRunnerType._(json),
}; }

static const CodeScanningDefaultSetupRunnerType standard = CodeScanningDefaultSetupRunnerType._('standard');

static const CodeScanningDefaultSetupRunnerType labeled = CodeScanningDefaultSetupRunnerType._('labeled');

static const CodeScanningDefaultSetupRunnerType $null = CodeScanningDefaultSetupRunnerType._('null');

static const List<CodeScanningDefaultSetupRunnerType> values = [standard, labeled, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupRunnerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupRunnerType($value)'; } 
 }
/// CodeQL query suite to be used.
final class CodeScanningDefaultSetupQuerySuite {const CodeScanningDefaultSetupQuerySuite._(this.value);

factory CodeScanningDefaultSetupQuerySuite.fromJson(String json) { return switch (json) {
  'default' => $default,
  'extended' => extended,
  _ => CodeScanningDefaultSetupQuerySuite._(json),
}; }

static const CodeScanningDefaultSetupQuerySuite $default = CodeScanningDefaultSetupQuerySuite._('default');

static const CodeScanningDefaultSetupQuerySuite extended = CodeScanningDefaultSetupQuerySuite._('extended');

static const List<CodeScanningDefaultSetupQuerySuite> values = [$default, extended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupQuerySuite && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupQuerySuite($value)'; } 
 }
/// Threat model to be used for code scanning analysis. Use `remote` to analyze only network sources and `remote_and_local` to include local sources like filesystem access, command-line arguments, database reads, environment variable and standard input.
final class CodeScanningDefaultSetupThreatModel {const CodeScanningDefaultSetupThreatModel._(this.value);

factory CodeScanningDefaultSetupThreatModel.fromJson(String json) { return switch (json) {
  'remote' => remote,
  'remote_and_local' => remoteAndLocal,
  _ => CodeScanningDefaultSetupThreatModel._(json),
}; }

static const CodeScanningDefaultSetupThreatModel remote = CodeScanningDefaultSetupThreatModel._('remote');

static const CodeScanningDefaultSetupThreatModel remoteAndLocal = CodeScanningDefaultSetupThreatModel._('remote_and_local');

static const List<CodeScanningDefaultSetupThreatModel> values = [remote, remoteAndLocal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupThreatModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupThreatModel($value)'; } 
 }
/// The frequency of the periodic analysis.
final class CodeScanningDefaultSetupSchedule {const CodeScanningDefaultSetupSchedule._(this.value);

factory CodeScanningDefaultSetupSchedule.fromJson(String json) { return switch (json) {
  'weekly' => weekly,
  'null' => $null,
  _ => CodeScanningDefaultSetupSchedule._(json),
}; }

static const CodeScanningDefaultSetupSchedule weekly = CodeScanningDefaultSetupSchedule._('weekly');

static const CodeScanningDefaultSetupSchedule $null = CodeScanningDefaultSetupSchedule._('null');

static const List<CodeScanningDefaultSetupSchedule> values = [weekly, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDefaultSetupSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningDefaultSetupSchedule($value)'; } 
 }
/// Configuration for code scanning default setup.
final class CodeScanningDefaultSetup {const CodeScanningDefaultSetup({this.state, this.languages, this.runnerType, this.runnerLabel, this.querySuite, this.threatModel, this.updatedAt, this.schedule, });

factory CodeScanningDefaultSetup.fromJson(Map<String, dynamic> json) { return CodeScanningDefaultSetup(
  state: json['state'] != null ? CodeScanningDefaultSetupState.fromJson(json['state'] as String) : null,
  languages: (json['languages'] as List<dynamic>?)?.map((e) => CodeScanningDefaultSetupLanguages.fromJson(e as String)).toList(),
  runnerType: json['runner_type'] != null ? CodeScanningDefaultSetupRunnerType.fromJson(json['runner_type'] as String) : null,
  runnerLabel: json['runner_label'] as String?,
  querySuite: json['query_suite'] != null ? CodeScanningDefaultSetupQuerySuite.fromJson(json['query_suite'] as String) : null,
  threatModel: json['threat_model'] != null ? CodeScanningDefaultSetupThreatModel.fromJson(json['threat_model'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  schedule: json['schedule'] != null ? CodeScanningDefaultSetupSchedule.fromJson(json['schedule'] as String) : null,
); }

/// Code scanning default setup has been configured or not.
final CodeScanningDefaultSetupState? state;

/// Languages to be analyzed.
final List<CodeScanningDefaultSetupLanguages>? languages;

/// Runner type to be used.
final CodeScanningDefaultSetupRunnerType? runnerType;

/// Runner label to be used if the runner type is labeled.
final String? runnerLabel;

/// CodeQL query suite to be used.
final CodeScanningDefaultSetupQuerySuite? querySuite;

/// Threat model to be used for code scanning analysis. Use `remote` to analyze only network sources and `remote_and_local` to include local sources like filesystem access, command-line arguments, database reads, environment variable and standard input.
final CodeScanningDefaultSetupThreatModel? threatModel;

/// Timestamp of latest configuration update.
final DateTime? updatedAt;

/// The frequency of the periodic analysis.
final CodeScanningDefaultSetupSchedule? schedule;

Map<String, dynamic> toJson() { return {
  if (state != null) 'state': state?.toJson(),
  if (languages != null) 'languages': languages?.map((e) => e.toJson()).toList(),
  if (runnerType != null) 'runner_type': runnerType?.toJson(),
  'runner_label': ?runnerLabel,
  if (querySuite != null) 'query_suite': querySuite?.toJson(),
  if (threatModel != null) 'threat_model': threatModel?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (schedule != null) 'schedule': schedule?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state', 'languages', 'runner_type', 'runner_label', 'query_suite', 'threat_model', 'updated_at', 'schedule'}.contains(key)); } 
CodeScanningDefaultSetup copyWith({CodeScanningDefaultSetupState Function()? state, List<CodeScanningDefaultSetupLanguages> Function()? languages, CodeScanningDefaultSetupRunnerType? Function()? runnerType, String? Function()? runnerLabel, CodeScanningDefaultSetupQuerySuite Function()? querySuite, CodeScanningDefaultSetupThreatModel Function()? threatModel, DateTime? Function()? updatedAt, CodeScanningDefaultSetupSchedule? Function()? schedule, }) { return CodeScanningDefaultSetup(
  state: state != null ? state() : this.state,
  languages: languages != null ? languages() : this.languages,
  runnerType: runnerType != null ? runnerType() : this.runnerType,
  runnerLabel: runnerLabel != null ? runnerLabel() : this.runnerLabel,
  querySuite: querySuite != null ? querySuite() : this.querySuite,
  threatModel: threatModel != null ? threatModel() : this.threatModel,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  schedule: schedule != null ? schedule() : this.schedule,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningDefaultSetup &&
          state == other.state &&
          listEquals(languages, other.languages) &&
          runnerType == other.runnerType &&
          runnerLabel == other.runnerLabel &&
          querySuite == other.querySuite &&
          threatModel == other.threatModel &&
          updatedAt == other.updatedAt &&
          schedule == other.schedule; } 
@override int get hashCode { return Object.hash(state, Object.hashAll(languages ?? const []), runnerType, runnerLabel, querySuite, threatModel, updatedAt, schedule); } 
@override String toString() { return 'CodeScanningDefaultSetup(state: $state, languages: $languages, runnerType: $runnerType, runnerLabel: $runnerLabel, querySuite: $querySuite, threatModel: $threatModel, updatedAt: $updatedAt, schedule: $schedule)'; } 
 }
