// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateCompletionRequestModelVariant2 {const CreateCompletionRequestModelVariant2._(this.value);

factory CreateCompletionRequestModelVariant2.fromJson(String json) {return switch (json) {
  'gpt-3.5-turbo-instruct' => gpt35TurboInstruct,
  'davinci-002' => davinci002,
  'babbage-002' => babbage002,
  _ => CreateCompletionRequestModelVariant2._(json),
};}

static const CreateCompletionRequestModelVariant2 gpt35TurboInstruct = CreateCompletionRequestModelVariant2._('gpt-3.5-turbo-instruct');

static const CreateCompletionRequestModelVariant2 davinci002 = CreateCompletionRequestModelVariant2._('davinci-002');

static const CreateCompletionRequestModelVariant2 babbage002 = CreateCompletionRequestModelVariant2._('babbage-002');

static const List<CreateCompletionRequestModelVariant2> values = [gpt35TurboInstruct, davinci002, babbage002];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateCompletionRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateCompletionRequestModelVariant2($value)';}
}
/// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models) for descriptions of them.
/// 
@immutable
final class CreateCompletionRequestModel {
  const CreateCompletionRequestModel({this.string = const Omittable.absent(),
this.createCompletionRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateCompletionRequestModel._({required this.rawValue, required this.string,
required this.createCompletionRequestModelVariant2,});
  factory CreateCompletionRequestModel.fromJson(Object? json) => CreateCompletionRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createCompletionRequestModelVariant2: parseAnyOfVariant<CreateCompletionRequestModelVariant2>(json, (value) => CreateCompletionRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateCompletionRequestModelVariant2> createCompletionRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createCompletionRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createCompletionRequestModelVariant2.isPresent) createCompletionRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateCompletionRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateCompletionRequestModel(${toJson()})';
}
