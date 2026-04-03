// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageCompletionsGroupBy {const UsageCompletionsGroupBy._(this.value);

factory UsageCompletionsGroupBy.fromJson(String json) { return switch (json) {
  'project_id' => projectId,
  'user_id' => userId,
  'api_key_id' => apiKeyId,
  'model' => model,
  'batch' => batch,
  'service_tier' => serviceTier,
  _ => UsageCompletionsGroupBy._(json),
}; }

static const UsageCompletionsGroupBy projectId = UsageCompletionsGroupBy._('project_id');

static const UsageCompletionsGroupBy userId = UsageCompletionsGroupBy._('user_id');

static const UsageCompletionsGroupBy apiKeyId = UsageCompletionsGroupBy._('api_key_id');

static const UsageCompletionsGroupBy model = UsageCompletionsGroupBy._('model');

static const UsageCompletionsGroupBy batch = UsageCompletionsGroupBy._('batch');

static const UsageCompletionsGroupBy serviceTier = UsageCompletionsGroupBy._('service_tier');

static const List<UsageCompletionsGroupBy> values = [projectId, userId, apiKeyId, model, batch, serviceTier];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCompletionsGroupBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCompletionsGroupBy($value)'; } 
 }
