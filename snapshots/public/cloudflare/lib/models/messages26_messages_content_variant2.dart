// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages26MessagesContentVariant2 {const Messages26MessagesContentVariant2({this.text, this.type, });

factory Messages26MessagesContentVariant2.fromJson(Map<String, dynamic> json) { return Messages26MessagesContentVariant2(
  text: json['text'] as String?,
  type: json['type'] as String?,
); }

/// Text content
final String? text;

/// Type of the content (text)
final String? type;

Map<String, dynamic> toJson() { return {
  'text': ?text,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text', 'type'}.contains(key)); } 
Messages26MessagesContentVariant2 copyWith({String Function()? text, String Function()? type, }) { return Messages26MessagesContentVariant2(
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages26MessagesContentVariant2 &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(text, type); } 
@override String toString() { return 'Messages26MessagesContentVariant2(text: $text, type: $type)'; } 
 }
