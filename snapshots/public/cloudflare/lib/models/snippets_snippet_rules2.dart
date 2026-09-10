// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'snippets_snippet_name.dart';/// Define a snippet rule.
@immutable final class SnippetsSnippetRules2 {const SnippetsSnippetRules2({required this.expression, required this.id, required this.lastUpdated, required this.snippetName, this.description, this.enabled, });

factory SnippetsSnippetRules2.fromJson(Map<String, dynamic> json) { return SnippetsSnippetRules2(
  description: json['description'] as String?,
  enabled: json['enabled'] as bool?,
  expression: json['expression'] as String,
  id: json['id'] as String,
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  snippetName: SnippetsSnippetName.fromJson(json['snippet_name'] as String),
); }

/// Provide an informative description of the rule.
final String? description;

/// Indicate whether to execute the rule.
final bool? enabled;

/// Define the expression that determines which traffic matches the rule.
final String expression;

/// Specify the unique ID of the rule.
final String id;

/// Specify the timestamp of when the rule was last modified.
final DateTime lastUpdated;

/// Identify the snippet.
final SnippetsSnippetName snippetName;

/// The value with the schema default applied when absent.
String get descriptionOrDefault { return description ?? ''; } 
/// The value with the schema default applied when absent.
bool get enabledOrDefault { return enabled ?? false; } 
Map<String, dynamic> toJson() { return {
  'description': ?description,
  'enabled': ?enabled,
  'expression': expression,
  'id': id,
  'last_updated': lastUpdated.toIso8601String(),
  'snippet_name': snippetName.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expression') && json['expression'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('last_updated') && json['last_updated'] is String &&
      json.containsKey('snippet_name'); } 
SnippetsSnippetRules2 copyWith({String? Function()? description, bool? Function()? enabled, String? expression, String? id, DateTime? lastUpdated, SnippetsSnippetName? snippetName, }) { return SnippetsSnippetRules2(
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  expression: expression ?? this.expression,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  snippetName: snippetName ?? this.snippetName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SnippetsSnippetRules2 &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          snippetName == other.snippetName; } 
@override int get hashCode { return Object.hash(description, enabled, expression, id, lastUpdated, snippetName); } 
@override String toString() { return 'SnippetsSnippetRules2(description: $description, enabled: $enabled, expression: $expression, id: $id, lastUpdated: $lastUpdated, snippetName: $snippetName)'; } 
 }
