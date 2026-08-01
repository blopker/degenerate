// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The severity of the alert.
@immutable final class CodeScanningAlertRuleSeverity {const CodeScanningAlertRuleSeverity._(this.value);

factory CodeScanningAlertRuleSeverity.fromJson(String json) { return switch (json) {
  'none' => none,
  'note' => note,
  'warning' => warning,
  'error' => error,
  'null' => $null,
  _ => CodeScanningAlertRuleSeverity._(json),
}; }

static const CodeScanningAlertRuleSeverity none = CodeScanningAlertRuleSeverity._('none');

static const CodeScanningAlertRuleSeverity note = CodeScanningAlertRuleSeverity._('note');

static const CodeScanningAlertRuleSeverity warning = CodeScanningAlertRuleSeverity._('warning');

static const CodeScanningAlertRuleSeverity error = CodeScanningAlertRuleSeverity._('error');

static const CodeScanningAlertRuleSeverity $null = CodeScanningAlertRuleSeverity._('null');

static const List<CodeScanningAlertRuleSeverity> values = [none, note, warning, error, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningAlertRuleSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningAlertRuleSeverity($value)'; } 
 }
/// The security severity of the alert.
@immutable final class CodeScanningAlertRuleSecuritySeverityLevel {const CodeScanningAlertRuleSecuritySeverityLevel._(this.value);

factory CodeScanningAlertRuleSecuritySeverityLevel.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'critical' => critical,
  'null' => $null,
  _ => CodeScanningAlertRuleSecuritySeverityLevel._(json),
}; }

static const CodeScanningAlertRuleSecuritySeverityLevel low = CodeScanningAlertRuleSecuritySeverityLevel._('low');

static const CodeScanningAlertRuleSecuritySeverityLevel medium = CodeScanningAlertRuleSecuritySeverityLevel._('medium');

static const CodeScanningAlertRuleSecuritySeverityLevel high = CodeScanningAlertRuleSecuritySeverityLevel._('high');

static const CodeScanningAlertRuleSecuritySeverityLevel critical = CodeScanningAlertRuleSecuritySeverityLevel._('critical');

static const CodeScanningAlertRuleSecuritySeverityLevel $null = CodeScanningAlertRuleSecuritySeverityLevel._('null');

static const List<CodeScanningAlertRuleSecuritySeverityLevel> values = [low, medium, high, critical, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningAlertRuleSecuritySeverityLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningAlertRuleSecuritySeverityLevel($value)'; } 
 }
@immutable final class CodeScanningAlertRule {const CodeScanningAlertRule({this.id = const Omittable.absent(), this.name, this.severity = const Omittable.absent(), this.securitySeverityLevel = const Omittable.absent(), this.description, this.fullDescription, this.tags = const Omittable.absent(), this.help = const Omittable.absent(), this.helpUri = const Omittable.absent(), });

factory CodeScanningAlertRule.fromJson(Map<String, dynamic> json) { return CodeScanningAlertRule(
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  name: json['name'] as String?,
  severity: json.containsKey('severity') ? Omittable(json['severity'] != null ? CodeScanningAlertRuleSeverity.fromJson(json['severity'] as String) : null) : const Omittable.absent(),
  securitySeverityLevel: json.containsKey('security_severity_level') ? Omittable(json['security_severity_level'] != null ? CodeScanningAlertRuleSecuritySeverityLevel.fromJson(json['security_severity_level'] as String) : null) : const Omittable.absent(),
  description: json['description'] as String?,
  fullDescription: json['full_description'] as String?,
  tags: json.containsKey('tags') ? Omittable((json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  help: json.containsKey('help') ? Omittable(json['help'] as String?) : const Omittable.absent(),
  helpUri: json.containsKey('help_uri') ? Omittable(json['help_uri'] as String?) : const Omittable.absent(),
); }

/// A unique identifier for the rule used to detect the alert.
final Omittable<String?> id;

/// The name of the rule used to detect the alert.
final String? name;

/// The severity of the alert.
final Omittable<CodeScanningAlertRuleSeverity?> severity;

/// The security severity of the alert.
final Omittable<CodeScanningAlertRuleSecuritySeverityLevel?> securitySeverityLevel;

/// A short description of the rule used to detect the alert.
final String? description;

/// A description of the rule used to detect the alert.
final String? fullDescription;

/// A set of tags applicable for the rule.
final Omittable<List<String>?> tags;

/// Detailed documentation for the rule as GitHub Flavored Markdown.
final Omittable<String?> help;

/// A link to the documentation for the rule used to detect the alert.
final Omittable<String?> helpUri;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value,
  'name': ?name,
  if (severity.isPresent) 'severity': severity.value?.toJson(),
  if (securitySeverityLevel.isPresent) 'security_severity_level': securitySeverityLevel.value?.toJson(),
  'description': ?description,
  'full_description': ?fullDescription,
  if (tags.isPresent) 'tags': tags.value,
  if (help.isPresent) 'help': help.value,
  if (helpUri.isPresent) 'help_uri': helpUri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'severity', 'security_severity_level', 'description', 'full_description', 'tags', 'help', 'help_uri'}.contains(key)); } 
CodeScanningAlertRule copyWith({Omittable<String?>? id, String? Function()? name, Omittable<CodeScanningAlertRuleSeverity?>? severity, Omittable<CodeScanningAlertRuleSecuritySeverityLevel?>? securitySeverityLevel, String? Function()? description, String? Function()? fullDescription, Omittable<List<String>?>? tags, Omittable<String?>? help, Omittable<String?>? helpUri, }) { return CodeScanningAlertRule(
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  severity: severity ?? this.severity,
  securitySeverityLevel: securitySeverityLevel ?? this.securitySeverityLevel,
  description: description != null ? description() : this.description,
  fullDescription: fullDescription != null ? fullDescription() : this.fullDescription,
  tags: tags ?? this.tags,
  help: help ?? this.help,
  helpUri: helpUri ?? this.helpUri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAlertRule &&
          id == other.id &&
          name == other.name &&
          severity == other.severity &&
          securitySeverityLevel == other.securitySeverityLevel &&
          description == other.description &&
          fullDescription == other.fullDescription &&
          tags.isPresent == other.tags.isPresent &&
          listEquals(tags.value, other.tags.value) &&
          help == other.help &&
          helpUri == other.helpUri; } 
@override int get hashCode { return Object.hash(id, name, severity, securitySeverityLevel, description, fullDescription, Object.hashAll(tags.value ?? const []), help, helpUri); } 
@override String toString() { return 'CodeScanningAlertRule(id: $id, name: $name, severity: $severity, securitySeverityLevel: $securitySeverityLevel, description: $description, fullDescription: $fullDescription, tags: $tags, help: $help, helpUri: $helpUri)'; } 
 }
