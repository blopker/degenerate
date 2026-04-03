// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchInstanceSearchResponseResultChunksScoringDetails {const AiSearchInstanceSearchResponseResultChunksScoringDetails({this.keywordRank, this.keywordScore, this.rerankingScore, this.vectorRank, this.vectorScore, });

factory AiSearchInstanceSearchResponseResultChunksScoringDetails.fromJson(Map<String, dynamic> json) { return AiSearchInstanceSearchResponseResultChunksScoringDetails(
  keywordRank: json['keyword_rank'] != null ? (json['keyword_rank'] as num).toDouble() : null,
  keywordScore: json['keyword_score'] != null ? (json['keyword_score'] as num).toDouble() : null,
  rerankingScore: json['reranking_score'] != null ? (json['reranking_score'] as num).toDouble() : null,
  vectorRank: json['vector_rank'] != null ? (json['vector_rank'] as num).toDouble() : null,
  vectorScore: json['vector_score'] != null ? (json['vector_score'] as num).toDouble() : null,
); }

final double? keywordRank;

final double? keywordScore;

final double? rerankingScore;

final double? vectorRank;

final double? vectorScore;

Map<String, dynamic> toJson() { return {
  'keyword_rank': ?keywordRank,
  'keyword_score': ?keywordScore,
  'reranking_score': ?rerankingScore,
  'vector_rank': ?vectorRank,
  'vector_score': ?vectorScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'keyword_rank', 'keyword_score', 'reranking_score', 'vector_rank', 'vector_score'}.contains(key)); } 
AiSearchInstanceSearchResponseResultChunksScoringDetails copyWith({double Function()? keywordRank, double Function()? keywordScore, double Function()? rerankingScore, double Function()? vectorRank, double Function()? vectorScore, }) { return AiSearchInstanceSearchResponseResultChunksScoringDetails(
  keywordRank: keywordRank != null ? keywordRank() : this.keywordRank,
  keywordScore: keywordScore != null ? keywordScore() : this.keywordScore,
  rerankingScore: rerankingScore != null ? rerankingScore() : this.rerankingScore,
  vectorRank: vectorRank != null ? vectorRank() : this.vectorRank,
  vectorScore: vectorScore != null ? vectorScore() : this.vectorScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceSearchResponseResultChunksScoringDetails &&
          keywordRank == other.keywordRank &&
          keywordScore == other.keywordScore &&
          rerankingScore == other.rerankingScore &&
          vectorRank == other.vectorRank &&
          vectorScore == other.vectorScore; } 
@override int get hashCode { return Object.hash(keywordRank, keywordScore, rerankingScore, vectorRank, vectorScore); } 
@override String toString() { return 'AiSearchInstanceSearchResponseResultChunksScoringDetails(keywordRank: $keywordRank, keywordScore: $keywordScore, rerankingScore: $rerankingScore, vectorRank: $vectorRank, vectorScore: $vectorScore)'; } 
 }
