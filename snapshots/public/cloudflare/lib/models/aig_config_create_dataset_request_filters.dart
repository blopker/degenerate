// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AigConfigCreateDatasetRequestFiltersKey {const AigConfigCreateDatasetRequestFiltersKey._(this.value);

factory AigConfigCreateDatasetRequestFiltersKey.fromJson(String json) { return switch (json) {
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
  _ => AigConfigCreateDatasetRequestFiltersKey._(json),
}; }

static const AigConfigCreateDatasetRequestFiltersKey createdAt = AigConfigCreateDatasetRequestFiltersKey._('created_at');

static const AigConfigCreateDatasetRequestFiltersKey requestContentType = AigConfigCreateDatasetRequestFiltersKey._('request_content_type');

static const AigConfigCreateDatasetRequestFiltersKey responseContentType = AigConfigCreateDatasetRequestFiltersKey._('response_content_type');

static const AigConfigCreateDatasetRequestFiltersKey success = AigConfigCreateDatasetRequestFiltersKey._('success');

static const AigConfigCreateDatasetRequestFiltersKey cached = AigConfigCreateDatasetRequestFiltersKey._('cached');

static const AigConfigCreateDatasetRequestFiltersKey provider = AigConfigCreateDatasetRequestFiltersKey._('provider');

static const AigConfigCreateDatasetRequestFiltersKey model = AigConfigCreateDatasetRequestFiltersKey._('model');

static const AigConfigCreateDatasetRequestFiltersKey cost = AigConfigCreateDatasetRequestFiltersKey._('cost');

static const AigConfigCreateDatasetRequestFiltersKey tokens = AigConfigCreateDatasetRequestFiltersKey._('tokens');

static const AigConfigCreateDatasetRequestFiltersKey tokensIn = AigConfigCreateDatasetRequestFiltersKey._('tokens_in');

static const AigConfigCreateDatasetRequestFiltersKey tokensOut = AigConfigCreateDatasetRequestFiltersKey._('tokens_out');

static const AigConfigCreateDatasetRequestFiltersKey duration = AigConfigCreateDatasetRequestFiltersKey._('duration');

static const AigConfigCreateDatasetRequestFiltersKey feedback = AigConfigCreateDatasetRequestFiltersKey._('feedback');

static const List<AigConfigCreateDatasetRequestFiltersKey> values = [createdAt, requestContentType, responseContentType, success, cached, provider, model, cost, tokens, tokensIn, tokensOut, duration, feedback];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigCreateDatasetRequestFiltersKey && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigCreateDatasetRequestFiltersKey($value)'; } 
 }
final class AigConfigCreateDatasetRequestFiltersOperator {const AigConfigCreateDatasetRequestFiltersOperator._(this.value);

factory AigConfigCreateDatasetRequestFiltersOperator.fromJson(String json) { return switch (json) {
  'eq' => eq,
  'contains' => contains,
  'lt' => lt,
  'gt' => gt,
  _ => AigConfigCreateDatasetRequestFiltersOperator._(json),
}; }

static const AigConfigCreateDatasetRequestFiltersOperator eq = AigConfigCreateDatasetRequestFiltersOperator._('eq');

static const AigConfigCreateDatasetRequestFiltersOperator contains = AigConfigCreateDatasetRequestFiltersOperator._('contains');

static const AigConfigCreateDatasetRequestFiltersOperator lt = AigConfigCreateDatasetRequestFiltersOperator._('lt');

static const AigConfigCreateDatasetRequestFiltersOperator gt = AigConfigCreateDatasetRequestFiltersOperator._('gt');

static const List<AigConfigCreateDatasetRequestFiltersOperator> values = [eq, contains, lt, gt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigCreateDatasetRequestFiltersOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigCreateDatasetRequestFiltersOperator($value)'; } 
 }
final class AigConfigCreateDatasetRequestFilters {const AigConfigCreateDatasetRequestFilters({required this.key, required this.$operator, required this.value, });

factory AigConfigCreateDatasetRequestFilters.fromJson(Map<String, dynamic> json) { return AigConfigCreateDatasetRequestFilters(
  key: AigConfigCreateDatasetRequestFiltersKey.fromJson(json['key'] as String),
  $operator: AigConfigCreateDatasetRequestFiltersOperator.fromJson(json['operator'] as String),
  value: (json['value'] as List<dynamic>).map((e) => e).toList(),
); }

final AigConfigCreateDatasetRequestFiltersKey key;

final AigConfigCreateDatasetRequestFiltersOperator $operator;

final List<dynamic> value;

Map<String, dynamic> toJson() { return {
  'key': key.toJson(),
  'operator': $operator.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') &&
      json.containsKey('operator') &&
      json.containsKey('value'); } 
AigConfigCreateDatasetRequestFilters copyWith({AigConfigCreateDatasetRequestFiltersKey? key, AigConfigCreateDatasetRequestFiltersOperator? $operator, List<dynamic>? value, }) { return AigConfigCreateDatasetRequestFilters(
  key: key ?? this.key,
  $operator: $operator ?? this.$operator,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateDatasetRequestFilters &&
          key == other.key &&
          $operator == other.$operator &&
          listEquals(value, other.value); } 
@override int get hashCode { return Object.hash(key, $operator, Object.hashAll(value)); } 
@override String toString() { return 'AigConfigCreateDatasetRequestFilters(key: $key, \$operator: ${$operator}, value: $value)'; } 
 }
