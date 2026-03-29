// GENERATED CODE - DO NOT MODIFY BY HAND

import 'prompt43_tools_custom_custom_format_grammar_grammar.dart';final class Prompt43ToolsCustomCustomFormatGrammarType {const Prompt43ToolsCustomCustomFormatGrammarType._(this.value);

factory Prompt43ToolsCustomCustomFormatGrammarType.fromJson(String json) { return switch (json) {
  'grammar' => grammar,
  _ => Prompt43ToolsCustomCustomFormatGrammarType._(json),
}; }

static const Prompt43ToolsCustomCustomFormatGrammarType grammar = Prompt43ToolsCustomCustomFormatGrammarType._('grammar');

static const List<Prompt43ToolsCustomCustomFormatGrammarType> values = [grammar];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ToolsCustomCustomFormatGrammarType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ToolsCustomCustomFormatGrammarType($value)'; } 
 }
final class Prompt43ToolsCustomCustomFormatGrammar {const Prompt43ToolsCustomCustomFormatGrammar({required this.grammar, required this.type, });

factory Prompt43ToolsCustomCustomFormatGrammar.fromJson(Map<String, dynamic> json) { return Prompt43ToolsCustomCustomFormatGrammar(
  grammar: Prompt43ToolsCustomCustomFormatGrammarGrammar.fromJson(json['grammar'] as Map<String, dynamic>),
  type: Prompt43ToolsCustomCustomFormatGrammarType.fromJson(json['type'] as String),
); }

final Prompt43ToolsCustomCustomFormatGrammarGrammar grammar;

final Prompt43ToolsCustomCustomFormatGrammarType type;

Map<String, dynamic> toJson() { return {
  'grammar': grammar.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('grammar') &&
      json.containsKey('type'); } 
Prompt43ToolsCustomCustomFormatGrammar copyWith({Prompt43ToolsCustomCustomFormatGrammarGrammar? grammar, Prompt43ToolsCustomCustomFormatGrammarType? type, }) { return Prompt43ToolsCustomCustomFormatGrammar(
  grammar: grammar ?? this.grammar,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ToolsCustomCustomFormatGrammar &&
          grammar == other.grammar &&
          type == other.type; } 
@override int get hashCode { return Object.hash(grammar, type); } 
@override String toString() { return 'Prompt43ToolsCustomCustomFormatGrammar(grammar: $grammar, type: $type)'; } 
 }
