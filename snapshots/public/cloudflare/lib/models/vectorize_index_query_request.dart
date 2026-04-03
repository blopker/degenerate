// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VectorizeIndexQueryRequest {const VectorizeIndexQueryRequest({required this.vector, this.filter, this.returnMetadata = false, this.returnValues = false, this.topK = 5.0, });

factory VectorizeIndexQueryRequest.fromJson(Map<String, dynamic> json) { return VectorizeIndexQueryRequest(
  filter: (json['filter'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  returnMetadata: json.containsKey('returnMetadata') ? json['returnMetadata'] as bool : false,
  returnValues: json.containsKey('returnValues') ? json['returnValues'] as bool : false,
  topK: json.containsKey('topK') ? (json['topK'] as num).toDouble() : 5.0,
  vector: (json['vector'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
); }

/// A metadata filter expression used to limit nearest neighbor results.
final Map<String,dynamic>? filter;

/// Whether to return the metadata associated with the closest vectors.
final bool returnMetadata;

/// Whether to return the values associated with the closest vectors.
final bool returnValues;

/// The number of nearest neighbors to find.
final double topK;

/// The search vector that will be used to find the nearest neighbors.
final List<double> vector;

Map<String, dynamic> toJson() { return {
  'filter': ?filter,
  'returnMetadata': returnMetadata,
  'returnValues': returnValues,
  'topK': topK,
  'vector': vector,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('vector'); } 
VectorizeIndexQueryRequest copyWith({Map<String, dynamic> Function()? filter, bool Function()? returnMetadata, bool Function()? returnValues, double Function()? topK, List<double>? vector, }) { return VectorizeIndexQueryRequest(
  filter: filter != null ? filter() : this.filter,
  returnMetadata: returnMetadata != null ? returnMetadata() : this.returnMetadata,
  returnValues: returnValues != null ? returnValues() : this.returnValues,
  topK: topK != null ? topK() : this.topK,
  vector: vector ?? this.vector,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexQueryRequest &&
          filter == other.filter &&
          returnMetadata == other.returnMetadata &&
          returnValues == other.returnValues &&
          topK == other.topK &&
          listEquals(vector, other.vector); } 
@override int get hashCode { return Object.hash(filter, returnMetadata, returnValues, topK, Object.hashAll(vector)); } 
@override String toString() { return 'VectorizeIndexQueryRequest(filter: $filter, returnMetadata: $returnMetadata, returnValues: $returnValues, topK: $topK, vector: $vector)'; } 
 }
