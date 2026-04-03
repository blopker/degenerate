// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type discriminator that is always `input_text`.
@immutable final class UserMessageInputTextType {const UserMessageInputTextType._(this.value);

factory UserMessageInputTextType.fromJson(String json) { return switch (json) {
  'input_text' => inputText,
  _ => UserMessageInputTextType._(json),
}; }

static const UserMessageInputTextType inputText = UserMessageInputTextType._('input_text');

static const List<UserMessageInputTextType> values = [inputText];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserMessageInputTextType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserMessageInputTextType($value)'; } 
 }
/// Text block that a user contributed to the thread.
@immutable final class UserMessageInputText {const UserMessageInputText({required this.text, this.type = UserMessageInputTextType.inputText, });

factory UserMessageInputText.fromJson(Map<String, dynamic> json) { return UserMessageInputText(
  type: UserMessageInputTextType.fromJson(json['type'] as String),
  text: json['text'] as String,
); }

/// Type discriminator that is always `input_text`.
final UserMessageInputTextType type;

/// Plain-text content supplied by the user.
final String text;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String; } 
UserMessageInputText copyWith({UserMessageInputTextType? type, String? text, }) { return UserMessageInputText(
  type: type ?? this.type,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserMessageInputText &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'UserMessageInputText(type: $type, text: $text)'; } 
 }
