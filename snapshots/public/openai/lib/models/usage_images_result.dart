// GENERATED CODE - DO NOT MODIFY BY HAND

final class UsageImagesResultObject {const UsageImagesResultObject._(this.value);

factory UsageImagesResultObject.fromJson(String json) { return switch (json) {
  'organization.usage.images.result' => organizationUsageImagesResult,
  _ => UsageImagesResultObject._(json),
}; }

static const UsageImagesResultObject organizationUsageImagesResult = UsageImagesResultObject._('organization.usage.images.result');

static const List<UsageImagesResultObject> values = [organizationUsageImagesResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageImagesResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageImagesResultObject($value)'; } 
 }
/// The aggregated images usage details of the specific time bucket.
final class UsageImagesResult {const UsageImagesResult({required this.object, required this.images, required this.numModelRequests, this.source, this.size, this.projectId, this.userId, this.apiKeyId, this.model, });

factory UsageImagesResult.fromJson(Map<String, dynamic> json) { return UsageImagesResult(
  object: UsageImagesResultObject.fromJson(json['object'] as String),
  images: (json['images'] as num).toInt(),
  numModelRequests: (json['num_model_requests'] as num).toInt(),
  source: json['source'] as String?,
  size: json['size'] as String?,
  projectId: json['project_id'] as String?,
  userId: json['user_id'] as String?,
  apiKeyId: json['api_key_id'] as String?,
  model: json['model'] as String?,
); }

final UsageImagesResultObject object;

/// The number of images processed.
final int images;

/// The count of requests made to the model.
final int numModelRequests;

/// When `group_by=source`, this field provides the source of the grouped usage result, possible values are `image.generation`, `image.edit`, `image.variation`.
final String? source;

/// When `group_by=size`, this field provides the image size of the grouped usage result.
final String? size;

/// When `group_by=project_id`, this field provides the project ID of the grouped usage result.
final String? projectId;

/// When `group_by=user_id`, this field provides the user ID of the grouped usage result.
final String? userId;

/// When `group_by=api_key_id`, this field provides the API key ID of the grouped usage result.
final String? apiKeyId;

/// When `group_by=model`, this field provides the model name of the grouped usage result.
final String? model;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'images': images,
  'num_model_requests': numModelRequests,
  'source': ?source,
  'size': ?size,
  'project_id': ?projectId,
  'user_id': ?userId,
  'api_key_id': ?apiKeyId,
  'model': ?model,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('images') && json['images'] is num &&
      json.containsKey('num_model_requests') && json['num_model_requests'] is num; } 
UsageImagesResult copyWith({UsageImagesResultObject? object, int? images, int? numModelRequests, String? Function()? source, String? Function()? size, String? Function()? projectId, String? Function()? userId, String? Function()? apiKeyId, String? Function()? model, }) { return UsageImagesResult(
  object: object ?? this.object,
  images: images ?? this.images,
  numModelRequests: numModelRequests ?? this.numModelRequests,
  source: source != null ? source() : this.source,
  size: size != null ? size() : this.size,
  projectId: projectId != null ? projectId() : this.projectId,
  userId: userId != null ? userId() : this.userId,
  apiKeyId: apiKeyId != null ? apiKeyId() : this.apiKeyId,
  model: model != null ? model() : this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageImagesResult &&
          object == other.object &&
          images == other.images &&
          numModelRequests == other.numModelRequests &&
          source == other.source &&
          size == other.size &&
          projectId == other.projectId &&
          userId == other.userId &&
          apiKeyId == other.apiKeyId &&
          model == other.model; } 
@override int get hashCode { return Object.hash(object, images, numModelRequests, source, size, projectId, userId, apiKeyId, model); } 
@override String toString() { return 'UsageImagesResult(object: $object, images: $images, numModelRequests: $numModelRequests, source: $source, size: $size, projectId: $projectId, userId: $userId, apiKeyId: $apiKeyId, model: $model)'; } 
 }
