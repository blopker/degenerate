// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'model_ids_responses.dart';import 'model_ids_shared.dart';
@immutable
final class ModelIds {
  const ModelIds({this.modelIdsShared = const Omittable.absent(),
this.modelIdsResponses = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ModelIds._({required this.rawValue, required this.modelIdsShared,
required this.modelIdsResponses,});
  factory ModelIds.fromJson(Object? json) => ModelIds._(
    rawValue: Omittable(json),
    modelIdsShared: parseAnyOfVariant<ModelIdsShared>(json, ModelIdsShared.fromJson, isValid: (value) => value.isValid),
modelIdsResponses: parseAnyOfVariant<ModelIdsResponses>(json, ModelIdsResponses.fromJson, isValid: (value) => value.isValid),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ModelIdsShared> modelIdsShared;
final Omittable<ModelIdsResponses> modelIdsResponses;

  /// Whether at least one known variant matched.
  bool get isValid => modelIdsShared.isPresent || modelIdsResponses.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (modelIdsShared.isPresent) modelIdsShared.value?.toJson(),
if (modelIdsResponses.isPresent) modelIdsResponses.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ModelIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ModelIds(${toJson()})';
}
