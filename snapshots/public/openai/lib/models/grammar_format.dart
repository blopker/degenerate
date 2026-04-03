// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'grammar_format_grammar.dart';/// Grammar format. Always `grammar`.
@immutable final class GrammarFormatType {const GrammarFormatType._(this.value);

factory GrammarFormatType.fromJson(String json) { return switch (json) {
  'grammar' => grammar,
  _ => GrammarFormatType._(json),
}; }

static const GrammarFormatType grammar = GrammarFormatType._('grammar');

static const List<GrammarFormatType> values = [grammar];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GrammarFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GrammarFormatType($value)'; } 
 }
/// A grammar defined by the user.
@immutable final class GrammarFormat {const GrammarFormat({required this.type, required this.grammar, });

factory GrammarFormat.fromJson(Map<String, dynamic> json) { return GrammarFormat(
  type: GrammarFormatType.fromJson(json['type'] as String),
  grammar: GrammarFormatGrammar.fromJson(json['grammar'] as Map<String, dynamic>),
); }

/// Grammar format. Always `grammar`.
final GrammarFormatType type;

/// Your chosen grammar.
final GrammarFormatGrammar grammar;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'grammar': grammar.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('grammar'); } 
GrammarFormat copyWith({GrammarFormatType? type, GrammarFormatGrammar? grammar, }) { return GrammarFormat(
  type: type ?? this.type,
  grammar: grammar ?? this.grammar,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GrammarFormat &&
          type == other.type &&
          grammar == other.grammar; } 
@override int get hashCode { return Object.hash(type, grammar); } 
@override String toString() { return 'GrammarFormat(type: $type, grammar: $grammar)'; } 
 }
