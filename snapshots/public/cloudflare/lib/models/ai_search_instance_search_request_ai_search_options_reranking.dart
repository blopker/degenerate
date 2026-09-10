// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel {const AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel._(this.value);

factory AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel.fromJson(String json) {return switch (json) {
  '@cf/baai/bge-reranker-base' => cfBaaiBgeRerankerBase,
  '' => $empty,
  _ => AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel._(json),
};}

static const AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel cfBaaiBgeRerankerBase = AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel._('@cf/baai/bge-reranker-base');

static const AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel $empty = AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel._('');

static const List<AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel> values = [cfBaaiBgeRerankerBase, $empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel($value)';}
}
@immutable final class AiSearchInstanceSearchRequestAiSearchOptionsReranking {const AiSearchInstanceSearchRequestAiSearchOptionsReranking({this.enabled, this.matchThreshold, this.model, });

factory AiSearchInstanceSearchRequestAiSearchOptionsReranking.fromJson(Map<String, dynamic> json) {return AiSearchInstanceSearchRequestAiSearchOptionsReranking(
  enabled: json['enabled'] as bool?,
  matchThreshold: json['match_threshold'] != null ? (json['match_threshold'] as num).toDouble() : null,
  model: json['model'] != null ? AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel.fromJson(json['model'] as String) : null,
);}

final bool? enabled;

final double? matchThreshold;

final AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel? model;

/// The value with the schema default applied when absent.
double get matchThresholdOrDefault {return matchThreshold ?? 0.4;}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  'match_threshold': ?matchThreshold,
  if (model != null) 'model': model?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'match_threshold', 'model'}.contains(key));}
AiSearchInstanceSearchRequestAiSearchOptionsReranking copyWith({bool? Function()? enabled, double? Function()? matchThreshold, AiSearchInstanceSearchRequestAiSearchOptionsRerankingModel? Function()? model, }) {return AiSearchInstanceSearchRequestAiSearchOptionsReranking(
  enabled: enabled != null ? enabled() : this.enabled,
  matchThreshold: matchThreshold != null ? matchThreshold() : this.matchThreshold,
  model: model != null ? model() : this.model,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AiSearchInstanceSearchRequestAiSearchOptionsReranking &&
          enabled == other.enabled &&
          matchThreshold == other.matchThreshold &&
          model == other.model;}
@override int get hashCode {return Object.hash(enabled, matchThreshold, model);}
@override String toString() {return 'AiSearchInstanceSearchRequestAiSearchOptionsReranking(enabled: $enabled, matchThreshold: $matchThreshold, model: $model)';}
}
