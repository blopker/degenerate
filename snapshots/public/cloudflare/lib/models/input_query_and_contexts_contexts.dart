// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InputQueryAndContextsContexts {const InputQueryAndContextsContexts({this.text});

factory InputQueryAndContextsContexts.fromJson(Map<String, dynamic> json) { return InputQueryAndContextsContexts(
  text: json['text'] as String?,
); }

/// One of the provided context content
final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text'}.contains(key)); } 
InputQueryAndContextsContexts copyWith({String Function()? text}) { return InputQueryAndContextsContexts(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputQueryAndContextsContexts &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'InputQueryAndContextsContexts(text: $text)'; } 
 }
