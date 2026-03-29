// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_token_logprob.dart';/// Log probability information for the choice.
final class CreateChatCompletionResponseChoicesLogprobs {const CreateChatCompletionResponseChoicesLogprobs({required this.content, required this.refusal, });

factory CreateChatCompletionResponseChoicesLogprobs.fromJson(Map<String, dynamic> json) { return CreateChatCompletionResponseChoicesLogprobs(
  content: (json['content'] as List<dynamic>?)?.map((e) => ChatCompletionTokenLogprob.fromJson(e as Map<String, dynamic>)).toList(),
  refusal: (json['refusal'] as List<dynamic>?)?.map((e) => ChatCompletionTokenLogprob.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of message content tokens with log probability information.
final List<ChatCompletionTokenLogprob>? content;

/// A list of message refusal tokens with log probability information.
final List<ChatCompletionTokenLogprob>? refusal;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.map((e) => e.toJson()).toList(),
  if (refusal != null) 'refusal': refusal?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('refusal'); } 
CreateChatCompletionResponseChoicesLogprobs copyWith({List<ChatCompletionTokenLogprob>? Function()? content, List<ChatCompletionTokenLogprob>? Function()? refusal, }) { return CreateChatCompletionResponseChoicesLogprobs(
  content: content != null ? content() : this.content,
  refusal: refusal != null ? refusal() : this.refusal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionResponseChoicesLogprobs &&
          listEquals(content, other.content) &&
          listEquals(refusal, other.refusal); } 
@override int get hashCode { return Object.hash(Object.hashAll(content ?? const []), Object.hashAll(refusal ?? const [])); } 
@override String toString() { return 'CreateChatCompletionResponseChoicesLogprobs(content: $content, refusal: $refusal)'; } 
 }
