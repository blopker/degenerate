// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_chat_completion_response_choices.dart';import 'ai_search_instance_chat_completion_response_chunks.dart';@immutable final class AiSearchInstanceChatCompletionResponse {const AiSearchInstanceChatCompletionResponse({required this.choices, required this.chunks, this.id, this.model, this.object, this.additionalProperties = const {}, });

factory AiSearchInstanceChatCompletionResponse.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChatCompletionResponse(
  choices: (json['choices'] as List<dynamic>).map((e) => AiSearchInstanceChatCompletionResponseChoices.fromJson(e as Map<String, dynamic>)).toList(),
  chunks: (json['chunks'] as List<dynamic>).map((e) => AiSearchInstanceChatCompletionResponseChunks.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String?,
  model: json['model'] as String?,
  object: json['object'] as String?,
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'choices', 'chunks', 'id', 'model', 'object'}.contains(e.key))),
); }

final List<AiSearchInstanceChatCompletionResponseChoices> choices;

final List<AiSearchInstanceChatCompletionResponseChunks> chunks;

final String? id;

final String? model;

final String? object;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'choices': choices.map((e) => e.toJson()).toList(),
  'chunks': chunks.map((e) => e.toJson()).toList(),
  'id': ?id,
  'model': ?model,
  'object': ?object,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('choices') &&
      json.containsKey('chunks'); } 
AiSearchInstanceChatCompletionResponse copyWith({List<AiSearchInstanceChatCompletionResponseChoices>? choices, List<AiSearchInstanceChatCompletionResponseChunks>? chunks, String Function()? id, String Function()? model, String Function()? object, Map<String, dynamic>? additionalProperties, }) { return AiSearchInstanceChatCompletionResponse(
  choices: choices ?? this.choices,
  chunks: chunks ?? this.chunks,
  id: id != null ? id() : this.id,
  model: model != null ? model() : this.model,
  object: object != null ? object() : this.object,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChatCompletionResponse &&
          listEquals(choices, other.choices) &&
          listEquals(chunks, other.chunks) &&
          id == other.id &&
          model == other.model &&
          object == other.object &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(Object.hashAll(choices), Object.hashAll(chunks), id, model, object, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'AiSearchInstanceChatCompletionResponse(choices: $choices, chunks: $chunks, id: $id, model: $model, object: $object, additionalProperties: $additionalProperties)'; } 
 }
