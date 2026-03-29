// GENERATED CODE - DO NOT MODIFY BY HAND

import 'hybrid_search_options.dart';final class RankerVersionType {const RankerVersionType._(this.value);

factory RankerVersionType.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'default-2024-11-15' => default20241115,
  _ => RankerVersionType._(json),
}; }

static const RankerVersionType auto = RankerVersionType._('auto');

static const RankerVersionType default20241115 = RankerVersionType._('default-2024-11-15');

static const List<RankerVersionType> values = [auto, default20241115];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RankerVersionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RankerVersionType($value)'; } 
 }
final class RankingOptions {const RankingOptions({this.ranker, this.scoreThreshold, this.hybridSearch, });

factory RankingOptions.fromJson(Map<String, dynamic> json) { return RankingOptions(
  ranker: json['ranker'] != null ? RankerVersionType.fromJson(json['ranker'] as String) : null,
  scoreThreshold: json['score_threshold'] != null ? (json['score_threshold'] as num).toDouble() : null,
  hybridSearch: json['hybrid_search'] != null ? HybridSearchOptions.fromJson(json['hybrid_search'] as Map<String, dynamic>) : null,
); }

/// The ranker to use for the file search.
final RankerVersionType? ranker;

/// The score threshold for the file search, a number between 0 and 1. Numbers closer to 1 will attempt to return only the most relevant results, but may return fewer results.
final double? scoreThreshold;

/// Weights that control how reciprocal rank fusion balances semantic embedding matches versus sparse keyword matches when hybrid search is enabled.
final HybridSearchOptions? hybridSearch;

Map<String, dynamic> toJson() { return {
  if (ranker != null) 'ranker': ranker?.toJson(),
  'score_threshold': ?scoreThreshold,
  if (hybridSearch != null) 'hybrid_search': hybridSearch?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ranker', 'score_threshold', 'hybrid_search'}.contains(key)); } 
RankingOptions copyWith({RankerVersionType Function()? ranker, double Function()? scoreThreshold, HybridSearchOptions Function()? hybridSearch, }) { return RankingOptions(
  ranker: ranker != null ? ranker() : this.ranker,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
  hybridSearch: hybridSearch != null ? hybridSearch() : this.hybridSearch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RankingOptions &&
          ranker == other.ranker &&
          scoreThreshold == other.scoreThreshold &&
          hybridSearch == other.hybridSearch; } 
@override int get hashCode { return Object.hash(ranker, scoreThreshold, hybridSearch); } 
@override String toString() { return 'RankingOptions(ranker: $ranker, scoreThreshold: $scoreThreshold, hybridSearch: $hybridSearch)'; } 
 }
