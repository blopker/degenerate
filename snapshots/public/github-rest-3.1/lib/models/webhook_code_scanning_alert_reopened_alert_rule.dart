// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The severity of the alert.
@immutable final class WebhookCodeScanningAlertReopenedAlertRuleSeverity {const WebhookCodeScanningAlertReopenedAlertRuleSeverity._(this.value);

factory WebhookCodeScanningAlertReopenedAlertRuleSeverity.fromJson(String json) { return switch (json) {
  'none' => none,
  'note' => note,
  'warning' => warning,
  'error' => error,
  'null' => $null,
  _ => WebhookCodeScanningAlertReopenedAlertRuleSeverity._(json),
}; }

static const WebhookCodeScanningAlertReopenedAlertRuleSeverity none = WebhookCodeScanningAlertReopenedAlertRuleSeverity._('none');

static const WebhookCodeScanningAlertReopenedAlertRuleSeverity note = WebhookCodeScanningAlertReopenedAlertRuleSeverity._('note');

static const WebhookCodeScanningAlertReopenedAlertRuleSeverity warning = WebhookCodeScanningAlertReopenedAlertRuleSeverity._('warning');

static const WebhookCodeScanningAlertReopenedAlertRuleSeverity error = WebhookCodeScanningAlertReopenedAlertRuleSeverity._('error');

static const WebhookCodeScanningAlertReopenedAlertRuleSeverity $null = WebhookCodeScanningAlertReopenedAlertRuleSeverity._('null');

static const List<WebhookCodeScanningAlertReopenedAlertRuleSeverity> values = [none, note, warning, error, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertReopenedAlertRuleSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlertRuleSeverity($value)'; } 
 }
@immutable final class WebhookCodeScanningAlertReopenedAlertRule {const WebhookCodeScanningAlertReopenedAlertRule({required this.description, required this.id, required this.severity, this.fullDescription, this.help = const Omittable.absent(), this.helpUri = const Omittable.absent(), this.name, this.tags = const Omittable.absent(), });

factory WebhookCodeScanningAlertReopenedAlertRule.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedAlertRule(
  description: json['description'] as String,
  fullDescription: json['full_description'] as String?,
  help: json.containsKey('help') ? Omittable(json['help'] as String?) : const Omittable.absent(),
  helpUri: json.containsKey('help_uri') ? Omittable(json['help_uri'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  name: json['name'] as String?,
  severity: json['severity'] != null ? WebhookCodeScanningAlertReopenedAlertRuleSeverity.fromJson(json['severity'] as String) : null,
  tags: json.containsKey('tags') ? Omittable((json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// A short description of the rule used to detect the alert.
final String description;

final String? fullDescription;

final Omittable<String?> help;

/// A link to the documentation for the rule used to detect the alert.
final Omittable<String?> helpUri;

/// A unique identifier for the rule used to detect the alert.
final String id;

final String? name;

/// The severity of the alert.
final WebhookCodeScanningAlertReopenedAlertRuleSeverity? severity;

final Omittable<List<String>?> tags;

Map<String, dynamic> toJson() { return {
  'description': description,
  'full_description': ?fullDescription,
  if (help.isPresent) 'help': help.value,
  if (helpUri.isPresent) 'help_uri': helpUri.value,
  'id': id,
  'name': ?name,
  'severity': severity?.toJson(),
  if (tags.isPresent) 'tags': tags.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('severity'); } 
WebhookCodeScanningAlertReopenedAlertRule copyWith({String? description, String? Function()? fullDescription, Omittable<String?>? help, Omittable<String?>? helpUri, String? id, String? Function()? name, WebhookCodeScanningAlertReopenedAlertRuleSeverity? Function()? severity, Omittable<List<String>?>? tags, }) { return WebhookCodeScanningAlertReopenedAlertRule(
  description: description ?? this.description,
  fullDescription: fullDescription != null ? fullDescription() : this.fullDescription,
  help: help ?? this.help,
  helpUri: helpUri ?? this.helpUri,
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  severity: severity != null ? severity() : this.severity,
  tags: tags ?? this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedAlertRule &&
          description == other.description &&
          fullDescription == other.fullDescription &&
          help == other.help &&
          helpUri == other.helpUri &&
          id == other.id &&
          name == other.name &&
          severity == other.severity &&
          tags.isPresent == other.tags.isPresent &&
          listEquals(tags.value, other.tags.value); } 
@override int get hashCode { return Object.hash(description, fullDescription, help, helpUri, id, name, severity, Object.hashAll(tags.value ?? const [])); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedAlertRule(description: $description, fullDescription: $fullDescription, help: $help, helpUri: $helpUri, id: $id, name: $name, severity: $severity, tags: $tags)'; } 
 }
