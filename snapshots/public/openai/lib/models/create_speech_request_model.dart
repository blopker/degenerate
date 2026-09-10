// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateSpeechRequestModelVariant2 {const CreateSpeechRequestModelVariant2._(this.value);

factory CreateSpeechRequestModelVariant2.fromJson(String json) {return switch (json) {
  'tts-1' => tts1,
  'tts-1-hd' => tts1Hd,
  'gpt-4o-mini-tts' => gpt4oMiniTts,
  'gpt-4o-mini-tts-2025-12-15' => gpt4oMiniTts20251215,
  _ => CreateSpeechRequestModelVariant2._(json),
};}

static const CreateSpeechRequestModelVariant2 tts1 = CreateSpeechRequestModelVariant2._('tts-1');

static const CreateSpeechRequestModelVariant2 tts1Hd = CreateSpeechRequestModelVariant2._('tts-1-hd');

static const CreateSpeechRequestModelVariant2 gpt4oMiniTts = CreateSpeechRequestModelVariant2._('gpt-4o-mini-tts');

static const CreateSpeechRequestModelVariant2 gpt4oMiniTts20251215 = CreateSpeechRequestModelVariant2._('gpt-4o-mini-tts-2025-12-15');

static const List<CreateSpeechRequestModelVariant2> values = [tts1, tts1Hd, gpt4oMiniTts, gpt4oMiniTts20251215];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateSpeechRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateSpeechRequestModelVariant2($value)';}
}
/// One of the available [TTS models](/docs/models#tts): `tts-1`, `tts-1-hd`, `gpt-4o-mini-tts`, or `gpt-4o-mini-tts-2025-12-15`.
/// 
@immutable
final class CreateSpeechRequestModel {
  const CreateSpeechRequestModel({this.string = const Omittable.absent(),
this.createSpeechRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateSpeechRequestModel._({required this.rawValue, required this.string,
required this.createSpeechRequestModelVariant2,});
  factory CreateSpeechRequestModel.fromJson(Object? json) => CreateSpeechRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createSpeechRequestModelVariant2: parseAnyOfVariant<CreateSpeechRequestModelVariant2>(json, (value) => CreateSpeechRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateSpeechRequestModelVariant2> createSpeechRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createSpeechRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createSpeechRequestModelVariant2.isPresent) createSpeechRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateSpeechRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateSpeechRequestModel(${toJson()})';
}
