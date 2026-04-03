// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteDatasetResponseResultFiltersKey {const AigConfigDeleteDatasetResponseResultFiltersKey._(this.value);

factory AigConfigDeleteDatasetResponseResultFiltersKey.fromJson(String json) { return switch (json) {
  'created_at' => createdAt,
  'request_content_type' => requestContentType,
  'response_content_type' => responseContentType,
  'success' => success,
  'cached' => cached,
  'provider' => provider,
  'model' => model,
  'cost' => cost,
  'tokens' => tokens,
  'tokens_in' => tokensIn,
  'tokens_out' => tokensOut,
  'duration' => duration,
  'feedback' => feedback,
  _ => AigConfigDeleteDatasetResponseResultFiltersKey._(json),
}; }

static const AigConfigDeleteDatasetResponseResultFiltersKey createdAt = AigConfigDeleteDatasetResponseResultFiltersKey._('created_at');

static const AigConfigDeleteDatasetResponseResultFiltersKey requestContentType = AigConfigDeleteDatasetResponseResultFiltersKey._('request_content_type');

static const AigConfigDeleteDatasetResponseResultFiltersKey responseContentType = AigConfigDeleteDatasetResponseResultFiltersKey._('response_content_type');

static const AigConfigDeleteDatasetResponseResultFiltersKey success = AigConfigDeleteDatasetResponseResultFiltersKey._('success');

static const AigConfigDeleteDatasetResponseResultFiltersKey cached = AigConfigDeleteDatasetResponseResultFiltersKey._('cached');

static const AigConfigDeleteDatasetResponseResultFiltersKey provider = AigConfigDeleteDatasetResponseResultFiltersKey._('provider');

static const AigConfigDeleteDatasetResponseResultFiltersKey model = AigConfigDeleteDatasetResponseResultFiltersKey._('model');

static const AigConfigDeleteDatasetResponseResultFiltersKey cost = AigConfigDeleteDatasetResponseResultFiltersKey._('cost');

static const AigConfigDeleteDatasetResponseResultFiltersKey tokens = AigConfigDeleteDatasetResponseResultFiltersKey._('tokens');

static const AigConfigDeleteDatasetResponseResultFiltersKey tokensIn = AigConfigDeleteDatasetResponseResultFiltersKey._('tokens_in');

static const AigConfigDeleteDatasetResponseResultFiltersKey tokensOut = AigConfigDeleteDatasetResponseResultFiltersKey._('tokens_out');

static const AigConfigDeleteDatasetResponseResultFiltersKey duration = AigConfigDeleteDatasetResponseResultFiltersKey._('duration');

static const AigConfigDeleteDatasetResponseResultFiltersKey feedback = AigConfigDeleteDatasetResponseResultFiltersKey._('feedback');

static const List<AigConfigDeleteDatasetResponseResultFiltersKey> values = [createdAt, requestContentType, responseContentType, success, cached, provider, model, cost, tokens, tokensIn, tokensOut, duration, feedback];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigDeleteDatasetResponseResultFiltersKey && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigDeleteDatasetResponseResultFiltersKey($value)'; } 
 }
@immutable final class AigConfigDeleteDatasetResponseResultFiltersOperator {const AigConfigDeleteDatasetResponseResultFiltersOperator._(this.value);

factory AigConfigDeleteDatasetResponseResultFiltersOperator.fromJson(String json) { return switch (json) {
  'eq' => eq,
  'contains' => contains,
  'lt' => lt,
  'gt' => gt,
  _ => AigConfigDeleteDatasetResponseResultFiltersOperator._(json),
}; }

static const AigConfigDeleteDatasetResponseResultFiltersOperator eq = AigConfigDeleteDatasetResponseResultFiltersOperator._('eq');

static const AigConfigDeleteDatasetResponseResultFiltersOperator contains = AigConfigDeleteDatasetResponseResultFiltersOperator._('contains');

static const AigConfigDeleteDatasetResponseResultFiltersOperator lt = AigConfigDeleteDatasetResponseResultFiltersOperator._('lt');

static const AigConfigDeleteDatasetResponseResultFiltersOperator gt = AigConfigDeleteDatasetResponseResultFiltersOperator._('gt');

static const List<AigConfigDeleteDatasetResponseResultFiltersOperator> values = [eq, contains, lt, gt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigDeleteDatasetResponseResultFiltersOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigDeleteDatasetResponseResultFiltersOperator($value)'; } 
 }
@immutable final class AigConfigDeleteDatasetResponseResultFilters {const AigConfigDeleteDatasetResponseResultFilters({required this.key, required this.$operator, required this.value, });

factory AigConfigDeleteDatasetResponseResultFilters.fromJson(Map<String, dynamic> json) { return AigConfigDeleteDatasetResponseResultFilters(
  key: AigConfigDeleteDatasetResponseResultFiltersKey.fromJson(json['key'] as String),
  $operator: AigConfigDeleteDatasetResponseResultFiltersOperator.fromJson(json['operator'] as String),
  value: (json['value'] as List<dynamic>).map((e) => e).toList(),
); }

final AigConfigDeleteDatasetResponseResultFiltersKey key;

final AigConfigDeleteDatasetResponseResultFiltersOperator $operator;

final List<dynamic> value;

Map<String, dynamic> toJson() { return {
  'key': key.toJson(),
  'operator': $operator.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') &&
      json.containsKey('operator') &&
      json.containsKey('value'); } 
AigConfigDeleteDatasetResponseResultFilters copyWith({AigConfigDeleteDatasetResponseResultFiltersKey? key, AigConfigDeleteDatasetResponseResultFiltersOperator? $operator, List<dynamic>? value, }) { return AigConfigDeleteDatasetResponseResultFilters(
  key: key ?? this.key,
  $operator: $operator ?? this.$operator,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteDatasetResponseResultFilters &&
          key == other.key &&
          $operator == other.$operator &&
          listEquals(value, other.value); } 
@override int get hashCode { return Object.hash(key, $operator, Object.hashAll(value)); } 
@override String toString() { return 'AigConfigDeleteDatasetResponseResultFilters(key: $key, \$operator: ${$operator}, value: $value)'; } 
 }
