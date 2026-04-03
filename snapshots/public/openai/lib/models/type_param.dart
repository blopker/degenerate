// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An action to type in text.
@immutable final class TypeParam {const TypeParam({required this.text, this.type = 'type', });

factory TypeParam.fromJson(Map<String, dynamic> json) { return TypeParam(
  type: json['type'] as String,
  text: json['text'] as String,
); }

/// Specifies the event type. For a type action, this property is always set to `type`.
final String type;

/// The text to type.
final String text;

Map<String, dynamic> toJson() { return {
  'type': type,
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('text') && json['text'] is String; } 
TypeParam copyWith({String? type, String? text, }) { return TypeParam(
  type: type ?? this.type,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TypeParam &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'TypeParam(type: $type, text: $text)'; } 
 }
