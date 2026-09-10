// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EditImageBodyJsonParamModelVariant2 {const EditImageBodyJsonParamModelVariant2._(this.value);

factory EditImageBodyJsonParamModelVariant2.fromJson(String json) {return switch (json) {
  'gpt-image-1.5' => gptImage15,
  'gpt-image-1' => gptImage1,
  'gpt-image-1-mini' => gptImage1Mini,
  'chatgpt-image-latest' => chatgptImageLatest,
  _ => EditImageBodyJsonParamModelVariant2._(json),
};}

static const EditImageBodyJsonParamModelVariant2 gptImage15 = EditImageBodyJsonParamModelVariant2._('gpt-image-1.5');

static const EditImageBodyJsonParamModelVariant2 gptImage1 = EditImageBodyJsonParamModelVariant2._('gpt-image-1');

static const EditImageBodyJsonParamModelVariant2 gptImage1Mini = EditImageBodyJsonParamModelVariant2._('gpt-image-1-mini');

static const EditImageBodyJsonParamModelVariant2 chatgptImageLatest = EditImageBodyJsonParamModelVariant2._('chatgpt-image-latest');

static const List<EditImageBodyJsonParamModelVariant2> values = [gptImage15, gptImage1, gptImage1Mini, chatgptImageLatest];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamModelVariant2($value)';}
}
/// The model to use for image editing.
@immutable
final class EditImageBodyJsonParamModel {
  const EditImageBodyJsonParamModel({this.string = const Omittable.absent(),
this.editImageBodyJsonParamModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EditImageBodyJsonParamModel._({required this.rawValue, required this.string,
required this.editImageBodyJsonParamModelVariant2,});
  factory EditImageBodyJsonParamModel.fromJson(Object? json) => EditImageBodyJsonParamModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
editImageBodyJsonParamModelVariant2: parseAnyOfVariant<EditImageBodyJsonParamModelVariant2>(json, (value) => EditImageBodyJsonParamModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EditImageBodyJsonParamModelVariant2> editImageBodyJsonParamModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || editImageBodyJsonParamModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (editImageBodyJsonParamModelVariant2.isPresent) editImageBodyJsonParamModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EditImageBodyJsonParamModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EditImageBodyJsonParamModel(${toJson()})';
}
