// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AutoragConfigAiSearchRequestRerankingModel {const AutoragConfigAiSearchRequestRerankingModel._(this.value);

factory AutoragConfigAiSearchRequestRerankingModel.fromJson(String json) { return switch (json) {
  '@cf/baai/bge-reranker-base' => cfBaaiBgeRerankerBase,
  '' => $empty,
  _ => AutoragConfigAiSearchRequestRerankingModel._(json),
}; }

static const AutoragConfigAiSearchRequestRerankingModel cfBaaiBgeRerankerBase = AutoragConfigAiSearchRequestRerankingModel._('@cf/baai/bge-reranker-base');

static const AutoragConfigAiSearchRequestRerankingModel $empty = AutoragConfigAiSearchRequestRerankingModel._('');

static const List<AutoragConfigAiSearchRequestRerankingModel> values = [cfBaaiBgeRerankerBase, $empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigAiSearchRequestRerankingModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoragConfigAiSearchRequestRerankingModel($value)'; } 
 }
@immutable final class AutoragConfigAiSearchRequestReranking {const AutoragConfigAiSearchRequestReranking({this.enabled = false, this.model, });

factory AutoragConfigAiSearchRequestReranking.fromJson(Map<String, dynamic> json) { return AutoragConfigAiSearchRequestReranking(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
  model: json['model'] != null ? AutoragConfigAiSearchRequestRerankingModel.fromJson(json['model'] as String) : null,
); }

final bool enabled;

final AutoragConfigAiSearchRequestRerankingModel? model;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (model != null) 'model': model?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'model'}.contains(key)); } 
AutoragConfigAiSearchRequestReranking copyWith({bool Function()? enabled, AutoragConfigAiSearchRequestRerankingModel Function()? model, }) { return AutoragConfigAiSearchRequestReranking(
  enabled: enabled != null ? enabled() : this.enabled,
  model: model != null ? model() : this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigAiSearchRequestReranking &&
          enabled == other.enabled &&
          model == other.model; } 
@override int get hashCode { return Object.hash(enabled, model); } 
@override String toString() { return 'AutoragConfigAiSearchRequestReranking(enabled: $enabled, model: $model)'; } 
 }
