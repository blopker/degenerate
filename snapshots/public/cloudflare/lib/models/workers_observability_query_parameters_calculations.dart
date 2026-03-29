// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersObservabilityQueryParametersCalculationsKeyType {const WorkersObservabilityQueryParametersCalculationsKeyType._(this.value);

factory WorkersObservabilityQueryParametersCalculationsKeyType.fromJson(String json) { return switch (json) {
  'string' => string,
  'number' => number,
  'boolean' => boolean,
  _ => WorkersObservabilityQueryParametersCalculationsKeyType._(json),
}; }

static const WorkersObservabilityQueryParametersCalculationsKeyType string = WorkersObservabilityQueryParametersCalculationsKeyType._('string');

static const WorkersObservabilityQueryParametersCalculationsKeyType number = WorkersObservabilityQueryParametersCalculationsKeyType._('number');

static const WorkersObservabilityQueryParametersCalculationsKeyType boolean = WorkersObservabilityQueryParametersCalculationsKeyType._('boolean');

static const List<WorkersObservabilityQueryParametersCalculationsKeyType> values = [string, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersObservabilityQueryParametersCalculationsKeyType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersObservabilityQueryParametersCalculationsKeyType($value)'; } 
 }
final class WorkersObservabilityQueryParametersCalculationsOperator {const WorkersObservabilityQueryParametersCalculationsOperator._(this.value);

factory WorkersObservabilityQueryParametersCalculationsOperator.fromJson(String json) { return switch (json) {
  'uniq' => uniq,
  'count' => count,
  'max' => max,
  'min' => min,
  'sum' => sum,
  'avg' => avg,
  'median' => median,
  'p001' => p001,
  'p01' => p01,
  'p05' => p05,
  'p10' => p10,
  'p25' => p25,
  'p75' => p75,
  'p90' => p90,
  'p95' => p95,
  'p99' => p99,
  'p999' => p999,
  'stddev' => stddev,
  'variance' => variance,
  'COUNT_DISTINCT' => countDistinct,
  'COUNT' => count2,
  'MAX' => max2,
  'MIN' => min2,
  'SUM' => sum2,
  'AVG' => avg2,
  'MEDIAN' => median2,
  'P001' => p0012,
  'P01' => p012,
  'P05' => p052,
  'P10' => p102,
  'P25' => p252,
  'P75' => p752,
  'P90' => p902,
  'P95' => p952,
  'P99' => p992,
  'P999' => p9992,
  'STDDEV' => stddev2,
  'VARIANCE' => variance2,
  _ => WorkersObservabilityQueryParametersCalculationsOperator._(json),
}; }

static const WorkersObservabilityQueryParametersCalculationsOperator uniq = WorkersObservabilityQueryParametersCalculationsOperator._('uniq');

static const WorkersObservabilityQueryParametersCalculationsOperator count = WorkersObservabilityQueryParametersCalculationsOperator._('count');

static const WorkersObservabilityQueryParametersCalculationsOperator max = WorkersObservabilityQueryParametersCalculationsOperator._('max');

static const WorkersObservabilityQueryParametersCalculationsOperator min = WorkersObservabilityQueryParametersCalculationsOperator._('min');

static const WorkersObservabilityQueryParametersCalculationsOperator sum = WorkersObservabilityQueryParametersCalculationsOperator._('sum');

static const WorkersObservabilityQueryParametersCalculationsOperator avg = WorkersObservabilityQueryParametersCalculationsOperator._('avg');

static const WorkersObservabilityQueryParametersCalculationsOperator median = WorkersObservabilityQueryParametersCalculationsOperator._('median');

static const WorkersObservabilityQueryParametersCalculationsOperator p001 = WorkersObservabilityQueryParametersCalculationsOperator._('p001');

static const WorkersObservabilityQueryParametersCalculationsOperator p01 = WorkersObservabilityQueryParametersCalculationsOperator._('p01');

static const WorkersObservabilityQueryParametersCalculationsOperator p05 = WorkersObservabilityQueryParametersCalculationsOperator._('p05');

static const WorkersObservabilityQueryParametersCalculationsOperator p10 = WorkersObservabilityQueryParametersCalculationsOperator._('p10');

static const WorkersObservabilityQueryParametersCalculationsOperator p25 = WorkersObservabilityQueryParametersCalculationsOperator._('p25');

static const WorkersObservabilityQueryParametersCalculationsOperator p75 = WorkersObservabilityQueryParametersCalculationsOperator._('p75');

static const WorkersObservabilityQueryParametersCalculationsOperator p90 = WorkersObservabilityQueryParametersCalculationsOperator._('p90');

static const WorkersObservabilityQueryParametersCalculationsOperator p95 = WorkersObservabilityQueryParametersCalculationsOperator._('p95');

static const WorkersObservabilityQueryParametersCalculationsOperator p99 = WorkersObservabilityQueryParametersCalculationsOperator._('p99');

static const WorkersObservabilityQueryParametersCalculationsOperator p999 = WorkersObservabilityQueryParametersCalculationsOperator._('p999');

static const WorkersObservabilityQueryParametersCalculationsOperator stddev = WorkersObservabilityQueryParametersCalculationsOperator._('stddev');

static const WorkersObservabilityQueryParametersCalculationsOperator variance = WorkersObservabilityQueryParametersCalculationsOperator._('variance');

static const WorkersObservabilityQueryParametersCalculationsOperator countDistinct = WorkersObservabilityQueryParametersCalculationsOperator._('COUNT_DISTINCT');

static const WorkersObservabilityQueryParametersCalculationsOperator count2 = WorkersObservabilityQueryParametersCalculationsOperator._('COUNT');

static const WorkersObservabilityQueryParametersCalculationsOperator max2 = WorkersObservabilityQueryParametersCalculationsOperator._('MAX');

static const WorkersObservabilityQueryParametersCalculationsOperator min2 = WorkersObservabilityQueryParametersCalculationsOperator._('MIN');

static const WorkersObservabilityQueryParametersCalculationsOperator sum2 = WorkersObservabilityQueryParametersCalculationsOperator._('SUM');

static const WorkersObservabilityQueryParametersCalculationsOperator avg2 = WorkersObservabilityQueryParametersCalculationsOperator._('AVG');

static const WorkersObservabilityQueryParametersCalculationsOperator median2 = WorkersObservabilityQueryParametersCalculationsOperator._('MEDIAN');

static const WorkersObservabilityQueryParametersCalculationsOperator p0012 = WorkersObservabilityQueryParametersCalculationsOperator._('P001');

static const WorkersObservabilityQueryParametersCalculationsOperator p012 = WorkersObservabilityQueryParametersCalculationsOperator._('P01');

static const WorkersObservabilityQueryParametersCalculationsOperator p052 = WorkersObservabilityQueryParametersCalculationsOperator._('P05');

static const WorkersObservabilityQueryParametersCalculationsOperator p102 = WorkersObservabilityQueryParametersCalculationsOperator._('P10');

static const WorkersObservabilityQueryParametersCalculationsOperator p252 = WorkersObservabilityQueryParametersCalculationsOperator._('P25');

static const WorkersObservabilityQueryParametersCalculationsOperator p752 = WorkersObservabilityQueryParametersCalculationsOperator._('P75');

static const WorkersObservabilityQueryParametersCalculationsOperator p902 = WorkersObservabilityQueryParametersCalculationsOperator._('P90');

static const WorkersObservabilityQueryParametersCalculationsOperator p952 = WorkersObservabilityQueryParametersCalculationsOperator._('P95');

static const WorkersObservabilityQueryParametersCalculationsOperator p992 = WorkersObservabilityQueryParametersCalculationsOperator._('P99');

static const WorkersObservabilityQueryParametersCalculationsOperator p9992 = WorkersObservabilityQueryParametersCalculationsOperator._('P999');

static const WorkersObservabilityQueryParametersCalculationsOperator stddev2 = WorkersObservabilityQueryParametersCalculationsOperator._('STDDEV');

static const WorkersObservabilityQueryParametersCalculationsOperator variance2 = WorkersObservabilityQueryParametersCalculationsOperator._('VARIANCE');

static const List<WorkersObservabilityQueryParametersCalculationsOperator> values = [uniq, count, max, min, sum, avg, median, p001, p01, p05, p10, p25, p75, p90, p95, p99, p999, stddev, variance, countDistinct, count2, max2, min2, sum2, avg2, median2, p0012, p012, p052, p102, p252, p752, p902, p952, p992, p9992, stddev2, variance2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersObservabilityQueryParametersCalculationsOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersObservabilityQueryParametersCalculationsOperator($value)'; } 
 }
final class WorkersObservabilityQueryParametersCalculations {const WorkersObservabilityQueryParametersCalculations({this.alias, this.key, this.keyType, required this.$operator, });

factory WorkersObservabilityQueryParametersCalculations.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryParametersCalculations(
  alias: json['alias'] as String?,
  key: json['key'] as String?,
  keyType: json['keyType'] != null ? WorkersObservabilityQueryParametersCalculationsKeyType.fromJson(json['keyType'] as String) : null,
  $operator: WorkersObservabilityQueryParametersCalculationsOperator.fromJson(json['operator'] as String),
); }

final String? alias;

final String? key;

final WorkersObservabilityQueryParametersCalculationsKeyType? keyType;

final WorkersObservabilityQueryParametersCalculationsOperator $operator;

Map<String, dynamic> toJson() { return {
  'alias': ?alias,
  'key': ?key,
  if (keyType != null) 'keyType': keyType?.toJson(),
  'operator': $operator.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operator'); } 
WorkersObservabilityQueryParametersCalculations copyWith({String Function()? alias, String Function()? key, WorkersObservabilityQueryParametersCalculationsKeyType Function()? keyType, WorkersObservabilityQueryParametersCalculationsOperator? $operator, }) { return WorkersObservabilityQueryParametersCalculations(
  alias: alias != null ? alias() : this.alias,
  key: key != null ? key() : this.key,
  keyType: keyType != null ? keyType() : this.keyType,
  $operator: $operator ?? this.$operator,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryParametersCalculations &&
          alias == other.alias &&
          key == other.key &&
          keyType == other.keyType &&
          $operator == other.$operator; } 
@override int get hashCode { return Object.hash(alias, key, keyType, $operator); } 
@override String toString() { return 'WorkersObservabilityQueryParametersCalculations(alias: $alias, key: $key, keyType: $keyType, \$operator: ${$operator})'; } 
 }
