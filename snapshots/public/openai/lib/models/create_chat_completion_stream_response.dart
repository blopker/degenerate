// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'completion_usage.dart';import 'create_chat_completion_stream_response_choices.dart';import 'service_tier.dart';/// The object type, which is always `chat.completion.chunk`.
final class CreateChatCompletionStreamResponseObject {const CreateChatCompletionStreamResponseObject._(this.value);

factory CreateChatCompletionStreamResponseObject.fromJson(String json) { return switch (json) {
  'chat.completion.chunk' => chatCompletionChunk,
  _ => CreateChatCompletionStreamResponseObject._(json),
}; }

static const CreateChatCompletionStreamResponseObject chatCompletionChunk = CreateChatCompletionStreamResponseObject._('chat.completion.chunk');

static const List<CreateChatCompletionStreamResponseObject> values = [chatCompletionChunk];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionStreamResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateChatCompletionStreamResponseObject($value)'; } 
 }
/// Represents a streamed chunk of a chat completion response returned
/// by the model, based on the provided input.
/// [Learn more](/docs/guides/streaming-responses).
/// 
final class CreateChatCompletionStreamResponse {const CreateChatCompletionStreamResponse({required this.id, required this.choices, required this.created, required this.model, this.serviceTier, this.systemFingerprint, required this.object, this.usage, });

factory CreateChatCompletionStreamResponse.fromJson(Map<String, dynamic> json) { return CreateChatCompletionStreamResponse(
  id: json['id'] as String,
  choices: (json['choices'] as List<dynamic>).map((e) => CreateChatCompletionStreamResponseChoices.fromJson(e as Map<String, dynamic>)).toList(),
  created: (json['created'] as num).toInt(),
  model: json['model'] as String,
  serviceTier: json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null,
  systemFingerprint: json['system_fingerprint'] as String?,
  object: CreateChatCompletionStreamResponseObject.fromJson(json['object'] as String),
  usage: json['usage'] != null ? CompletionUsage.fromJson(json['usage'] as Map<String, dynamic>) : null,
); }

/// A unique identifier for the chat completion. Each chunk has the same ID.
final String id;

/// A list of chat completion choices. Can contain more than one elements if `n` is greater than 1. Can also be empty for the
/// last chunk if you set `stream_options: {"include_usage": true}`.
/// 
final List<CreateChatCompletionStreamResponseChoices> choices;

/// The Unix timestamp (in seconds) of when the chat completion was created. Each chunk has the same timestamp.
final int created;

/// The model to generate the completion.
final String model;

final ServiceTier? serviceTier;

/// This fingerprint represents the backend configuration that the model runs with.
/// Can be used in conjunction with the `seed` request parameter to understand when backend changes have been made that might impact determinism.
/// 
final String? systemFingerprint;

/// The object type, which is always `chat.completion.chunk`.
final CreateChatCompletionStreamResponseObject object;

/// An optional field that will only be present when you set
/// `stream_options: {"include_usage": true}` in your request. When present, it
/// contains a null value **except for the last chunk** which contains the
/// token usage statistics for the entire request.
/// 
/// **NOTE:** If the stream is interrupted or cancelled, you may not
/// receive the final usage chunk which contains the total token usage for
/// the request.
/// 
final CompletionUsage? usage;

Map<String, dynamic> toJson() { return {
  'id': id,
  'choices': choices.map((e) => e.toJson()).toList(),
  'created': created,
  'model': model,
  if (serviceTier != null) 'service_tier': serviceTier?.toJson(),
  'system_fingerprint': ?systemFingerprint,
  'object': object.toJson(),
  if (usage != null) 'usage': usage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('choices') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('model') && json['model'] is String &&
      json.containsKey('object'); } 
CreateChatCompletionStreamResponse copyWith({String? id, List<CreateChatCompletionStreamResponseChoices>? choices, int? created, String? model, ServiceTier? Function()? serviceTier, String Function()? systemFingerprint, CreateChatCompletionStreamResponseObject? object, CompletionUsage? Function()? usage, }) { return CreateChatCompletionStreamResponse(
  id: id ?? this.id,
  choices: choices ?? this.choices,
  created: created ?? this.created,
  model: model ?? this.model,
  serviceTier: serviceTier != null ? serviceTier() : this.serviceTier,
  systemFingerprint: systemFingerprint != null ? systemFingerprint() : this.systemFingerprint,
  object: object ?? this.object,
  usage: usage != null ? usage() : this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionStreamResponse &&
          id == other.id &&
          listEquals(choices, other.choices) &&
          created == other.created &&
          model == other.model &&
          serviceTier == other.serviceTier &&
          systemFingerprint == other.systemFingerprint &&
          object == other.object &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(id, Object.hashAll(choices), created, model, serviceTier, systemFingerprint, object, usage); } 
@override String toString() { return 'CreateChatCompletionStreamResponse(id: $id, choices: $choices, created: $created, model: $model, serviceTier: $serviceTier, systemFingerprint: $systemFingerprint, object: $object, usage: $usage)'; } 
 }
