// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_chat_completion_request_ai_search_options.dart';import 'ai_search_instance_chat_completion_request_messages.dart';import 'ai_search_instance_chat_completion_request_model.dart';@immutable final class AiSearchInstanceChatCompletionRequest {const AiSearchInstanceChatCompletionRequest({required this.messages, this.aiSearchOptions, this.model, this.stream, this.additionalProperties = const {}, });

factory AiSearchInstanceChatCompletionRequest.fromJson(Map<String, dynamic> json) {return AiSearchInstanceChatCompletionRequest(
  aiSearchOptions: json['ai_search_options'] != null ? AiSearchInstanceChatCompletionRequestAiSearchOptions.fromJson(json['ai_search_options'] as Map<String, dynamic>) : null,
  messages: (json['messages'] as List<dynamic>).map((e) => AiSearchInstanceChatCompletionRequestMessages.fromJson(e as Map<String, dynamic>)).toList(),
  model: json['model'] != null ? AiSearchInstanceChatCompletionRequestModel.fromJson(json['model']) : null,
  stream: json['stream'] as bool?,
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'ai_search_options', 'messages', 'model', 'stream'}.contains(e.key))),
);}

final AiSearchInstanceChatCompletionRequestAiSearchOptions? aiSearchOptions;

final List<AiSearchInstanceChatCompletionRequestMessages> messages;

final AiSearchInstanceChatCompletionRequestModel? model;

final bool? stream;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() {return {
  if (aiSearchOptions != null) 'ai_search_options': aiSearchOptions?.toJson(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (model != null) 'model': model?.toJson(),
  'stream': ?stream,
  ...additionalProperties,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('messages');}
AiSearchInstanceChatCompletionRequest copyWith({AiSearchInstanceChatCompletionRequestAiSearchOptions? Function()? aiSearchOptions, List<AiSearchInstanceChatCompletionRequestMessages>? messages, AiSearchInstanceChatCompletionRequestModel? Function()? model, bool? Function()? stream, Map<String, dynamic>? additionalProperties, }) {return AiSearchInstanceChatCompletionRequest(
  aiSearchOptions: aiSearchOptions != null ? aiSearchOptions() : this.aiSearchOptions,
  messages: messages ?? this.messages,
  model: model != null ? model() : this.model,
  stream: stream != null ? stream() : this.stream,
  additionalProperties: additionalProperties ?? this.additionalProperties,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AiSearchInstanceChatCompletionRequest &&
          aiSearchOptions == other.aiSearchOptions &&
          listEquals(messages, other.messages) &&
          model == other.model &&
          stream == other.stream &&
          mapEquals(additionalProperties, other.additionalProperties);}
@override int get hashCode {return Object.hash(aiSearchOptions, Object.hashAll(messages), model, stream, mapHash(additionalProperties));}
@override String toString() {return 'AiSearchInstanceChatCompletionRequest(aiSearchOptions: $aiSearchOptions, messages: $messages, model: $model, stream: $stream, additionalProperties: $additionalProperties)';}
}
