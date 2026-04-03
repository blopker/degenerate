// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51MessagesAssistantContentVariant2Type {const Messages51MessagesAssistantContentVariant2Type._(this.value);

factory Messages51MessagesAssistantContentVariant2Type.fromJson(String json) { return switch (json) {
  'text' => text,
  'refusal' => refusal,
  _ => Messages51MessagesAssistantContentVariant2Type._(json),
}; }

static const Messages51MessagesAssistantContentVariant2Type text = Messages51MessagesAssistantContentVariant2Type._('text');

static const Messages51MessagesAssistantContentVariant2Type refusal = Messages51MessagesAssistantContentVariant2Type._('refusal');

static const List<Messages51MessagesAssistantContentVariant2Type> values = [text, refusal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51MessagesAssistantContentVariant2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51MessagesAssistantContentVariant2Type($value)'; } 
 }
@immutable final class Messages51MessagesAssistantContentVariant2 {const Messages51MessagesAssistantContentVariant2({required this.type, this.refusal, this.text, });

factory Messages51MessagesAssistantContentVariant2.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistantContentVariant2(
  refusal: json['refusal'] as String?,
  text: json['text'] as String?,
  type: Messages51MessagesAssistantContentVariant2Type.fromJson(json['type'] as String),
); }

final String? refusal;

final String? text;

final Messages51MessagesAssistantContentVariant2Type type;

Map<String, dynamic> toJson() { return {
  'refusal': ?refusal,
  'text': ?text,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Messages51MessagesAssistantContentVariant2 copyWith({String Function()? refusal, String Function()? text, Messages51MessagesAssistantContentVariant2Type? type, }) { return Messages51MessagesAssistantContentVariant2(
  refusal: refusal != null ? refusal() : this.refusal,
  text: text != null ? text() : this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesAssistantContentVariant2 &&
          refusal == other.refusal &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(refusal, text, type); } 
@override String toString() { return 'Messages51MessagesAssistantContentVariant2(refusal: $refusal, text: $text, type: $type)'; } 
 }
