// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateTranscriptionRequestModelVariant2 {const CreateTranscriptionRequestModelVariant2._(this.value);

factory CreateTranscriptionRequestModelVariant2.fromJson(String json) { return switch (json) {
  'whisper-1' => whisper1,
  'gpt-4o-transcribe' => gpt4oTranscribe,
  'gpt-4o-mini-transcribe' => gpt4oMiniTranscribe,
  'gpt-4o-mini-transcribe-2025-12-15' => gpt4oMiniTranscribe20251215,
  'gpt-4o-transcribe-diarize' => gpt4oTranscribeDiarize,
  _ => CreateTranscriptionRequestModelVariant2._(json),
}; }

static const CreateTranscriptionRequestModelVariant2 whisper1 = CreateTranscriptionRequestModelVariant2._('whisper-1');

static const CreateTranscriptionRequestModelVariant2 gpt4oTranscribe = CreateTranscriptionRequestModelVariant2._('gpt-4o-transcribe');

static const CreateTranscriptionRequestModelVariant2 gpt4oMiniTranscribe = CreateTranscriptionRequestModelVariant2._('gpt-4o-mini-transcribe');

static const CreateTranscriptionRequestModelVariant2 gpt4oMiniTranscribe20251215 = CreateTranscriptionRequestModelVariant2._('gpt-4o-mini-transcribe-2025-12-15');

static const CreateTranscriptionRequestModelVariant2 gpt4oTranscribeDiarize = CreateTranscriptionRequestModelVariant2._('gpt-4o-transcribe-diarize');

static const List<CreateTranscriptionRequestModelVariant2> values = [whisper1, gpt4oTranscribe, gpt4oMiniTranscribe, gpt4oMiniTranscribe20251215, gpt4oTranscribeDiarize];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionRequestModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateTranscriptionRequestModelVariant2($value)'; } 
 }
/// ID of the model to use. The options are `gpt-4o-transcribe`, `gpt-4o-mini-transcribe`, `gpt-4o-mini-transcribe-2025-12-15`, `whisper-1` (which is powered by our open source Whisper V2 model), and `gpt-4o-transcribe-diarize`.
/// 
@immutable
final class CreateTranscriptionRequestModel {
  const CreateTranscriptionRequestModel({this.string = const Omittable.absent(),
this.createTranscriptionRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateTranscriptionRequestModel._({required this.rawValue, required this.string,
required this.createTranscriptionRequestModelVariant2,});
  factory CreateTranscriptionRequestModel.fromJson(Object? json) => CreateTranscriptionRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createTranscriptionRequestModelVariant2: parseAnyOfVariant<CreateTranscriptionRequestModelVariant2>(json, (value) => CreateTranscriptionRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateTranscriptionRequestModelVariant2> createTranscriptionRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createTranscriptionRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createTranscriptionRequestModelVariant2.isPresent) createTranscriptionRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateTranscriptionRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateTranscriptionRequestModel(${toJson()})';
}
