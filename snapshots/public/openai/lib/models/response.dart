// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'conversation2.dart';import 'input_item.dart';import 'output_item.dart';import 'response_error.dart';import 'response_incomplete_details.dart';import 'response_instructions.dart';import 'response_usage.dart';import 'service_tier.dart';/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
@immutable final class ResponsePromptCacheRetention {const ResponsePromptCacheRetention._(this.value);

factory ResponsePromptCacheRetention.fromJson(String json) { return switch (json) {
  'in-memory' => inMemory,
  '24h' => $24h,
  _ => ResponsePromptCacheRetention._(json),
}; }

static const ResponsePromptCacheRetention inMemory = ResponsePromptCacheRetention._('in-memory');

static const ResponsePromptCacheRetention $24h = ResponsePromptCacheRetention._('24h');

static const List<ResponsePromptCacheRetention> values = [inMemory, $24h];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsePromptCacheRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsePromptCacheRetention($value)'; } 
 }
/// The object type of this resource - always set to `response`.
/// 
@immutable final class ResponseObject {const ResponseObject._(this.value);

factory ResponseObject.fromJson(String json) { return switch (json) {
  'response' => response,
  _ => ResponseObject._(json),
}; }

static const ResponseObject response = ResponseObject._('response');

static const List<ResponseObject> values = [response];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseObject($value)'; } 
 }
/// The status of the response generation. One of `completed`, `failed`,
/// `in_progress`, `cancelled`, `queued`, or `incomplete`.
/// 
@immutable final class ResponseStatus {const ResponseStatus._(this.value);

factory ResponseStatus.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'failed' => failed,
  'in_progress' => inProgress,
  'cancelled' => cancelled,
  'queued' => queued,
  'incomplete' => incomplete,
  _ => ResponseStatus._(json),
}; }

static const ResponseStatus completed = ResponseStatus._('completed');

static const ResponseStatus failed = ResponseStatus._('failed');

static const ResponseStatus inProgress = ResponseStatus._('in_progress');

static const ResponseStatus cancelled = ResponseStatus._('cancelled');

static const ResponseStatus queued = ResponseStatus._('queued');

static const ResponseStatus incomplete = ResponseStatus._('incomplete');

static const List<ResponseStatus> values = [completed, failed, inProgress, cancelled, queued, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseStatus($value)'; } 
 }
@immutable final class Response {const Response({required this.metadata, required this.temperature, required this.topP, required this.id, required this.object, required this.createdAt, required this.error, required this.incompleteDetails, required this.output, required this.instructions, this.topLogprobs, this.user, this.safetyIdentifier, this.promptCacheKey, this.serviceTier, this.promptCacheRetention, this.status, this.completedAt, this.outputText, this.usage, this.parallelToolCalls = true, this.conversation, });

factory Response.fromJson(Map<String, dynamic> json) { return Response(
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  topLogprobs: json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
  user: json['user'] as String?,
  safetyIdentifier: json['safety_identifier'] as String?,
  promptCacheKey: json['prompt_cache_key'] as String?,
  serviceTier: json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null,
  promptCacheRetention: json['prompt_cache_retention'] != null ? ResponsePromptCacheRetention.fromJson(json['prompt_cache_retention'] as String) : null,
  id: json['id'] as String,
  object: ResponseObject.fromJson(json['object'] as String),
  status: json['status'] != null ? ResponseStatus.fromJson(json['status'] as String) : null,
  createdAt: (json['created_at'] as num).toDouble(),
  completedAt: json['completed_at'] != null ? (json['completed_at'] as num).toDouble() : null,
  error: ResponseError.fromJson(json['error'] as Map<String, dynamic>),
  incompleteDetails: json['incomplete_details'] != null ? ResponseIncompleteDetails.fromJson(json['incomplete_details'] as Map<String, dynamic>) : null,
  output: (json['output'] as List<dynamic>).map((e) => OutputItem.fromJson(e as Map<String, dynamic>)).toList(),
  instructions: json['instructions'] != null ? OneOf2.parse(json['instructions'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  outputText: json['output_text'] as String?,
  usage: json['usage'] != null ? ResponseUsage.fromJson(json['usage'] as Map<String, dynamic>) : null,
  parallelToolCalls: json['parallel_tool_calls'] as bool,
  conversation: json['conversation'] != null ? Conversation2.fromJson(json['conversation'] as Map<String, dynamic>) : null,
); }

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

/// An integer between 0 and 20 specifying the number of most likely tokens to
/// return at each token position, each with an associated log probability.
/// 
final int? topLogprobs;

/// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
/// We generally recommend altering this or `top_p` but not both.
/// 
final double? temperature;

/// An alternative to sampling with temperature, called nucleus sampling,
/// where the model considers the results of the tokens with top_p probability
/// mass. So 0.1 means only the tokens comprising the top 10% probability mass
/// are considered.
/// 
/// We generally recommend altering this or `temperature` but not both.
/// 
final double? topP;

/// This field is being replaced by `safety_identifier` and `prompt_cache_key`. Use `prompt_cache_key` instead to maintain caching optimizations.
/// A stable identifier for your end-users.
/// Used to boost cache hit rates by better bucketing similar requests and  to help OpenAI detect and prevent abuse. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? user;

/// A stable identifier used to help detect users of your application that may be violating OpenAI's usage policies.
/// The IDs should be a string that uniquely identifies each user, with a maximum length of 64 characters. We recommend hashing their username or email address, in order to avoid sending us any identifying information. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? safetyIdentifier;

/// Used by OpenAI to cache responses for similar requests to optimize your cache hit rates. Replaces the `user` field. [Learn more](/docs/guides/prompt-caching).
/// 
final String? promptCacheKey;

final ServiceTier? serviceTier;

/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
final ResponsePromptCacheRetention? promptCacheRetention;

/// Unique identifier for this Response.
/// 
final String id;

/// The object type of this resource - always set to `response`.
/// 
final ResponseObject object;

/// The status of the response generation. One of `completed`, `failed`,
/// `in_progress`, `cancelled`, `queued`, or `incomplete`.
/// 
final ResponseStatus? status;

/// Unix timestamp (in seconds) of when this Response was created.
/// 
final double createdAt;

/// Unix timestamp (in seconds) of when this Response was completed.
/// Only present when the status is `completed`.
/// 
final double? completedAt;

final ResponseError error;

/// Details about why the response is incomplete.
/// 
final ResponseIncompleteDetails? incompleteDetails;

/// An array of content items generated by the model.
/// 
/// - The length and order of items in the `output` array is dependent
///   on the model's response.
/// - Rather than accessing the first item in the `output` array and
///   assuming it's an `assistant` message with the content generated by
///   the model, you might consider using the `output_text` property where
///   supported in SDKs.
/// 
final List<OutputItem> output;

/// A system (or developer) message inserted into the model's context.
/// 
/// When using along with `previous_response_id`, the instructions from a previous
/// response will not be carried over to the next response. This makes it simple
/// to swap out system (or developer) messages in new responses.
/// 
final ResponseInstructions? instructions;

/// SDK-only convenience property that contains the aggregated text output
/// from all `output_text` items in the `output` array, if any are present.
/// Supported in the Python and JavaScript SDKs.
/// 
final String? outputText;

final ResponseUsage? usage;

/// Whether to allow the model to run tool calls in parallel.
/// 
final bool parallelToolCalls;

final Conversation2? conversation;

Map<String, dynamic> toJson() { return {
  'metadata': ?metadata,
  'top_logprobs': ?topLogprobs,
  'temperature': ?temperature,
  'top_p': ?topP,
  'user': ?user,
  'safety_identifier': ?safetyIdentifier,
  'prompt_cache_key': ?promptCacheKey,
  if (serviceTier != null) 'service_tier': serviceTier?.toJson(),
  if (promptCacheRetention != null) 'prompt_cache_retention': promptCacheRetention?.toJson(),
  'id': id,
  'object': object.toJson(),
  if (status != null) 'status': status?.toJson(),
  'created_at': createdAt,
  'completed_at': ?completedAt,
  'error': error.toJson(),
  if (incompleteDetails != null) 'incomplete_details': incompleteDetails?.toJson(),
  'output': output.map((e) => e.toJson()).toList(),
  if (instructions != null) 'instructions': instructions?.toJson(),
  'output_text': ?outputText,
  if (usage != null) 'usage': usage?.toJson(),
  'parallel_tool_calls': parallelToolCalls,
  if (conversation != null) 'conversation': conversation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metadata') &&
      json.containsKey('temperature') && json['temperature'] is num &&
      json.containsKey('top_p') && json['top_p'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('error') &&
      json.containsKey('incomplete_details') &&
      json.containsKey('output') &&
      json.containsKey('instructions') &&
      json.containsKey('parallel_tool_calls') && json['parallel_tool_calls'] is bool; } 
Response copyWith({Map<String, String>? Function()? metadata, int? Function()? topLogprobs, double? Function()? temperature, double? Function()? topP, String Function()? user, String Function()? safetyIdentifier, String Function()? promptCacheKey, ServiceTier? Function()? serviceTier, ResponsePromptCacheRetention? Function()? promptCacheRetention, String? id, ResponseObject? object, ResponseStatus Function()? status, double? createdAt, double? Function()? completedAt, ResponseError? error, ResponseIncompleteDetails? Function()? incompleteDetails, List<OutputItem>? output, ResponseInstructions? Function()? instructions, String? Function()? outputText, ResponseUsage Function()? usage, bool? parallelToolCalls, Conversation2? Function()? conversation, }) { return Response(
  metadata: metadata != null ? metadata() : this.metadata,
  topLogprobs: topLogprobs != null ? topLogprobs() : this.topLogprobs,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  user: user != null ? user() : this.user,
  safetyIdentifier: safetyIdentifier != null ? safetyIdentifier() : this.safetyIdentifier,
  promptCacheKey: promptCacheKey != null ? promptCacheKey() : this.promptCacheKey,
  serviceTier: serviceTier != null ? serviceTier() : this.serviceTier,
  promptCacheRetention: promptCacheRetention != null ? promptCacheRetention() : this.promptCacheRetention,
  id: id ?? this.id,
  object: object ?? this.object,
  status: status != null ? status() : this.status,
  createdAt: createdAt ?? this.createdAt,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  error: error ?? this.error,
  incompleteDetails: incompleteDetails != null ? incompleteDetails() : this.incompleteDetails,
  output: output ?? this.output,
  instructions: instructions != null ? instructions() : this.instructions,
  outputText: outputText != null ? outputText() : this.outputText,
  usage: usage != null ? usage() : this.usage,
  parallelToolCalls: parallelToolCalls ?? this.parallelToolCalls,
  conversation: conversation != null ? conversation() : this.conversation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response &&
          metadata == other.metadata &&
          topLogprobs == other.topLogprobs &&
          temperature == other.temperature &&
          topP == other.topP &&
          user == other.user &&
          safetyIdentifier == other.safetyIdentifier &&
          promptCacheKey == other.promptCacheKey &&
          serviceTier == other.serviceTier &&
          promptCacheRetention == other.promptCacheRetention &&
          id == other.id &&
          object == other.object &&
          status == other.status &&
          createdAt == other.createdAt &&
          completedAt == other.completedAt &&
          error == other.error &&
          incompleteDetails == other.incompleteDetails &&
          listEquals(output, other.output) &&
          instructions == other.instructions &&
          outputText == other.outputText &&
          usage == other.usage &&
          parallelToolCalls == other.parallelToolCalls &&
          conversation == other.conversation; } 
@override int get hashCode { return Object.hashAll([metadata, topLogprobs, temperature, topP, user, safetyIdentifier, promptCacheKey, serviceTier, promptCacheRetention, id, object, status, createdAt, completedAt, error, incompleteDetails, Object.hashAll(output), instructions, outputText, usage, parallelToolCalls, conversation]); } 
@override String toString() { return 'Response(metadata: $metadata, topLogprobs: $topLogprobs, temperature: $temperature, topP: $topP, user: $user, safetyIdentifier: $safetyIdentifier, promptCacheKey: $promptCacheKey, serviceTier: $serviceTier, promptCacheRetention: $promptCacheRetention, id: $id, object: $object, status: $status, createdAt: $createdAt, completedAt: $completedAt, error: $error, incompleteDetails: $incompleteDetails, output: $output, instructions: $instructions, outputText: $outputText, usage: $usage, parallelToolCalls: $parallelToolCalls, conversation: $conversation)'; } 
 }
