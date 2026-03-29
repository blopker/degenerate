// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_dimensions.dart';/// Specifies the type of metric to use calculating distance.
final class VectorizeIndexMetric {const VectorizeIndexMetric._(this.value);

factory VectorizeIndexMetric.fromJson(String json) { return switch (json) {
  'cosine' => cosine,
  'euclidean' => euclidean,
  'dot-product' => dotProduct,
  _ => VectorizeIndexMetric._(json),
}; }

static const VectorizeIndexMetric cosine = VectorizeIndexMetric._('cosine');

static const VectorizeIndexMetric euclidean = VectorizeIndexMetric._('euclidean');

static const VectorizeIndexMetric dotProduct = VectorizeIndexMetric._('dot-product');

static const List<VectorizeIndexMetric> values = [cosine, euclidean, dotProduct];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorizeIndexMetric && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorizeIndexMetric($value)'; } 
 }
final class VectorizeIndexDimensionConfiguration {const VectorizeIndexDimensionConfiguration({required this.dimensions, required this.metric, });

factory VectorizeIndexDimensionConfiguration.fromJson(Map<String, dynamic> json) { return VectorizeIndexDimensionConfiguration(
  dimensions: VectorizeIndexDimensions.fromJson(json['dimensions'] as num),
  metric: VectorizeIndexMetric.fromJson(json['metric'] as String),
); }

final VectorizeIndexDimensions dimensions;

final VectorizeIndexMetric metric;

Map<String, dynamic> toJson() { return {
  'dimensions': dimensions.toJson(),
  'metric': metric.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dimensions') &&
      json.containsKey('metric'); } 
VectorizeIndexDimensionConfiguration copyWith({VectorizeIndexDimensions? dimensions, VectorizeIndexMetric? metric, }) { return VectorizeIndexDimensionConfiguration(
  dimensions: dimensions ?? this.dimensions,
  metric: metric ?? this.metric,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexDimensionConfiguration &&
          dimensions == other.dimensions &&
          metric == other.metric; } 
@override int get hashCode { return Object.hash(dimensions, metric); } 
@override String toString() { return 'VectorizeIndexDimensionConfiguration(dimensions: $dimensions, metric: $metric)'; } 
 }
