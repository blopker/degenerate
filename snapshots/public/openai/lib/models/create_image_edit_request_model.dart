// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateImageEditRequestModelVariant2 {const CreateImageEditRequestModelVariant2._(this.value);

factory CreateImageEditRequestModelVariant2.fromJson(String json) {return switch (json) {
  'gpt-image-1.5' => gptImage15,
  'dall-e-2' => dallE2,
  'gpt-image-1' => gptImage1,
  'gpt-image-1-mini' => gptImage1Mini,
  'chatgpt-image-latest' => chatgptImageLatest,
  _ => CreateImageEditRequestModelVariant2._(json),
};}

static const CreateImageEditRequestModelVariant2 gptImage15 = CreateImageEditRequestModelVariant2._('gpt-image-1.5');

static const CreateImageEditRequestModelVariant2 dallE2 = CreateImageEditRequestModelVariant2._('dall-e-2');

static const CreateImageEditRequestModelVariant2 gptImage1 = CreateImageEditRequestModelVariant2._('gpt-image-1');

static const CreateImageEditRequestModelVariant2 gptImage1Mini = CreateImageEditRequestModelVariant2._('gpt-image-1-mini');

static const CreateImageEditRequestModelVariant2 chatgptImageLatest = CreateImageEditRequestModelVariant2._('chatgpt-image-latest');

static const List<CreateImageEditRequestModelVariant2> values = [gptImage15, dallE2, gptImage1, gptImage1Mini, chatgptImageLatest];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageEditRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageEditRequestModelVariant2($value)';}
}
/// The model to use for image generation. Defaults to `gpt-image-1.5`.
@immutable
final class CreateImageEditRequestModel {
  const CreateImageEditRequestModel({this.string = const Omittable.absent(),
this.createImageEditRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateImageEditRequestModel._({required this.rawValue, required this.string,
required this.createImageEditRequestModelVariant2,});
  factory CreateImageEditRequestModel.fromJson(Object? json) => CreateImageEditRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createImageEditRequestModelVariant2: parseAnyOfVariant<CreateImageEditRequestModelVariant2>(json, (value) => CreateImageEditRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateImageEditRequestModelVariant2> createImageEditRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || createImageEditRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createImageEditRequestModelVariant2.isPresent) createImageEditRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateImageEditRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateImageEditRequestModel(${toJson()})';
}
