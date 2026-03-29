// GENERATED CODE - DO NOT MODIFY BY HAND

final class TextClassification {const TextClassification({required this.text});

factory TextClassification.fromJson(Map<String, dynamic> json) { return TextClassification(
  text: json['text'] as String,
); }

/// The text that you want to classify
final String text;

Map<String, dynamic> toJson() { return {
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String; } 
TextClassification copyWith({String? text}) { return TextClassification(
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextClassification &&
          text == other.text; } 
@override int get hashCode { return text.hashCode; } 
@override String toString() { return 'TextClassification(text: $text)'; } 
 }
