// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_request_message_content_part_text.dart';import 'prediction_content_content.dart';/// The type of the predicted content you want to provide. This type is
/// currently always `content`.
/// 
@immutable final class PredictionContentType {const PredictionContentType._(this.value);

factory PredictionContentType.fromJson(String json) { return switch (json) {
  'content' => content,
  _ => PredictionContentType._(json),
}; }

static const PredictionContentType content = PredictionContentType._('content');

static const List<PredictionContentType> values = [content];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PredictionContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PredictionContentType($value)'; } 
 }
/// Static predicted output content, such as the content of a text file that is
/// being regenerated.
/// 
@immutable final class PredictionContent {const PredictionContent({required this.type, required this.content, });

factory PredictionContent.fromJson(Map<String, dynamic> json) { return PredictionContent(
  type: PredictionContentType.fromJson(json['type'] as String),
  content: OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => ChatCompletionRequestMessageContentPartText.fromJson(e as Map<String, dynamic>)).toList(),),
); }

/// The type of the predicted content you want to provide. This type is
/// currently always `content`.
/// 
final PredictionContentType type;

/// The content that should be matched when generating a model response.
/// If generated tokens would match this content, the entire model response
/// can be returned much more quickly.
/// 
final PredictionContentContent content;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'content': content.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('content'); } 
PredictionContent copyWith({PredictionContentType? type, PredictionContentContent? content, }) { return PredictionContent(
  type: type ?? this.type,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PredictionContent &&
          type == other.type &&
          content == other.content; } 
@override int get hashCode { return Object.hash(type, content); } 
@override String toString() { return 'PredictionContent(type: $type, content: $content)'; } 
 }
