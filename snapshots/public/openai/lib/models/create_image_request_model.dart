// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateImageRequestModelVariant2 {const CreateImageRequestModelVariant2._(this.value);

factory CreateImageRequestModelVariant2.fromJson(String json) {return switch (json) {
  'gpt-image-1.5' => gptImage15,
  'dall-e-2' => dallE2,
  'dall-e-3' => dallE3,
  'gpt-image-1' => gptImage1,
  'gpt-image-1-mini' => gptImage1Mini,
  _ => CreateImageRequestModelVariant2._(json),
};}

static const CreateImageRequestModelVariant2 gptImage15 = CreateImageRequestModelVariant2._('gpt-image-1.5');

static const CreateImageRequestModelVariant2 dallE2 = CreateImageRequestModelVariant2._('dall-e-2');

static const CreateImageRequestModelVariant2 dallE3 = CreateImageRequestModelVariant2._('dall-e-3');

static const CreateImageRequestModelVariant2 gptImage1 = CreateImageRequestModelVariant2._('gpt-image-1');

static const CreateImageRequestModelVariant2 gptImage1Mini = CreateImageRequestModelVariant2._('gpt-image-1-mini');

static const List<CreateImageRequestModelVariant2> values = [gptImage15, dallE2, dallE3, gptImage1, gptImage1Mini];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestModelVariant2($value)';}
}
/// The model to use for image generation. One of `dall-e-2`, `dall-e-3`, or a GPT image model (`gpt-image-1`, `gpt-image-1-mini`, `gpt-image-1.5`). Defaults to `dall-e-2` unless a parameter specific to the GPT image models is used.
@immutable
final class CreateImageRequestModel {
  const CreateImageRequestModel({this.string = const Omittable.absent(),
this.createImageRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateImageRequestModel._({required this.rawValue, required this.string,
required this.createImageRequestModelVariant2,});
  factory CreateImageRequestModel.fromJson(Object? json) => CreateImageRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createImageRequestModelVariant2: parseAnyOfVariant<CreateImageRequestModelVariant2>(json, (value) => CreateImageRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateImageRequestModelVariant2> createImageRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || createImageRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createImageRequestModelVariant2.isPresent) createImageRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateImageRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateImageRequestModel(${toJson()})';
}
