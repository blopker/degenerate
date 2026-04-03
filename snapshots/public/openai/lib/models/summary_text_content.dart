// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the object. Always `summary_text`.
@immutable final class SummaryTextContentType {const SummaryTextContentType._(this.value);

factory SummaryTextContentType.fromJson(String json) { return switch (json) {
  'summary_text' => summaryText,
  _ => SummaryTextContentType._(json),
}; }

static const SummaryTextContentType summaryText = SummaryTextContentType._('summary_text');

static const List<SummaryTextContentType> values = [summaryText];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SummaryTextContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SummaryTextContentType($value)'; } 
 }
/// A summary text from the model.
@immutable final class SummaryTextContent {const SummaryTextContent({required this.text, this.type = SummaryTextContentType.summaryText, });

factory SummaryTextContent.fromJson(Map<String, dynamic> json) { return SummaryTextContent(
  type: SummaryTextContentType.fromJson(json['type'] as String),
  text: json['text'] as String,
); }

/// The type of the object. Always `summary_text`.
final SummaryTextContentType type;

/// A summary of the reasoning output from the model so far.
final String text;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String; } 
SummaryTextContent copyWith({SummaryTextContentType? type, String? text, }) { return SummaryTextContent(
  type: type ?? this.type,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SummaryTextContent &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'SummaryTextContent(type: $type, text: $text)'; } 
 }
