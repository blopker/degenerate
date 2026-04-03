// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_details_tool_calls_file_search_ranking_options_object.dart';import 'run_step_details_tool_calls_file_search_result_object.dart';/// For now, this is always going to be an empty object.
@immutable final class RunStepDetailsToolCallsFileSearchObjectFileSearch {const RunStepDetailsToolCallsFileSearchObjectFileSearch({this.rankingOptions, this.results, });

factory RunStepDetailsToolCallsFileSearchObjectFileSearch.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsFileSearchObjectFileSearch(
  rankingOptions: json['ranking_options'] != null ? RunStepDetailsToolCallsFileSearchRankingOptionsObject.fromJson(json['ranking_options'] as Map<String, dynamic>) : null,
  results: (json['results'] as List<dynamic>?)?.map((e) => RunStepDetailsToolCallsFileSearchResultObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RunStepDetailsToolCallsFileSearchRankingOptionsObject? rankingOptions;

/// The results of the file search.
final List<RunStepDetailsToolCallsFileSearchResultObject>? results;

Map<String, dynamic> toJson() { return {
  if (rankingOptions != null) 'ranking_options': rankingOptions?.toJson(),
  if (results != null) 'results': results?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ranking_options', 'results'}.contains(key)); } 
RunStepDetailsToolCallsFileSearchObjectFileSearch copyWith({RunStepDetailsToolCallsFileSearchRankingOptionsObject Function()? rankingOptions, List<RunStepDetailsToolCallsFileSearchResultObject> Function()? results, }) { return RunStepDetailsToolCallsFileSearchObjectFileSearch(
  rankingOptions: rankingOptions != null ? rankingOptions() : this.rankingOptions,
  results: results != null ? results() : this.results,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsFileSearchObjectFileSearch &&
          rankingOptions == other.rankingOptions &&
          listEquals(results, other.results); } 
@override int get hashCode { return Object.hash(rankingOptions, Object.hashAll(results ?? const [])); } 
@override String toString() { return 'RunStepDetailsToolCallsFileSearchObjectFileSearch(rankingOptions: $rankingOptions, results: $results)'; } 
 }
