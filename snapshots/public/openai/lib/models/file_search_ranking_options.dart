// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file_search_ranker.dart';/// The ranking options for the file search. If not specified, the file search tool will use the `auto` ranker and a score_threshold of 0.
/// 
/// See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information.
/// 
@immutable final class FileSearchRankingOptions {const FileSearchRankingOptions({required this.scoreThreshold, this.ranker, });

factory FileSearchRankingOptions.fromJson(Map<String, dynamic> json) { return FileSearchRankingOptions(
  ranker: json['ranker'] != null ? FileSearchRanker.fromJson(json['ranker'] as String) : null,
  scoreThreshold: (json['score_threshold'] as num).toDouble(),
); }

/// The ranker to use for the file search. If not specified will use the `auto` ranker.
final FileSearchRanker? ranker;

/// The score threshold for the file search. All values must be a floating point number between 0 and 1.
final double scoreThreshold;

Map<String, dynamic> toJson() { return {
  if (ranker != null) 'ranker': ranker?.toJson(),
  'score_threshold': scoreThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('score_threshold') && json['score_threshold'] is num; } 
FileSearchRankingOptions copyWith({FileSearchRanker Function()? ranker, double? scoreThreshold, }) { return FileSearchRankingOptions(
  ranker: ranker != null ? ranker() : this.ranker,
  scoreThreshold: scoreThreshold ?? this.scoreThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileSearchRankingOptions &&
          ranker == other.ranker &&
          scoreThreshold == other.scoreThreshold; } 
@override int get hashCode { return Object.hash(ranker, scoreThreshold); } 
@override String toString() { return 'FileSearchRankingOptions(ranker: $ranker, scoreThreshold: $scoreThreshold)'; } 
 }
