// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_prediction_content_content.dart';import 'prompt43_prediction_content_content_variant2.dart';final class Prompt43PredictionContentType {const Prompt43PredictionContentType._(this.value);

factory Prompt43PredictionContentType.fromJson(String json) { return switch (json) {
  'content' => content,
  _ => Prompt43PredictionContentType._(json),
}; }

static const Prompt43PredictionContentType content = Prompt43PredictionContentType._('content');

static const List<Prompt43PredictionContentType> values = [content];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43PredictionContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43PredictionContentType($value)'; } 
 }
final class Prompt43PredictionContent {const Prompt43PredictionContent({required this.content, required this.type, });

factory Prompt43PredictionContent.fromJson(Map<String, dynamic> json) { return Prompt43PredictionContent(
  content: OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => Prompt43PredictionContentContentVariant2.fromJson(e as Map<String, dynamic>)).toList(),),
  type: Prompt43PredictionContentType.fromJson(json['type'] as String),
); }

final Prompt43PredictionContentContent content;

final Prompt43PredictionContentType type;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('type'); } 
Prompt43PredictionContent copyWith({Prompt43PredictionContentContent? content, Prompt43PredictionContentType? type, }) { return Prompt43PredictionContent(
  content: content ?? this.content,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43PredictionContent &&
          content == other.content &&
          type == other.type; } 
@override int get hashCode { return Object.hash(content, type); } 
@override String toString() { return 'Prompt43PredictionContent(content: $content, type: $type)'; } 
 }
