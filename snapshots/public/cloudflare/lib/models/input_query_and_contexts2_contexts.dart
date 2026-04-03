// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InputQueryAndContexts2Contexts {const InputQueryAndContexts2Contexts({this.text});

factory InputQueryAndContexts2Contexts.fromJson(Map<String, dynamic> json) { return InputQueryAndContexts2Contexts(
  text: json['text'] as String?,
); }

/// One of the provided context content
final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
InputQueryAndContexts2Contexts copyWith({String Function()? text}) { return InputQueryAndContexts2Contexts(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputQueryAndContexts2Contexts &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'InputQueryAndContexts2Contexts(text: $text)'; } 
 }
