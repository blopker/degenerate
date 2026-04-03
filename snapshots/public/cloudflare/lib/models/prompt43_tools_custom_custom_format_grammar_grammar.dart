// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax {const Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax._(this.value);

factory Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax.fromJson(String json) { return switch (json) {
  'lark' => lark,
  'regex' => regex,
  _ => Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax._(json),
}; }

static const Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax lark = Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax._('lark');

static const Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax regex = Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax._('regex');

static const List<Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax> values = [lark, regex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax($value)'; } 
 }
@immutable final class Prompt43ToolsCustomCustomFormatGrammarGrammar {const Prompt43ToolsCustomCustomFormatGrammarGrammar({required this.definition, required this.syntax, });

factory Prompt43ToolsCustomCustomFormatGrammarGrammar.fromJson(Map<String, dynamic> json) { return Prompt43ToolsCustomCustomFormatGrammarGrammar(
  definition: json['definition'] as String,
  syntax: Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax.fromJson(json['syntax'] as String),
); }

final String definition;

final Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax syntax;

Map<String, dynamic> toJson() { return {
  'definition': definition,
  'syntax': syntax.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('definition') && json['definition'] is String &&
      json.containsKey('syntax'); } 
Prompt43ToolsCustomCustomFormatGrammarGrammar copyWith({String? definition, Prompt43ToolsCustomCustomFormatGrammarGrammarSyntax? syntax, }) { return Prompt43ToolsCustomCustomFormatGrammarGrammar(
  definition: definition ?? this.definition,
  syntax: syntax ?? this.syntax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ToolsCustomCustomFormatGrammarGrammar &&
          definition == other.definition &&
          syntax == other.syntax; } 
@override int get hashCode { return Object.hash(definition, syntax); } 
@override String toString() { return 'Prompt43ToolsCustomCustomFormatGrammarGrammar(definition: $definition, syntax: $syntax)'; } 
 }
