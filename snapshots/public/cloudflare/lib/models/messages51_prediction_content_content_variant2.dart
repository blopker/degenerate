// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51PredictionContentContentVariant2Type {const Messages51PredictionContentContentVariant2Type._(this.value);

factory Messages51PredictionContentContentVariant2Type.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => Messages51PredictionContentContentVariant2Type._(json),
}; }

static const Messages51PredictionContentContentVariant2Type text = Messages51PredictionContentContentVariant2Type._('text');

static const List<Messages51PredictionContentContentVariant2Type> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51PredictionContentContentVariant2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51PredictionContentContentVariant2Type($value)'; } 
 }
final class Messages51PredictionContentContentVariant2 {const Messages51PredictionContentContentVariant2({required this.text, required this.type, });

factory Messages51PredictionContentContentVariant2.fromJson(Map<String, dynamic> json) { return Messages51PredictionContentContentVariant2(
  text: json['text'] as String,
  type: Messages51PredictionContentContentVariant2Type.fromJson(json['type'] as String),
); }

final String text;

final Messages51PredictionContentContentVariant2Type type;

Map<String, dynamic> toJson() { return {
  'text': text,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String &&
      json.containsKey('type'); } 
Messages51PredictionContentContentVariant2 copyWith({String? text, Messages51PredictionContentContentVariant2Type? type, }) { return Messages51PredictionContentContentVariant2(
  text: text ?? this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51PredictionContentContentVariant2 &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(text, type); } 
@override String toString() { return 'Messages51PredictionContentContentVariant2(text: $text, type: $type)'; } 
 }
