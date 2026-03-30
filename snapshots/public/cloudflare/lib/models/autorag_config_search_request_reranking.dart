// GENERATED CODE - DO NOT MODIFY BY HAND

final class AutoragConfigSearchRequestRerankingModel {const AutoragConfigSearchRequestRerankingModel._(this.value);

factory AutoragConfigSearchRequestRerankingModel.fromJson(String json) { return switch (json) {
  '@cf/baai/bge-reranker-base' => cfBaaiBgeRerankerBase,
  '' => $empty,
  _ => AutoragConfigSearchRequestRerankingModel._(json),
}; }

static const AutoragConfigSearchRequestRerankingModel cfBaaiBgeRerankerBase = AutoragConfigSearchRequestRerankingModel._('@cf/baai/bge-reranker-base');

static const AutoragConfigSearchRequestRerankingModel $empty = AutoragConfigSearchRequestRerankingModel._('');

static const List<AutoragConfigSearchRequestRerankingModel> values = [cfBaaiBgeRerankerBase, $empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSearchRequestRerankingModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoragConfigSearchRequestRerankingModel($value)'; } 
 }
final class AutoragConfigSearchRequestReranking {const AutoragConfigSearchRequestReranking({this.enabled = false, this.model, });

factory AutoragConfigSearchRequestReranking.fromJson(Map<String, dynamic> json) { return AutoragConfigSearchRequestReranking(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
  model: json['model'] != null ? AutoragConfigSearchRequestRerankingModel.fromJson(json['model'] as String) : null,
); }

final bool enabled;

final AutoragConfigSearchRequestRerankingModel? model;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (model != null) 'model': model?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'model'}.contains(key)); } 
AutoragConfigSearchRequestReranking copyWith({bool Function()? enabled, AutoragConfigSearchRequestRerankingModel Function()? model, }) { return AutoragConfigSearchRequestReranking(
  enabled: enabled != null ? enabled() : this.enabled,
  model: model != null ? model() : this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigSearchRequestReranking &&
          enabled == other.enabled &&
          model == other.model; } 
@override int get hashCode { return Object.hash(enabled, model); } 
@override String toString() { return 'AutoragConfigSearchRequestReranking(enabled: $enabled, model: $model)'; } 
 }
