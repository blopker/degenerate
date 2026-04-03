// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TextContentType {const TextContentType._(this.value);

factory TextContentType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => TextContentType._(json),
}; }

static const TextContentType text = TextContentType._('text');

static const List<TextContentType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TextContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TextContentType($value)'; } 
 }
/// A text content.
@immutable final class TextContent {const TextContent({required this.text, this.type = TextContentType.text, });

factory TextContent.fromJson(Map<String, dynamic> json) { return TextContent(
  type: TextContentType.fromJson(json['type'] as String),
  text: json['text'] as String,
); }

final TextContentType type;

final String text;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String; } 
TextContent copyWith({TextContentType? type, String? text, }) { return TextContent(
  type: type ?? this.type,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextContent &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'TextContent(type: $type, text: $text)'; } 
 }
