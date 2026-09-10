// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'snippets_snippet_name.dart';/// Define a snippet rule.
@immutable final class SnippetsSnippetRulesRequest2 {const SnippetsSnippetRulesRequest2({required this.expression, required this.snippetName, this.description, this.enabled, });

factory SnippetsSnippetRulesRequest2.fromJson(Map<String, dynamic> json) {return SnippetsSnippetRulesRequest2(
  description: json['description'] as String?,
  enabled: json['enabled'] as bool?,
  expression: json['expression'] as String,
  snippetName: SnippetsSnippetName.fromJson(json['snippet_name'] as String),
);}

/// Provide an informative description of the rule.
final String? description;

/// Indicate whether to execute the rule.
final bool? enabled;

/// Define the expression that determines which traffic matches the rule.
final String expression;

/// Identify the snippet.
final SnippetsSnippetName snippetName;

/// The value with the schema default applied when absent.
String get descriptionOrDefault {return description ?? '';}
/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? false;}
Map<String, dynamic> toJson() {return {
  'description': ?description,
  'enabled': ?enabled,
  'expression': expression,
  'snippet_name': snippetName.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('expression') && json['expression'] is String &&
      json.containsKey('snippet_name');}
SnippetsSnippetRulesRequest2 copyWith({String? Function()? description, bool? Function()? enabled, String? expression, SnippetsSnippetName? snippetName, }) {return SnippetsSnippetRulesRequest2(
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  expression: expression ?? this.expression,
  snippetName: snippetName ?? this.snippetName,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is SnippetsSnippetRulesRequest2 &&
          description == other.description &&
          enabled == other.enabled &&
          expression == other.expression &&
          snippetName == other.snippetName;}
@override int get hashCode {return Object.hash(description, enabled, expression, snippetName);}
@override String toString() {return 'SnippetsSnippetRulesRequest2(description: $description, enabled: $enabled, expression: $expression, snippetName: $snippetName)';}
}
