// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AutoragConfigSearchRequestRankingOptions {const AutoragConfigSearchRequestRankingOptions({this.ranker, this.scoreThreshold, });

factory AutoragConfigSearchRequestRankingOptions.fromJson(Map<String, dynamic> json) {return AutoragConfigSearchRequestRankingOptions(
  ranker: json['ranker'] as String?,
  scoreThreshold: json['score_threshold'] != null ? (json['score_threshold'] as num).toDouble() : null,
);}

final String? ranker;

final double? scoreThreshold;

/// The value with the schema default applied when absent.
double get scoreThresholdOrDefault {return scoreThreshold ?? 0.4;}
Map<String, dynamic> toJson() {return {
  'ranker': ?ranker,
  'score_threshold': ?scoreThreshold,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'ranker', 'score_threshold'}.contains(key));}
AutoragConfigSearchRequestRankingOptions copyWith({String? Function()? ranker, double? Function()? scoreThreshold, }) {return AutoragConfigSearchRequestRankingOptions(
  ranker: ranker != null ? ranker() : this.ranker,
  scoreThreshold: scoreThreshold != null ? scoreThreshold() : this.scoreThreshold,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AutoragConfigSearchRequestRankingOptions &&
          ranker == other.ranker &&
          scoreThreshold == other.scoreThreshold;}
@override int get hashCode {return Object.hash(ranker, scoreThreshold);}
@override String toString() {return 'AutoragConfigSearchRequestRankingOptions(ranker: $ranker, scoreThreshold: $scoreThreshold)';}
}
