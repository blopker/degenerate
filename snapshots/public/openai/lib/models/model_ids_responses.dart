// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'model_ids_shared.dart';@immutable final class ResponsesOnlyModel {const ResponsesOnlyModel._(this.value);

factory ResponsesOnlyModel.fromJson(String json) { return switch (json) {
  'o1-pro' => o1Pro,
  'o1-pro-2025-03-19' => o1Pro20250319,
  'o3-pro' => o3Pro,
  'o3-pro-2025-06-10' => o3Pro20250610,
  'o3-deep-research' => o3DeepResearch,
  'o3-deep-research-2025-06-26' => o3DeepResearch20250626,
  'o4-mini-deep-research' => o4MiniDeepResearch,
  'o4-mini-deep-research-2025-06-26' => o4MiniDeepResearch20250626,
  'computer-use-preview' => computerUsePreview,
  'computer-use-preview-2025-03-11' => computerUsePreview20250311,
  'gpt-5-codex' => gpt5Codex,
  'gpt-5-pro' => gpt5Pro,
  'gpt-5-pro-2025-10-06' => gpt5Pro20251006,
  'gpt-5.1-codex-max' => gpt51CodexMax,
  _ => ResponsesOnlyModel._(json),
}; }

static const ResponsesOnlyModel o1Pro = ResponsesOnlyModel._('o1-pro');

static const ResponsesOnlyModel o1Pro20250319 = ResponsesOnlyModel._('o1-pro-2025-03-19');

static const ResponsesOnlyModel o3Pro = ResponsesOnlyModel._('o3-pro');

static const ResponsesOnlyModel o3Pro20250610 = ResponsesOnlyModel._('o3-pro-2025-06-10');

static const ResponsesOnlyModel o3DeepResearch = ResponsesOnlyModel._('o3-deep-research');

static const ResponsesOnlyModel o3DeepResearch20250626 = ResponsesOnlyModel._('o3-deep-research-2025-06-26');

static const ResponsesOnlyModel o4MiniDeepResearch = ResponsesOnlyModel._('o4-mini-deep-research');

static const ResponsesOnlyModel o4MiniDeepResearch20250626 = ResponsesOnlyModel._('o4-mini-deep-research-2025-06-26');

static const ResponsesOnlyModel computerUsePreview = ResponsesOnlyModel._('computer-use-preview');

static const ResponsesOnlyModel computerUsePreview20250311 = ResponsesOnlyModel._('computer-use-preview-2025-03-11');

static const ResponsesOnlyModel gpt5Codex = ResponsesOnlyModel._('gpt-5-codex');

static const ResponsesOnlyModel gpt5Pro = ResponsesOnlyModel._('gpt-5-pro');

static const ResponsesOnlyModel gpt5Pro20251006 = ResponsesOnlyModel._('gpt-5-pro-2025-10-06');

static const ResponsesOnlyModel gpt51CodexMax = ResponsesOnlyModel._('gpt-5.1-codex-max');

static const List<ResponsesOnlyModel> values = [o1Pro, o1Pro20250319, o3Pro, o3Pro20250610, o3DeepResearch, o3DeepResearch20250626, o4MiniDeepResearch, o4MiniDeepResearch20250626, computerUsePreview, computerUsePreview20250311, gpt5Codex, gpt5Pro, gpt5Pro20251006, gpt51CodexMax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesOnlyModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsesOnlyModel($value)'; } 
 }

@immutable
final class ModelIdsResponses {
  const ModelIdsResponses({this.modelIdsShared = const Omittable.absent(),
this.responsesOnlyModel = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ModelIdsResponses._({required this.rawValue, required this.modelIdsShared,
required this.responsesOnlyModel,});
  factory ModelIdsResponses.fromJson(Object? json) => ModelIdsResponses._(
    rawValue: Omittable(json),
    modelIdsShared: parseAnyOfVariant<ModelIdsShared>(json, ModelIdsShared.fromJson, isValid: (value) => value.isValid),
responsesOnlyModel: parseAnyOfVariant<ResponsesOnlyModel>(json, (value) => ResponsesOnlyModel.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ModelIdsShared> modelIdsShared;
final Omittable<ResponsesOnlyModel> responsesOnlyModel;

  /// Whether at least one known variant matched.
  bool get isValid => modelIdsShared.isPresent || responsesOnlyModel.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (modelIdsShared.isPresent) modelIdsShared.value?.toJson(),
if (responsesOnlyModel.isPresent) responsesOnlyModel.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ModelIdsResponses && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ModelIdsResponses(${toJson()})';
}
