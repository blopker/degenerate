// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of source. Always `stored_completions`.
@immutable final class EvalStoredCompletionsSourceType {const EvalStoredCompletionsSourceType._(this.value);

factory EvalStoredCompletionsSourceType.fromJson(String json) { return switch (json) {
  'stored_completions' => storedCompletions,
  _ => EvalStoredCompletionsSourceType._(json),
}; }

static const EvalStoredCompletionsSourceType storedCompletions = EvalStoredCompletionsSourceType._('stored_completions');

static const List<EvalStoredCompletionsSourceType> values = [storedCompletions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalStoredCompletionsSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalStoredCompletionsSourceType($value)'; } 
 }
/// A StoredCompletionsRunDataSource configuration describing a set of filters
/// 
@immutable final class EvalStoredCompletionsSource {const EvalStoredCompletionsSource({this.type = EvalStoredCompletionsSourceType.storedCompletions, this.metadata = const Omittable.absent(), this.model = const Omittable.absent(), this.createdAfter = const Omittable.absent(), this.createdBefore = const Omittable.absent(), this.limit = const Omittable.absent(), });

factory EvalStoredCompletionsSource.fromJson(Map<String, dynamic> json) { return EvalStoredCompletionsSource(
  type: EvalStoredCompletionsSourceType.fromJson(json['type'] as String),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  model: json.containsKey('model') ? Omittable(json['model'] as String?) : const Omittable.absent(),
  createdAfter: json.containsKey('created_after') ? Omittable(json['created_after'] != null ? (json['created_after'] as num).toInt() : null) : const Omittable.absent(),
  createdBefore: json.containsKey('created_before') ? Omittable(json['created_before'] != null ? (json['created_before'] as num).toInt() : null) : const Omittable.absent(),
  limit: json.containsKey('limit') ? Omittable(json['limit'] != null ? (json['limit'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The type of source. Always `stored_completions`.
final EvalStoredCompletionsSourceType type;

final Omittable<Map<String,String>?> metadata;

/// An optional model to filter by (e.g., 'gpt-4o').
final Omittable<String?> model;

/// An optional Unix timestamp to filter items created after this time.
final Omittable<int?> createdAfter;

/// An optional Unix timestamp to filter items created before this time.
final Omittable<int?> createdBefore;

/// An optional maximum number of items to return.
final Omittable<int?> limit;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
  if (model.isPresent) 'model': model.value,
  if (createdAfter.isPresent) 'created_after': createdAfter.value,
  if (createdBefore.isPresent) 'created_before': createdBefore.value,
  if (limit.isPresent) 'limit': limit.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
EvalStoredCompletionsSource copyWith({EvalStoredCompletionsSourceType? type, Omittable<Map<String,String>?>? metadata, Omittable<String?>? model, Omittable<int?>? createdAfter, Omittable<int?>? createdBefore, Omittable<int?>? limit, }) { return EvalStoredCompletionsSource(
  type: type ?? this.type,
  metadata: metadata ?? this.metadata,
  model: model ?? this.model,
  createdAfter: createdAfter ?? this.createdAfter,
  createdBefore: createdBefore ?? this.createdBefore,
  limit: limit ?? this.limit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalStoredCompletionsSource &&
          type == other.type &&
          metadata == other.metadata &&
          model == other.model &&
          createdAfter == other.createdAfter &&
          createdBefore == other.createdBefore &&
          limit == other.limit; } 
@override int get hashCode { return Object.hash(type, metadata, model, createdAfter, createdBefore, limit); } 
@override String toString() { return 'EvalStoredCompletionsSource(type: $type, metadata: $metadata, model: $model, createdAfter: $createdAfter, createdBefore: $createdBefore, limit: $limit)'; } 
 }
