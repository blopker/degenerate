// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_message_list_data_annotations_url_citation.dart';/// The type of the URL citation. Always `url_citation`.
@immutable final class ChatCompletionMessageListDataAnnotationsType {const ChatCompletionMessageListDataAnnotationsType._(this.value);

factory ChatCompletionMessageListDataAnnotationsType.fromJson(String json) { return switch (json) {
  'url_citation' => urlCitation,
  _ => ChatCompletionMessageListDataAnnotationsType._(json),
}; }

static const ChatCompletionMessageListDataAnnotationsType urlCitation = ChatCompletionMessageListDataAnnotationsType._('url_citation');

static const List<ChatCompletionMessageListDataAnnotationsType> values = [urlCitation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionMessageListDataAnnotationsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionMessageListDataAnnotationsType($value)'; } 
 }
/// A URL citation when using web search.
/// 
@immutable final class ChatCompletionMessageListDataAnnotations {const ChatCompletionMessageListDataAnnotations({required this.type, required this.urlCitation, });

factory ChatCompletionMessageListDataAnnotations.fromJson(Map<String, dynamic> json) { return ChatCompletionMessageListDataAnnotations(
  type: ChatCompletionMessageListDataAnnotationsType.fromJson(json['type'] as String),
  urlCitation: ChatCompletionMessageListDataAnnotationsUrlCitation.fromJson(json['url_citation'] as Map<String, dynamic>),
); }

/// The type of the URL citation. Always `url_citation`.
final ChatCompletionMessageListDataAnnotationsType type;

/// A URL citation when using web search.
final ChatCompletionMessageListDataAnnotationsUrlCitation urlCitation;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'url_citation': urlCitation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('url_citation'); } 
ChatCompletionMessageListDataAnnotations copyWith({ChatCompletionMessageListDataAnnotationsType? type, ChatCompletionMessageListDataAnnotationsUrlCitation? urlCitation, }) { return ChatCompletionMessageListDataAnnotations(
  type: type ?? this.type,
  urlCitation: urlCitation ?? this.urlCitation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionMessageListDataAnnotations &&
          type == other.type &&
          urlCitation == other.urlCitation; } 
@override int get hashCode { return Object.hash(type, urlCitation); } 
@override String toString() { return 'ChatCompletionMessageListDataAnnotations(type: $type, urlCitation: $urlCitation)'; } 
 }
