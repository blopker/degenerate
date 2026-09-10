// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_supported_models.dart';/// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models) for descriptions of them.
/// 
@immutable
final class CreateAssistantRequestModel {
  const CreateAssistantRequestModel({this.string = const Omittable.absent(),
this.assistantSupportedModels = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateAssistantRequestModel._({required this.rawValue, required this.string,
required this.assistantSupportedModels,});
  factory CreateAssistantRequestModel.fromJson(Object? json) => CreateAssistantRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
assistantSupportedModels: parseAnyOfVariant<AssistantSupportedModels>(json, (value) => AssistantSupportedModels.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AssistantSupportedModels> assistantSupportedModels;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || assistantSupportedModels.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (assistantSupportedModels.isPresent) assistantSupportedModels.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateAssistantRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateAssistantRequestModel(${toJson()})';
}
