// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InputQueryAndContexts4Contexts {const InputQueryAndContexts4Contexts({this.text});

factory InputQueryAndContexts4Contexts.fromJson(Map<String, dynamic> json) { return InputQueryAndContexts4Contexts(
  text: json['text'] as String?,
); }

/// One of the provided context content
final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
InputQueryAndContexts4Contexts copyWith({String Function()? text}) { return InputQueryAndContexts4Contexts(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputQueryAndContexts4Contexts &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'InputQueryAndContexts4Contexts(text: $text)'; } 
 }
