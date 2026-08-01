// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageCompletionsResultObject {const UsageCompletionsResultObject._(this.value);

factory UsageCompletionsResultObject.fromJson(String json) { return switch (json) {
  'organization.usage.completions.result' => organizationUsageCompletionsResult,
  _ => UsageCompletionsResultObject._(json),
}; }

static const UsageCompletionsResultObject organizationUsageCompletionsResult = UsageCompletionsResultObject._('organization.usage.completions.result');

static const List<UsageCompletionsResultObject> values = [organizationUsageCompletionsResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCompletionsResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCompletionsResultObject($value)'; } 
 }
/// The aggregated completions usage details of the specific time bucket.
@immutable final class UsageCompletionsResult {const UsageCompletionsResult({required this.object, required this.inputTokens, required this.outputTokens, required this.numModelRequests, this.inputCachedTokens, this.inputAudioTokens, this.outputAudioTokens, this.projectId = const Omittable.absent(), this.userId = const Omittable.absent(), this.apiKeyId = const Omittable.absent(), this.model = const Omittable.absent(), this.batch = const Omittable.absent(), this.serviceTier = const Omittable.absent(), });

factory UsageCompletionsResult.fromJson(Map<String, dynamic> json) { return UsageCompletionsResult(
  object: UsageCompletionsResultObject.fromJson(json['object'] as String),
  inputTokens: (json['input_tokens'] as num).toInt(),
  inputCachedTokens: json['input_cached_tokens'] != null ? (json['input_cached_tokens'] as num).toInt() : null,
  outputTokens: (json['output_tokens'] as num).toInt(),
  inputAudioTokens: json['input_audio_tokens'] != null ? (json['input_audio_tokens'] as num).toInt() : null,
  outputAudioTokens: json['output_audio_tokens'] != null ? (json['output_audio_tokens'] as num).toInt() : null,
  numModelRequests: (json['num_model_requests'] as num).toInt(),
  projectId: json.containsKey('project_id') ? Omittable(json['project_id'] as String?) : const Omittable.absent(),
  userId: json.containsKey('user_id') ? Omittable(json['user_id'] as String?) : const Omittable.absent(),
  apiKeyId: json.containsKey('api_key_id') ? Omittable(json['api_key_id'] as String?) : const Omittable.absent(),
  model: json.containsKey('model') ? Omittable(json['model'] as String?) : const Omittable.absent(),
  batch: json.containsKey('batch') ? Omittable(json['batch'] as bool?) : const Omittable.absent(),
  serviceTier: json.containsKey('service_tier') ? Omittable(json['service_tier'] as String?) : const Omittable.absent(),
); }

final UsageCompletionsResultObject object;

/// The aggregated number of text input tokens used, including cached tokens. For customers subscribe to scale tier, this includes scale tier tokens.
final int inputTokens;

/// The aggregated number of text input tokens that has been cached from previous requests. For customers subscribe to scale tier, this includes scale tier tokens.
final int? inputCachedTokens;

/// The aggregated number of text output tokens used. For customers subscribe to scale tier, this includes scale tier tokens.
final int outputTokens;

/// The aggregated number of audio input tokens used, including cached tokens.
final int? inputAudioTokens;

/// The aggregated number of audio output tokens used.
final int? outputAudioTokens;

/// The count of requests made to the model.
final int numModelRequests;

/// When `group_by=project_id`, this field provides the project ID of the grouped usage result.
final Omittable<String?> projectId;

/// When `group_by=user_id`, this field provides the user ID of the grouped usage result.
final Omittable<String?> userId;

/// When `group_by=api_key_id`, this field provides the API key ID of the grouped usage result.
final Omittable<String?> apiKeyId;

/// When `group_by=model`, this field provides the model name of the grouped usage result.
final Omittable<String?> model;

/// When `group_by=batch`, this field tells whether the grouped usage result is batch or not.
final Omittable<bool?> batch;

/// When `group_by=service_tier`, this field provides the service tier of the grouped usage result.
final Omittable<String?> serviceTier;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'input_tokens': inputTokens,
  'input_cached_tokens': ?inputCachedTokens,
  'output_tokens': outputTokens,
  'input_audio_tokens': ?inputAudioTokens,
  'output_audio_tokens': ?outputAudioTokens,
  'num_model_requests': numModelRequests,
  if (projectId.isPresent) 'project_id': projectId.value,
  if (userId.isPresent) 'user_id': userId.value,
  if (apiKeyId.isPresent) 'api_key_id': apiKeyId.value,
  if (model.isPresent) 'model': model.value,
  if (batch.isPresent) 'batch': batch.value,
  if (serviceTier.isPresent) 'service_tier': serviceTier.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('input_tokens') && json['input_tokens'] is num &&
      json.containsKey('output_tokens') && json['output_tokens'] is num &&
      json.containsKey('num_model_requests') && json['num_model_requests'] is num; } 
UsageCompletionsResult copyWith({UsageCompletionsResultObject? object, int? inputTokens, int? Function()? inputCachedTokens, int? outputTokens, int? Function()? inputAudioTokens, int? Function()? outputAudioTokens, int? numModelRequests, Omittable<String?>? projectId, Omittable<String?>? userId, Omittable<String?>? apiKeyId, Omittable<String?>? model, Omittable<bool?>? batch, Omittable<String?>? serviceTier, }) { return UsageCompletionsResult(
  object: object ?? this.object,
  inputTokens: inputTokens ?? this.inputTokens,
  inputCachedTokens: inputCachedTokens != null ? inputCachedTokens() : this.inputCachedTokens,
  outputTokens: outputTokens ?? this.outputTokens,
  inputAudioTokens: inputAudioTokens != null ? inputAudioTokens() : this.inputAudioTokens,
  outputAudioTokens: outputAudioTokens != null ? outputAudioTokens() : this.outputAudioTokens,
  numModelRequests: numModelRequests ?? this.numModelRequests,
  projectId: projectId ?? this.projectId,
  userId: userId ?? this.userId,
  apiKeyId: apiKeyId ?? this.apiKeyId,
  model: model ?? this.model,
  batch: batch ?? this.batch,
  serviceTier: serviceTier ?? this.serviceTier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageCompletionsResult &&
          object == other.object &&
          inputTokens == other.inputTokens &&
          inputCachedTokens == other.inputCachedTokens &&
          outputTokens == other.outputTokens &&
          inputAudioTokens == other.inputAudioTokens &&
          outputAudioTokens == other.outputAudioTokens &&
          numModelRequests == other.numModelRequests &&
          projectId == other.projectId &&
          userId == other.userId &&
          apiKeyId == other.apiKeyId &&
          model == other.model &&
          batch == other.batch &&
          serviceTier == other.serviceTier; } 
@override int get hashCode { return Object.hash(object, inputTokens, inputCachedTokens, outputTokens, inputAudioTokens, outputAudioTokens, numModelRequests, projectId, userId, apiKeyId, model, batch, serviceTier); } 
@override String toString() { return 'UsageCompletionsResult(object: $object, inputTokens: $inputTokens, inputCachedTokens: $inputCachedTokens, outputTokens: $outputTokens, inputAudioTokens: $inputAudioTokens, outputAudioTokens: $outputAudioTokens, numModelRequests: $numModelRequests, projectId: $projectId, userId: $userId, apiKeyId: $apiKeyId, model: $model, batch: $batch, serviceTier: $serviceTier)'; } 
 }
