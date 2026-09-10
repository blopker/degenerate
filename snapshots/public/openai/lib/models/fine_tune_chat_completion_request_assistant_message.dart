// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_message_tool_calls2.dart';import 'chat_completion_request_assistant_message_content_part.dart';import 'fine_tune_chat_completion_request_assistant_message_audio.dart';import 'fine_tune_chat_completion_request_assistant_message_content.dart';import 'fine_tune_chat_completion_request_assistant_message_function_call.dart';/// The role of the messages author, in this case `assistant`.
@immutable final class FineTuneChatCompletionRequestAssistantMessageRole {const FineTuneChatCompletionRequestAssistantMessageRole._(this.value);

factory FineTuneChatCompletionRequestAssistantMessageRole.fromJson(String json) { return switch (json) {
  'assistant' => assistant,
  _ => FineTuneChatCompletionRequestAssistantMessageRole._(json),
}; }

static const FineTuneChatCompletionRequestAssistantMessageRole assistant = FineTuneChatCompletionRequestAssistantMessageRole._('assistant');

static const List<FineTuneChatCompletionRequestAssistantMessageRole> values = [assistant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneChatCompletionRequestAssistantMessageRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneChatCompletionRequestAssistantMessageRole($value)'; } 
 }
/// Controls whether the assistant message is trained against (0 or 1)
@immutable final class FineTuneChatCompletionRequestAssistantMessageWeight {const FineTuneChatCompletionRequestAssistantMessageWeight._(this.value);

factory FineTuneChatCompletionRequestAssistantMessageWeight.fromJson(int json) { return switch (json) {
  0 => $0,
  1 => $1,
  _ => FineTuneChatCompletionRequestAssistantMessageWeight._(json),
}; }

static const FineTuneChatCompletionRequestAssistantMessageWeight $0 = FineTuneChatCompletionRequestAssistantMessageWeight._(0);

static const FineTuneChatCompletionRequestAssistantMessageWeight $1 = FineTuneChatCompletionRequestAssistantMessageWeight._(1);

static const List<FineTuneChatCompletionRequestAssistantMessageWeight> values = [$0, $1];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneChatCompletionRequestAssistantMessageWeight && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneChatCompletionRequestAssistantMessageWeight($value)'; } 
 }
@immutable final class FineTuneChatCompletionRequestAssistantMessage {const FineTuneChatCompletionRequestAssistantMessage({required this.role, this.content = const Omittable.absent(), this.refusal = const Omittable.absent(), this.name, this.audio = const Omittable.absent(), this.toolCalls, this.functionCall = const Omittable.absent(), this.weight, });

factory FineTuneChatCompletionRequestAssistantMessage.fromJson(Map<String, dynamic> json) { return FineTuneChatCompletionRequestAssistantMessage(
  content: json.containsKey('content') ? Omittable(json['content'] != null ? OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => ChatCompletionRequestAssistantMessageContentPart.fromJson(e as Map<String, dynamic>)).toList(),) : null) : const Omittable.absent(),
  refusal: json.containsKey('refusal') ? Omittable(json['refusal'] as String?) : const Omittable.absent(),
  role: FineTuneChatCompletionRequestAssistantMessageRole.fromJson(json['role'] as String),
  name: json['name'] as String?,
  audio: json.containsKey('audio') ? Omittable(json['audio'] != null ? FineTuneChatCompletionRequestAssistantMessageAudio.fromJson(json['audio'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  toolCalls: (json['tool_calls'] as List<dynamic>?)?.map((e) => ChatCompletionMessageToolCalls2.fromJson(e as Map<String, dynamic>)).toList(),
  functionCall: json.containsKey('function_call') ? Omittable(json['function_call'] != null ? FineTuneChatCompletionRequestAssistantMessageFunctionCall.fromJson(json['function_call'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  weight: json['weight'] != null ? FineTuneChatCompletionRequestAssistantMessageWeight.fromJson((json['weight'] as num).toInt()) : null,
); }

/// The contents of the assistant message. Required unless `tool_calls` or `function_call` is specified.
/// 
final Omittable<FineTuneChatCompletionRequestAssistantMessageContent?> content;

/// The refusal message by the assistant.
final Omittable<String?> refusal;

/// The role of the messages author, in this case `assistant`.
final FineTuneChatCompletionRequestAssistantMessageRole role;

/// An optional name for the participant. Provides the model information to differentiate between participants of the same role.
final String? name;

/// Data about a previous audio response from the model.
/// [Learn more](/docs/guides/audio).
/// 
final Omittable<FineTuneChatCompletionRequestAssistantMessageAudio?> audio;

/// The tool calls generated by the model, such as function calls.
final List<ChatCompletionMessageToolCalls2>? toolCalls;

/// Deprecated and replaced by `tool_calls`. The name and arguments of a function that should be called, as generated by the model.
final Omittable<FineTuneChatCompletionRequestAssistantMessageFunctionCall?> functionCall;

/// Controls whether the assistant message is trained against (0 or 1)
final FineTuneChatCompletionRequestAssistantMessageWeight? weight;

Map<String, dynamic> toJson() { return {
  if (content.isPresent) 'content': content.value?.toJson(),
  if (refusal.isPresent) 'refusal': refusal.value,
  'role': role.toJson(),
  'name': ?name,
  if (audio.isPresent) 'audio': audio.value?.toJson(),
  if (toolCalls != null) 'tool_calls': toolCalls?.map((e) => e.toJson()).toList(),
  if (functionCall.isPresent) 'function_call': functionCall.value?.toJson(),
  if (weight != null) 'weight': weight?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role'); } 
FineTuneChatCompletionRequestAssistantMessage copyWith({Omittable<FineTuneChatCompletionRequestAssistantMessageContent?>? content, Omittable<String?>? refusal, FineTuneChatCompletionRequestAssistantMessageRole? role, String? Function()? name, Omittable<FineTuneChatCompletionRequestAssistantMessageAudio?>? audio, List<ChatCompletionMessageToolCalls2>? Function()? toolCalls, Omittable<FineTuneChatCompletionRequestAssistantMessageFunctionCall?>? functionCall, FineTuneChatCompletionRequestAssistantMessageWeight? Function()? weight, }) { return FineTuneChatCompletionRequestAssistantMessage(
  content: content ?? this.content,
  refusal: refusal ?? this.refusal,
  role: role ?? this.role,
  name: name != null ? name() : this.name,
  audio: audio ?? this.audio,
  toolCalls: toolCalls != null ? toolCalls() : this.toolCalls,
  functionCall: functionCall ?? this.functionCall,
  weight: weight != null ? weight() : this.weight,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuneChatCompletionRequestAssistantMessage &&
          content == other.content &&
          refusal == other.refusal &&
          role == other.role &&
          name == other.name &&
          audio == other.audio &&
          listEquals(toolCalls, other.toolCalls) &&
          functionCall == other.functionCall &&
          weight == other.weight; } 
@override int get hashCode { return Object.hash(content, refusal, role, name, audio, Object.hashAll(toolCalls ?? const []), functionCall, weight); } 
@override String toString() { return 'FineTuneChatCompletionRequestAssistantMessage(content: $content, refusal: $refusal, role: $role, name: $name, audio: $audio, toolCalls: $toolCalls, functionCall: $functionCall, weight: $weight)'; } 
 }
