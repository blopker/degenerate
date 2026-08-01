// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code scanning default setup has been configured or not.
@immutable final class CodeScanningDefaultSetupState {const CodeScanningDefaultSetupState._(this.value);

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
@immutable final class CodeScanningDefaultSetupLanguages {const CodeScanningDefaultSetupLanguages._(this.value);

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
@immutable final class CodeScanningDefaultSetupRunnerType {const CodeScanningDefaultSetupRunnerType._(this.value);

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
@immutable final class CodeScanningDefaultSetupQuerySuite {const CodeScanningDefaultSetupQuerySuite._(this.value);

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
@immutable final class CodeScanningDefaultSetupThreatModel {const CodeScanningDefaultSetupThreatModel._(this.value);

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
@immutable final class CodeScanningDefaultSetupSchedule {const CodeScanningDefaultSetupSchedule._(this.value);

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
@immutable final class CodeScanningDefaultSetup {const CodeScanningDefaultSetup({this.state, this.languages, this.runnerType = const Omittable.absent(), this.runnerLabel = const Omittable.absent(), this.querySuite, this.threatModel, this.updatedAt = const Omittable.absent(), this.schedule = const Omittable.absent(), });

factory CodeScanningDefaultSetup.fromJson(Map<String, dynamic> json) { return CodeScanningDefaultSetup(
  state: json['state'] != null ? CodeScanningDefaultSetupState.fromJson(json['state'] as String) : null,
  languages: (json['languages'] as List<dynamic>?)?.map((e) => CodeScanningDefaultSetupLanguages.fromJson(e as String)).toList(),
  runnerType: json.containsKey('runner_type') ? Omittable(json['runner_type'] != null ? CodeScanningDefaultSetupRunnerType.fromJson(json['runner_type'] as String) : null) : const Omittable.absent(),
  runnerLabel: json.containsKey('runner_label') ? Omittable(json['runner_label'] as String?) : const Omittable.absent(),
  querySuite: json['query_suite'] != null ? CodeScanningDefaultSetupQuerySuite.fromJson(json['query_suite'] as String) : null,
  threatModel: json['threat_model'] != null ? CodeScanningDefaultSetupThreatModel.fromJson(json['threat_model'] as String) : null,
  updatedAt: json.containsKey('updated_at') ? Omittable(json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null) : const Omittable.absent(),
  schedule: json.containsKey('schedule') ? Omittable(json['schedule'] != null ? CodeScanningDefaultSetupSchedule.fromJson(json['schedule'] as String) : null) : const Omittable.absent(),
); }

/// Code scanning default setup has been configured or not.
final CodeScanningDefaultSetupState? state;

/// Languages to be analyzed.
final List<CodeScanningDefaultSetupLanguages>? languages;

/// Runner type to be used.
final Omittable<CodeScanningDefaultSetupRunnerType?> runnerType;

/// Runner label to be used if the runner type is labeled.
final Omittable<String?> runnerLabel;

/// CodeQL query suite to be used.
final CodeScanningDefaultSetupQuerySuite? querySuite;

/// Threat model to be used for code scanning analysis. Use `remote` to analyze only network sources and `remote_and_local` to include local sources like filesystem access, command-line arguments, database reads, environment variable and standard input.
final CodeScanningDefaultSetupThreatModel? threatModel;

/// Timestamp of latest configuration update.
final Omittable<DateTime?> updatedAt;

/// The frequency of the periodic analysis.
final Omittable<CodeScanningDefaultSetupSchedule?> schedule;

Map<String, dynamic> toJson() { return {
  if (state != null) 'state': state?.toJson(),
  if (languages != null) 'languages': languages?.map((e) => e.toJson()).toList(),
  if (runnerType.isPresent) 'runner_type': runnerType.value?.toJson(),
  if (runnerLabel.isPresent) 'runner_label': runnerLabel.value,
  if (querySuite != null) 'query_suite': querySuite?.toJson(),
  if (threatModel != null) 'threat_model': threatModel?.toJson(),
  if (updatedAt.isPresent) 'updated_at': updatedAt.value?.toIso8601String(),
  if (schedule.isPresent) 'schedule': schedule.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state', 'languages', 'runner_type', 'runner_label', 'query_suite', 'threat_model', 'updated_at', 'schedule'}.contains(key)); } 
CodeScanningDefaultSetup copyWith({CodeScanningDefaultSetupState? Function()? state, List<CodeScanningDefaultSetupLanguages>? Function()? languages, Omittable<CodeScanningDefaultSetupRunnerType?>? runnerType, Omittable<String?>? runnerLabel, CodeScanningDefaultSetupQuerySuite? Function()? querySuite, CodeScanningDefaultSetupThreatModel? Function()? threatModel, Omittable<DateTime?>? updatedAt, Omittable<CodeScanningDefaultSetupSchedule?>? schedule, }) { return CodeScanningDefaultSetup(
  state: state != null ? state() : this.state,
  languages: languages != null ? languages() : this.languages,
  runnerType: runnerType ?? this.runnerType,
  runnerLabel: runnerLabel ?? this.runnerLabel,
  querySuite: querySuite != null ? querySuite() : this.querySuite,
  threatModel: threatModel != null ? threatModel() : this.threatModel,
  updatedAt: updatedAt ?? this.updatedAt,
  schedule: schedule ?? this.schedule,
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
