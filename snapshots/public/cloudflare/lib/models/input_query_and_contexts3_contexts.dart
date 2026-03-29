// GENERATED CODE - DO NOT MODIFY BY HAND

final class InputQueryAndContexts3Contexts {const InputQueryAndContexts3Contexts({this.text});

factory InputQueryAndContexts3Contexts.fromJson(Map<String, dynamic> json) { return InputQueryAndContexts3Contexts(
  text: json['text'] as String?,
); }

/// One of the provided context content
final String? text;

Map<String, dynamic> toJson() { return {
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InputQueryAndContexts3Contexts copyWith({String Function()? text}) { return InputQueryAndContexts3Contexts(
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputQueryAndContexts3Contexts &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'InputQueryAndContexts3Contexts(text: $text)'; } 
 }
