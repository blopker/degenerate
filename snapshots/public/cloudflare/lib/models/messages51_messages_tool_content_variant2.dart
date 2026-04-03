// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51MessagesToolContentVariant2Type {const Messages51MessagesToolContentVariant2Type._(this.value);

factory Messages51MessagesToolContentVariant2Type.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => Messages51MessagesToolContentVariant2Type._(json),
}; }

static const Messages51MessagesToolContentVariant2Type text = Messages51MessagesToolContentVariant2Type._('text');

static const List<Messages51MessagesToolContentVariant2Type> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51MessagesToolContentVariant2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51MessagesToolContentVariant2Type($value)'; } 
 }
@immutable final class Messages51MessagesToolContentVariant2 {const Messages51MessagesToolContentVariant2({required this.text, required this.type, });

factory Messages51MessagesToolContentVariant2.fromJson(Map<String, dynamic> json) { return Messages51MessagesToolContentVariant2(
  text: json['text'] as String,
  type: Messages51MessagesToolContentVariant2Type.fromJson(json['type'] as String),
); }

final String text;

final Messages51MessagesToolContentVariant2Type type;

Map<String, dynamic> toJson() { return {
  'text': text,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String &&
      json.containsKey('type'); } 
Messages51MessagesToolContentVariant2 copyWith({String? text, Messages51MessagesToolContentVariant2Type? type, }) { return Messages51MessagesToolContentVariant2(
  text: text ?? this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesToolContentVariant2 &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(text, type); } 
@override String toString() { return 'Messages51MessagesToolContentVariant2(text: $text, type: $type)'; } 
 }
