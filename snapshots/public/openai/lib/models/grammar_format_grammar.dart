// GENERATED CODE - DO NOT MODIFY BY HAND

/// The syntax of the grammar definition. One of `lark` or `regex`.
final class GrammarFormatGrammarSyntax {const GrammarFormatGrammarSyntax._(this.value);

factory GrammarFormatGrammarSyntax.fromJson(String json) { return switch (json) {
  'lark' => lark,
  'regex' => regex,
  _ => GrammarFormatGrammarSyntax._(json),
}; }

static const GrammarFormatGrammarSyntax lark = GrammarFormatGrammarSyntax._('lark');

static const GrammarFormatGrammarSyntax regex = GrammarFormatGrammarSyntax._('regex');

static const List<GrammarFormatGrammarSyntax> values = [lark, regex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GrammarFormatGrammarSyntax && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GrammarFormatGrammarSyntax($value)'; } 
 }
/// Your chosen grammar.
final class GrammarFormatGrammar {const GrammarFormatGrammar({required this.definition, required this.syntax, });

factory GrammarFormatGrammar.fromJson(Map<String, dynamic> json) { return GrammarFormatGrammar(
  definition: json['definition'] as String,
  syntax: GrammarFormatGrammarSyntax.fromJson(json['syntax'] as String),
); }

/// The grammar definition.
final String definition;

/// The syntax of the grammar definition. One of `lark` or `regex`.
final GrammarFormatGrammarSyntax syntax;

Map<String, dynamic> toJson() { return {
  'definition': definition,
  'syntax': syntax.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('definition') && json['definition'] is String &&
      json.containsKey('syntax'); } 
GrammarFormatGrammar copyWith({String? definition, GrammarFormatGrammarSyntax? syntax, }) { return GrammarFormatGrammar(
  definition: definition ?? this.definition,
  syntax: syntax ?? this.syntax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GrammarFormatGrammar &&
          definition == other.definition &&
          syntax == other.syntax; } 
@override int get hashCode { return Object.hash(definition, syntax); } 
@override String toString() { return 'GrammarFormatGrammar(definition: $definition, syntax: $syntax)'; } 
 }
