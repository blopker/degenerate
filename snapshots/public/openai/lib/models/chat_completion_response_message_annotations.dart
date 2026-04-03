// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_response_message_annotations_url_citation.dart';/// The type of the URL citation. Always `url_citation`.
@immutable final class ChatCompletionResponseMessageAnnotationsType {const ChatCompletionResponseMessageAnnotationsType._(this.value);

factory ChatCompletionResponseMessageAnnotationsType.fromJson(String json) { return switch (json) {
  'url_citation' => urlCitation,
  _ => ChatCompletionResponseMessageAnnotationsType._(json),
}; }

static const ChatCompletionResponseMessageAnnotationsType urlCitation = ChatCompletionResponseMessageAnnotationsType._('url_citation');

static const List<ChatCompletionResponseMessageAnnotationsType> values = [urlCitation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionResponseMessageAnnotationsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionResponseMessageAnnotationsType($value)'; } 
 }
/// A URL citation when using web search.
/// 
@immutable final class ChatCompletionResponseMessageAnnotations {const ChatCompletionResponseMessageAnnotations({required this.type, required this.urlCitation, });

factory ChatCompletionResponseMessageAnnotations.fromJson(Map<String, dynamic> json) { return ChatCompletionResponseMessageAnnotations(
  type: ChatCompletionResponseMessageAnnotationsType.fromJson(json['type'] as String),
  urlCitation: ChatCompletionResponseMessageAnnotationsUrlCitation.fromJson(json['url_citation'] as Map<String, dynamic>),
); }

/// The type of the URL citation. Always `url_citation`.
final ChatCompletionResponseMessageAnnotationsType type;

/// A URL citation when using web search.
final ChatCompletionResponseMessageAnnotationsUrlCitation urlCitation;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'url_citation': urlCitation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('url_citation'); } 
ChatCompletionResponseMessageAnnotations copyWith({ChatCompletionResponseMessageAnnotationsType? type, ChatCompletionResponseMessageAnnotationsUrlCitation? urlCitation, }) { return ChatCompletionResponseMessageAnnotations(
  type: type ?? this.type,
  urlCitation: urlCitation ?? this.urlCitation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionResponseMessageAnnotations &&
          type == other.type &&
          urlCitation == other.urlCitation; } 
@override int get hashCode { return Object.hash(type, urlCitation); } 
@override String toString() { return 'ChatCompletionResponseMessageAnnotations(type: $type, urlCitation: $urlCitation)'; } 
 }
