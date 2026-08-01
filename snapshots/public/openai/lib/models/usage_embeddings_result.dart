// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageEmbeddingsResultObject {const UsageEmbeddingsResultObject._(this.value);

factory UsageEmbeddingsResultObject.fromJson(String json) { return switch (json) {
  'organization.usage.embeddings.result' => organizationUsageEmbeddingsResult,
  _ => UsageEmbeddingsResultObject._(json),
}; }

static const UsageEmbeddingsResultObject organizationUsageEmbeddingsResult = UsageEmbeddingsResultObject._('organization.usage.embeddings.result');

static const List<UsageEmbeddingsResultObject> values = [organizationUsageEmbeddingsResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageEmbeddingsResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageEmbeddingsResultObject($value)'; } 
 }
/// The aggregated embeddings usage details of the specific time bucket.
@immutable final class UsageEmbeddingsResult {const UsageEmbeddingsResult({required this.object, required this.inputTokens, required this.numModelRequests, this.projectId = const Omittable.absent(), this.userId = const Omittable.absent(), this.apiKeyId = const Omittable.absent(), this.model = const Omittable.absent(), });

factory UsageEmbeddingsResult.fromJson(Map<String, dynamic> json) { return UsageEmbeddingsResult(
  object: UsageEmbeddingsResultObject.fromJson(json['object'] as String),
  inputTokens: (json['input_tokens'] as num).toInt(),
  numModelRequests: (json['num_model_requests'] as num).toInt(),
  projectId: json.containsKey('project_id') ? Omittable(json['project_id'] as String?) : const Omittable.absent(),
  userId: json.containsKey('user_id') ? Omittable(json['user_id'] as String?) : const Omittable.absent(),
  apiKeyId: json.containsKey('api_key_id') ? Omittable(json['api_key_id'] as String?) : const Omittable.absent(),
  model: json.containsKey('model') ? Omittable(json['model'] as String?) : const Omittable.absent(),
); }

final UsageEmbeddingsResultObject object;

/// The aggregated number of input tokens used.
final int inputTokens;

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

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'input_tokens': inputTokens,
  'num_model_requests': numModelRequests,
  if (projectId.isPresent) 'project_id': projectId.value,
  if (userId.isPresent) 'user_id': userId.value,
  if (apiKeyId.isPresent) 'api_key_id': apiKeyId.value,
  if (model.isPresent) 'model': model.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('input_tokens') && json['input_tokens'] is num &&
      json.containsKey('num_model_requests') && json['num_model_requests'] is num; } 
UsageEmbeddingsResult copyWith({UsageEmbeddingsResultObject? object, int? inputTokens, int? numModelRequests, Omittable<String?>? projectId, Omittable<String?>? userId, Omittable<String?>? apiKeyId, Omittable<String?>? model, }) { return UsageEmbeddingsResult(
  object: object ?? this.object,
  inputTokens: inputTokens ?? this.inputTokens,
  numModelRequests: numModelRequests ?? this.numModelRequests,
  projectId: projectId ?? this.projectId,
  userId: userId ?? this.userId,
  apiKeyId: apiKeyId ?? this.apiKeyId,
  model: model ?? this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageEmbeddingsResult &&
          object == other.object &&
          inputTokens == other.inputTokens &&
          numModelRequests == other.numModelRequests &&
          projectId == other.projectId &&
          userId == other.userId &&
          apiKeyId == other.apiKeyId &&
          model == other.model; } 
@override int get hashCode { return Object.hash(object, inputTokens, numModelRequests, projectId, userId, apiKeyId, model); } 
@override String toString() { return 'UsageEmbeddingsResult(object: $object, inputTokens: $inputTokens, numModelRequests: $numModelRequests, projectId: $projectId, userId: $userId, apiKeyId: $apiKeyId, model: $model)'; } 
 }
