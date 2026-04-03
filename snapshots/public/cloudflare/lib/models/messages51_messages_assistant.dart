// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_messages_assistant_audio_variant1.dart';import 'messages51_messages_assistant_content.dart';import 'messages51_messages_assistant_content_variant2.dart';import 'messages51_messages_assistant_function_call_variant1.dart';import 'messages51_messages_assistant_tool_calls.dart';import 'messages51_messages_assistant_tool_calls_custom.dart';import 'messages51_messages_assistant_tool_calls_function.dart';@immutable final class Messages51MessagesAssistantRole {const Messages51MessagesAssistantRole._(this.value);

factory Messages51MessagesAssistantRole.fromJson(String json) { return switch (json) {
  'assistant' => assistant,
  _ => Messages51MessagesAssistantRole._(json),
}; }

static const Messages51MessagesAssistantRole assistant = Messages51MessagesAssistantRole._('assistant');

static const List<Messages51MessagesAssistantRole> values = [assistant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51MessagesAssistantRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51MessagesAssistantRole($value)'; } 
 }
@immutable final class Messages51MessagesAssistant {const Messages51MessagesAssistant({required this.role, this.audio, this.content, this.functionCall, this.name, this.refusal, this.toolCalls, });

factory Messages51MessagesAssistant.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistant(
  audio: json['audio'] != null ? Messages51MessagesAssistantAudioVariant1.fromJson(json['audio'] as Map<String, dynamic>) : null,
  content: json['content'] != null ? OneOf2.parse(json['content'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => Messages51MessagesAssistantContentVariant2.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  functionCall: json['function_call'] != null ? Messages51MessagesAssistantFunctionCallVariant1.fromJson(json['function_call'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  refusal: json['refusal'] as String?,
  role: Messages51MessagesAssistantRole.fromJson(json['role'] as String),
  toolCalls: (json['tool_calls'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => Messages51MessagesAssistantToolCallsFunction.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages51MessagesAssistantToolCallsCustom.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final Messages51MessagesAssistantAudioVariant1? audio;

final Messages51MessagesAssistantContent? content;

final Messages51MessagesAssistantFunctionCallVariant1? functionCall;

final String? name;

final String? refusal;

final Messages51MessagesAssistantRole role;

final List<Messages51MessagesAssistantToolCalls>? toolCalls;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  if (content != null) 'content': content?.toJson(),
  if (functionCall != null) 'function_call': functionCall?.toJson(),
  'name': ?name,
  'refusal': ?refusal,
  'role': role.toJson(),
  if (toolCalls != null) 'tool_calls': toolCalls?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('role'); } 
Messages51MessagesAssistant copyWith({Messages51MessagesAssistantAudioVariant1 Function()? audio, Messages51MessagesAssistantContent Function()? content, Messages51MessagesAssistantFunctionCallVariant1 Function()? functionCall, String Function()? name, String? Function()? refusal, Messages51MessagesAssistantRole? role, List<Messages51MessagesAssistantToolCalls> Function()? toolCalls, }) { return Messages51MessagesAssistant(
  audio: audio != null ? audio() : this.audio,
  content: content != null ? content() : this.content,
  functionCall: functionCall != null ? functionCall() : this.functionCall,
  name: name != null ? name() : this.name,
  refusal: refusal != null ? refusal() : this.refusal,
  role: role ?? this.role,
  toolCalls: toolCalls != null ? toolCalls() : this.toolCalls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesAssistant &&
          audio == other.audio &&
          content == other.content &&
          functionCall == other.functionCall &&
          name == other.name &&
          refusal == other.refusal &&
          role == other.role &&
          listEquals(toolCalls, other.toolCalls); } 
@override int get hashCode { return Object.hash(audio, content, functionCall, name, refusal, role, Object.hashAll(toolCalls ?? const [])); } 
@override String toString() { return 'Messages51MessagesAssistant(audio: $audio, content: $content, functionCall: $functionCall, name: $name, refusal: $refusal, role: $role, toolCalls: $toolCalls)'; } 
 }
