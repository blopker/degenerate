// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages45MessagesContentVariant2 {const Messages45MessagesContentVariant2({this.text, this.type, });

factory Messages45MessagesContentVariant2.fromJson(Map<String, dynamic> json) { return Messages45MessagesContentVariant2(
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
Messages45MessagesContentVariant2 copyWith({String Function()? text, String Function()? type, }) { return Messages45MessagesContentVariant2(
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages45MessagesContentVariant2 &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(text, type); } 
@override String toString() { return 'Messages45MessagesContentVariant2(text: $text, type: $type)'; } 
 }
