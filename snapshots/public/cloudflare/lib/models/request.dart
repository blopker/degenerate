// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to return no metadata, indexed metadata or all metadata associated with the closest vectors.
@immutable final class RequestReturnMetadata {const RequestReturnMetadata._(this.value);

factory RequestReturnMetadata.fromJson(String json) {return switch (json) {
  'none' => none,
  'indexed' => indexed,
  'all' => all,
  _ => RequestReturnMetadata._(json),
};}

static const RequestReturnMetadata none = RequestReturnMetadata._('none');

static const RequestReturnMetadata indexed = RequestReturnMetadata._('indexed');

static const RequestReturnMetadata all = RequestReturnMetadata._('all');

static const List<RequestReturnMetadata> values = [none, indexed, all];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RequestReturnMetadata && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RequestReturnMetadata($value)';}
}
@immutable final class Request {const Request({required this.vector, this.filter, this.returnMetadata, this.returnValues, this.topK, });

factory Request.fromJson(Map<String, dynamic> json) {return Request(
  filter: json['filter'] as Map<String, dynamic>?,
  returnMetadata: json['returnMetadata'] != null ? RequestReturnMetadata.fromJson(json['returnMetadata'] as String) : null,
  returnValues: json['returnValues'] as bool?,
  topK: json['topK'] != null ? (json['topK'] as num).toDouble() : null,
  vector: (json['vector'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
);}

/// A metadata filter expression used to limit nearest neighbor results.
final Map<String,dynamic>? filter;

/// Whether to return no metadata, indexed metadata or all metadata associated with the closest vectors.
final RequestReturnMetadata? returnMetadata;

/// Whether to return the values associated with the closest vectors.
final bool? returnValues;

/// The number of nearest neighbors to find.
final double? topK;

/// The search vector that will be used to find the nearest neighbors.
final List<double> vector;

/// The value with the schema default applied when absent.
RequestReturnMetadata get returnMetadataOrDefault {return returnMetadata ?? RequestReturnMetadata.fromJson('none');}
/// The value with the schema default applied when absent.
bool get returnValuesOrDefault {return returnValues ?? false;}
/// The value with the schema default applied when absent.
double get topKOrDefault {return topK ?? 5.0;}
Map<String, dynamic> toJson() {return {
  'filter': ?filter,
  if (returnMetadata != null) 'returnMetadata': returnMetadata?.toJson(),
  'returnValues': ?returnValues,
  'topK': ?topK,
  'vector': vector,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('vector');}
Request copyWith({Map<String, dynamic>? Function()? filter, RequestReturnMetadata? Function()? returnMetadata, bool? Function()? returnValues, double? Function()? topK, List<double>? vector, }) {return Request(
  filter: filter != null ? filter() : this.filter,
  returnMetadata: returnMetadata != null ? returnMetadata() : this.returnMetadata,
  returnValues: returnValues != null ? returnValues() : this.returnValues,
  topK: topK != null ? topK() : this.topK,
  vector: vector ?? this.vector,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Request &&
          filter == other.filter &&
          returnMetadata == other.returnMetadata &&
          returnValues == other.returnValues &&
          topK == other.topK &&
          listEquals(vector, other.vector);}
@override int get hashCode {return Object.hash(filter, returnMetadata, returnValues, topK, Object.hashAll(vector));}
@override String toString() {return 'Request(filter: $filter, returnMetadata: $returnMetadata, returnValues: $returnValues, topK: $topK, vector: $vector)';}
}
