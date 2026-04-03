// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListEvaluationsResponseResultDatasetsFiltersKey {const AigConfigListEvaluationsResponseResultDatasetsFiltersKey._(this.value);

factory AigConfigListEvaluationsResponseResultDatasetsFiltersKey.fromJson(String json) { return switch (json) {
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
  _ => AigConfigListEvaluationsResponseResultDatasetsFiltersKey._(json),
}; }

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey createdAt = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('created_at');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey requestContentType = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('request_content_type');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey responseContentType = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('response_content_type');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey success = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('success');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey cached = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('cached');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey provider = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('provider');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey model = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('model');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey cost = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('cost');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey tokens = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('tokens');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey tokensIn = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('tokens_in');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey tokensOut = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('tokens_out');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey duration = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('duration');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersKey feedback = AigConfigListEvaluationsResponseResultDatasetsFiltersKey._('feedback');

static const List<AigConfigListEvaluationsResponseResultDatasetsFiltersKey> values = [createdAt, requestContentType, responseContentType, success, cached, provider, model, cost, tokens, tokensIn, tokensOut, duration, feedback];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListEvaluationsResponseResultDatasetsFiltersKey && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListEvaluationsResponseResultDatasetsFiltersKey($value)'; } 
 }
@immutable final class AigConfigListEvaluationsResponseResultDatasetsFiltersOperator {const AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._(this.value);

factory AigConfigListEvaluationsResponseResultDatasetsFiltersOperator.fromJson(String json) { return switch (json) {
  'eq' => eq,
  'contains' => contains,
  'lt' => lt,
  'gt' => gt,
  _ => AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._(json),
}; }

static const AigConfigListEvaluationsResponseResultDatasetsFiltersOperator eq = AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._('eq');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersOperator contains = AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._('contains');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersOperator lt = AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._('lt');

static const AigConfigListEvaluationsResponseResultDatasetsFiltersOperator gt = AigConfigListEvaluationsResponseResultDatasetsFiltersOperator._('gt');

static const List<AigConfigListEvaluationsResponseResultDatasetsFiltersOperator> values = [eq, contains, lt, gt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListEvaluationsResponseResultDatasetsFiltersOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListEvaluationsResponseResultDatasetsFiltersOperator($value)'; } 
 }
@immutable final class AigConfigListEvaluationsResponseResultDatasetsFilters {const AigConfigListEvaluationsResponseResultDatasetsFilters({required this.key, required this.$operator, required this.value, });

factory AigConfigListEvaluationsResponseResultDatasetsFilters.fromJson(Map<String, dynamic> json) { return AigConfigListEvaluationsResponseResultDatasetsFilters(
  key: AigConfigListEvaluationsResponseResultDatasetsFiltersKey.fromJson(json['key'] as String),
  $operator: AigConfigListEvaluationsResponseResultDatasetsFiltersOperator.fromJson(json['operator'] as String),
  value: (json['value'] as List<dynamic>).map((e) => e).toList(),
); }

final AigConfigListEvaluationsResponseResultDatasetsFiltersKey key;

final AigConfigListEvaluationsResponseResultDatasetsFiltersOperator $operator;

final List<dynamic> value;

Map<String, dynamic> toJson() { return {
  'key': key.toJson(),
  'operator': $operator.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') &&
      json.containsKey('operator') &&
      json.containsKey('value'); } 
AigConfigListEvaluationsResponseResultDatasetsFilters copyWith({AigConfigListEvaluationsResponseResultDatasetsFiltersKey? key, AigConfigListEvaluationsResponseResultDatasetsFiltersOperator? $operator, List<dynamic>? value, }) { return AigConfigListEvaluationsResponseResultDatasetsFilters(
  key: key ?? this.key,
  $operator: $operator ?? this.$operator,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListEvaluationsResponseResultDatasetsFilters &&
          key == other.key &&
          $operator == other.$operator &&
          listEquals(value, other.value); } 
@override int get hashCode { return Object.hash(key, $operator, Object.hashAll(value)); } 
@override String toString() { return 'AigConfigListEvaluationsResponseResultDatasetsFilters(key: $key, \$operator: ${$operator}, value: $value)'; } 
 }
