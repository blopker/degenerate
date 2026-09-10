// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateImageVariationRequestModelVariant2 {const CreateImageVariationRequestModelVariant2._(this.value);

factory CreateImageVariationRequestModelVariant2.fromJson(String json) {return switch (json) {
  'dall-e-2' => dallE2,
  _ => CreateImageVariationRequestModelVariant2._(json),
};}

static const CreateImageVariationRequestModelVariant2 dallE2 = CreateImageVariationRequestModelVariant2._('dall-e-2');

static const List<CreateImageVariationRequestModelVariant2> values = [dallE2];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageVariationRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageVariationRequestModelVariant2($value)';}
}
/// The model to use for image generation. Only `dall-e-2` is supported at this time.
@immutable
final class CreateImageVariationRequestModel {
  const CreateImageVariationRequestModel({this.string = const Omittable.absent(),
this.createImageVariationRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateImageVariationRequestModel._({required this.rawValue, required this.string,
required this.createImageVariationRequestModelVariant2,});
  factory CreateImageVariationRequestModel.fromJson(Object? json) => CreateImageVariationRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createImageVariationRequestModelVariant2: parseAnyOfVariant<CreateImageVariationRequestModelVariant2>(json, (value) => CreateImageVariationRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateImageVariationRequestModelVariant2> createImageVariationRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || createImageVariationRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createImageVariationRequestModelVariant2.isPresent) createImageVariationRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateImageVariationRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateImageVariationRequestModel(${toJson()})';
}
