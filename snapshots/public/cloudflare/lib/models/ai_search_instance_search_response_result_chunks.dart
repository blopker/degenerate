// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_search_response_result_chunks_item.dart';import 'ai_search_instance_search_response_result_chunks_scoring_details.dart';@immutable final class AiSearchInstanceSearchResponseResultChunks {const AiSearchInstanceSearchResponseResultChunks({required this.id, required this.score, required this.text, required this.type, this.item, this.scoringDetails, });

factory AiSearchInstanceSearchResponseResultChunks.fromJson(Map<String, dynamic> json) { return AiSearchInstanceSearchResponseResultChunks(
  id: json['id'] as String,
  item: json['item'] != null ? AiSearchInstanceSearchResponseResultChunksItem.fromJson(json['item'] as Map<String, dynamic>) : null,
  score: (json['score'] as num).toDouble(),
  scoringDetails: json['scoring_details'] != null ? AiSearchInstanceSearchResponseResultChunksScoringDetails.fromJson(json['scoring_details'] as Map<String, dynamic>) : null,
  text: json['text'] as String,
  type: json['type'] as String,
); }

final String id;

final AiSearchInstanceSearchResponseResultChunksItem? item;

final double score;

final AiSearchInstanceSearchResponseResultChunksScoringDetails? scoringDetails;

final String text;

final String type;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (item != null) 'item': item?.toJson(),
  'score': score,
  if (scoringDetails != null) 'scoring_details': scoringDetails?.toJson(),
  'text': text,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('score') && json['score'] is num &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('type') && json['type'] is String; } 
AiSearchInstanceSearchResponseResultChunks copyWith({String? id, AiSearchInstanceSearchResponseResultChunksItem Function()? item, double? score, AiSearchInstanceSearchResponseResultChunksScoringDetails Function()? scoringDetails, String? text, String? type, }) { return AiSearchInstanceSearchResponseResultChunks(
  id: id ?? this.id,
  item: item != null ? item() : this.item,
  score: score ?? this.score,
  scoringDetails: scoringDetails != null ? scoringDetails() : this.scoringDetails,
  text: text ?? this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceSearchResponseResultChunks &&
          id == other.id &&
          item == other.item &&
          score == other.score &&
          scoringDetails == other.scoringDetails &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, item, score, scoringDetails, text, type); } 
@override String toString() { return 'AiSearchInstanceSearchResponseResultChunks(id: $id, item: $item, score: $score, scoringDetails: $scoringDetails, text: $text, type: $type)'; } 
 }
