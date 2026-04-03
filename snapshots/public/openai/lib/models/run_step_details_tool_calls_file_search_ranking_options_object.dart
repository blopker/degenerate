// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file_search_ranker.dart';/// The ranking options for the file search.
@immutable final class RunStepDetailsToolCallsFileSearchRankingOptionsObject {const RunStepDetailsToolCallsFileSearchRankingOptionsObject({required this.ranker, required this.scoreThreshold, });

factory RunStepDetailsToolCallsFileSearchRankingOptionsObject.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsFileSearchRankingOptionsObject(
  ranker: FileSearchRanker.fromJson(json['ranker'] as String),
  scoreThreshold: (json['score_threshold'] as num).toDouble(),
); }

/// The ranker to use for the file search. If not specified will use the `auto` ranker.
final FileSearchRanker ranker;

/// The score threshold for the file search. All values must be a floating point number between 0 and 1.
final double scoreThreshold;

Map<String, dynamic> toJson() { return {
  'ranker': ranker.toJson(),
  'score_threshold': scoreThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ranker') &&
      json.containsKey('score_threshold') && json['score_threshold'] is num; } 
RunStepDetailsToolCallsFileSearchRankingOptionsObject copyWith({FileSearchRanker? ranker, double? scoreThreshold, }) { return RunStepDetailsToolCallsFileSearchRankingOptionsObject(
  ranker: ranker ?? this.ranker,
  scoreThreshold: scoreThreshold ?? this.scoreThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsFileSearchRankingOptionsObject &&
          ranker == other.ranker &&
          scoreThreshold == other.scoreThreshold; } 
@override int get hashCode { return Object.hash(ranker, scoreThreshold); } 
@override String toString() { return 'RunStepDetailsToolCallsFileSearchRankingOptionsObject(ranker: $ranker, scoreThreshold: $scoreThreshold)'; } 
 }
