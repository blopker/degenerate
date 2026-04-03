// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateTranslationResponseJson {const CreateTranslationResponseJson({required this.text});

factory CreateTranslationResponseJson.fromJson(Map<String, dynamic> json) { return CreateTranslationResponseJson(
  text: json['text'] as String,
); }

final String text;

Map<String, dynamic> toJson() { return {
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String; } 
CreateTranslationResponseJson copyWith({String? text}) { return CreateTranslationResponseJson(
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTranslationResponseJson &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'CreateTranslationResponseJson(text: $text)'; } 
 }
