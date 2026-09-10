// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateTranslationRequestModelVariant2 {const CreateTranslationRequestModelVariant2._(this.value);

factory CreateTranslationRequestModelVariant2.fromJson(String json) {return switch (json) {
  'whisper-1' => whisper1,
  _ => CreateTranslationRequestModelVariant2._(json),
};}

static const CreateTranslationRequestModelVariant2 whisper1 = CreateTranslationRequestModelVariant2._('whisper-1');

static const List<CreateTranslationRequestModelVariant2> values = [whisper1];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateTranslationRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateTranslationRequestModelVariant2($value)';}
}
/// ID of the model to use. Only `whisper-1` (which is powered by our open source Whisper V2 model) is currently available.
/// 
@immutable
final class CreateTranslationRequestModel {
  const CreateTranslationRequestModel({this.string = const Omittable.absent(),
this.createTranslationRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateTranslationRequestModel._({required this.rawValue, required this.string,
required this.createTranslationRequestModelVariant2,});
  factory CreateTranslationRequestModel.fromJson(Object? json) => CreateTranslationRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createTranslationRequestModelVariant2: parseAnyOfVariant<CreateTranslationRequestModelVariant2>(json, (value) => CreateTranslationRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateTranslationRequestModelVariant2> createTranslationRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createTranslationRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createTranslationRequestModelVariant2.isPresent) createTranslationRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateTranslationRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateTranslationRequestModel(${toJson()})';
}
