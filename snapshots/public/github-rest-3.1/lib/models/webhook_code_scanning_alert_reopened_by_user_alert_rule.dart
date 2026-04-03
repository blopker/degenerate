// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The severity of the alert.
@immutable final class WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity {const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._(this.value);

factory WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity.fromJson(String json) { return switch (json) {
  'none' => none,
  'note' => note,
  'warning' => warning,
  'error' => error,
  'null' => $null,
  _ => WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._(json),
}; }

static const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity none = WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._('none');

static const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity note = WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._('note');

static const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity warning = WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._('warning');

static const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity error = WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._('error');

static const WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity $null = WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity._('null');

static const List<WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity> values = [none, note, warning, error, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity($value)'; } 
 }
@immutable final class WebhookCodeScanningAlertReopenedByUserAlertRule {const WebhookCodeScanningAlertReopenedByUserAlertRule({required this.description, required this.id, required this.severity, });

factory WebhookCodeScanningAlertReopenedByUserAlertRule.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedByUserAlertRule(
  description: json['description'] as String,
  id: json['id'] as String,
  severity: json['severity'] != null ? WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity.fromJson(json['severity'] as String) : null,
); }

/// A short description of the rule used to detect the alert.
final String description;

/// A unique identifier for the rule used to detect the alert.
final String id;

/// The severity of the alert.
final WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity? severity;

Map<String, dynamic> toJson() { return {
  'description': description,
  'id': id,
  if (severity != null) 'severity': severity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('severity'); } 
WebhookCodeScanningAlertReopenedByUserAlertRule copyWith({String? description, String? id, WebhookCodeScanningAlertReopenedByUserAlertRuleSeverity? Function()? severity, }) { return WebhookCodeScanningAlertReopenedByUserAlertRule(
  description: description ?? this.description,
  id: id ?? this.id,
  severity: severity != null ? severity() : this.severity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedByUserAlertRule &&
          description == other.description &&
          id == other.id &&
          severity == other.severity; } 
@override int get hashCode { return Object.hash(description, id, severity); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedByUserAlertRule(description: $description, id: $id, severity: $severity)'; } 
 }
