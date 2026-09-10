// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_supported_models.dart';/// The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
@immutable
final class CreateRunRequestModel {
  const CreateRunRequestModel({this.string = const Omittable.absent(),
this.assistantSupportedModels = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateRunRequestModel._({required this.rawValue, required this.string,
required this.assistantSupportedModels,});
  factory CreateRunRequestModel.fromJson(Object? json) => CreateRunRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
assistantSupportedModels: parseAnyOfVariant<AssistantSupportedModels>(json, (value) => AssistantSupportedModels.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AssistantSupportedModels> assistantSupportedModels;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || assistantSupportedModels.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (assistantSupportedModels.isPresent) assistantSupportedModels.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateRunRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateRunRequestModel(${toJson()})';
}
