// GENERATED CODE - DO NOT MODIFY BY HAND

/// Enable re-ranking; set to `none` to disable, which can help reduce latency.
final class VectorStoreSearchRequestRankingOptionsRanker {const VectorStoreSearchRequestRankingOptionsRanker._(this.value);

factory VectorStoreSearchRequestRankingOptionsRanker.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  'default-2024-11-15' => default20241115,
  _ => VectorStoreSearchRequestRankingOptionsRanker._(json),
}; }

static const VectorStoreSearchRequestRankingOptionsRanker none = VectorStoreSearchRequestRankingOptionsRanker._('none');

static const VectorStoreSearchRequestRankingOptionsRanker auto = VectorStoreSearchRequestRankingOptionsRanker._('auto');

static const VectorStoreSearchRequestRankingOptionsRanker default20241115 = VectorStoreSearchRequestRankingOptionsRanker._('default-2024-11-15');

static const List<VectorStoreSearchRequestRankingOptionsRanker> values = [none, auto, default20241115];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorStoreSearchRequestRankingOptionsRanker && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorStoreSearchRequestRankingOptionsRanker($value)'; } 
 }
/// Ranking options for search.
final class VectorStoreSearchRequestRankingOptions {const VectorStoreSearchRequestRankingOptions({this.ranker = VectorStoreSearchRequestRankingOptionsRanker.auto, this.scoreThreshold = 0.0, });

factory VectorStoreSearchRequestRankingOptions.fromJson(Map<String, dynamic> json) { return VectorStoreSearchRequestRankingOptions(
  ranker: json.containsKey('ranker') ? VectorStoreSearchRequestRankingOptionsRanker.fromJson(json['ranker'] as String) : VectorStoreSearchRequestRankingOptionsRanker.auto,
  scoreThreshold: json.containsKey('score_threshold') ? (json['score_threshold'] as num).toDouble() : 0.0,
); }

/// Enable re-ranking; set to `none` to disable, which can help reduce latency.
final VectorStoreSearchRequestRankingOptionsRanker ranker;

final double scoreThreshold;

Map<String, dynamic> toJson() { return {
  'ranker': ranker.toJson(),
  'score_threshold': scoreThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ranker', 'score_threshold'}.contains(key)); } 
VectorStoreSearchRequestRankingOptions copyWith({VectorStoreSearchRequestRankingOptionsRanker Function()? ranker, double Function()? scoreThreshold, }) { return VectorStoreSearchRequestRankingOptions(
  ranker: ranker != null ? ranker() : this.ranker,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorStoreSearchRequestRankingOptions &&
          ranker == other.ranker &&
          scoreThreshold == other.scoreThreshold; } 
@override int get hashCode { return Object.hash(ranker, scoreThreshold); } 
@override String toString() { return 'VectorStoreSearchRequestRankingOptions(ranker: $ranker, scoreThreshold: $scoreThreshold)'; } 
 }
