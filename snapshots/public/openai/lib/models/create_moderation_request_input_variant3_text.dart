// GENERATED CODE - DO NOT MODIFY BY HAND

/// Always `text`.
final class CreateModerationRequestInputVariant3TextType {const CreateModerationRequestInputVariant3TextType._(this.value);

factory CreateModerationRequestInputVariant3TextType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => CreateModerationRequestInputVariant3TextType._(json),
}; }

static const CreateModerationRequestInputVariant3TextType text = CreateModerationRequestInputVariant3TextType._('text');

static const List<CreateModerationRequestInputVariant3TextType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateModerationRequestInputVariant3TextType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateModerationRequestInputVariant3TextType($value)'; } 
 }
/// An object describing text to classify.
final class CreateModerationRequestInputVariant3Text {const CreateModerationRequestInputVariant3Text({required this.type, required this.text, });

factory CreateModerationRequestInputVariant3Text.fromJson(Map<String, dynamic> json) { return CreateModerationRequestInputVariant3Text(
  type: CreateModerationRequestInputVariant3TextType.fromJson(json['type'] as String),
  text: json['text'] as String,
); }

/// Always `text`.
final CreateModerationRequestInputVariant3TextType type;

/// A string of text to classify.
final String text;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String; } 
CreateModerationRequestInputVariant3Text copyWith({CreateModerationRequestInputVariant3TextType? type, String? text, }) { return CreateModerationRequestInputVariant3Text(
  type: type ?? this.type,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateModerationRequestInputVariant3Text &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'CreateModerationRequestInputVariant3Text(type: $type, text: $text)'; } 
 }
