// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'model_ids_responses.dart';/// Model ID used to generate the response, like `gpt-5` or `o3`. OpenAI offers a wide range of models with different capabilities, performance characteristics, and price points. Refer to the [model guide](/docs/models) to browse and compare available models.
@immutable
final class ModelIdsCompaction {
  const ModelIdsCompaction({this.modelIdsResponses = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ModelIdsCompaction._({required this.rawValue, required this.modelIdsResponses,
required this.string,});
  factory ModelIdsCompaction.fromJson(Object? json) => ModelIdsCompaction._(
    rawValue: Omittable(json),
    modelIdsResponses: parseAnyOfVariant<ModelIdsResponses>(json, ModelIdsResponses.fromJson, isValid: (value) => value.isValid),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ModelIdsResponses> modelIdsResponses;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || modelIdsResponses.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (modelIdsResponses.isPresent) modelIdsResponses.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ModelIdsCompaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ModelIdsCompaction(${toJson()})';
}
