// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AudioTranscriptionModelVariant2 {const AudioTranscriptionModelVariant2._(this.value);

factory AudioTranscriptionModelVariant2.fromJson(String json) {return switch (json) {
  'whisper-1' => whisper1,
  'gpt-4o-mini-transcribe' => gpt4oMiniTranscribe,
  'gpt-4o-mini-transcribe-2025-12-15' => gpt4oMiniTranscribe20251215,
  'gpt-4o-transcribe' => gpt4oTranscribe,
  'gpt-4o-transcribe-diarize' => gpt4oTranscribeDiarize,
  _ => AudioTranscriptionModelVariant2._(json),
};}

static const AudioTranscriptionModelVariant2 whisper1 = AudioTranscriptionModelVariant2._('whisper-1');

static const AudioTranscriptionModelVariant2 gpt4oMiniTranscribe = AudioTranscriptionModelVariant2._('gpt-4o-mini-transcribe');

static const AudioTranscriptionModelVariant2 gpt4oMiniTranscribe20251215 = AudioTranscriptionModelVariant2._('gpt-4o-mini-transcribe-2025-12-15');

static const AudioTranscriptionModelVariant2 gpt4oTranscribe = AudioTranscriptionModelVariant2._('gpt-4o-transcribe');

static const AudioTranscriptionModelVariant2 gpt4oTranscribeDiarize = AudioTranscriptionModelVariant2._('gpt-4o-transcribe-diarize');

static const List<AudioTranscriptionModelVariant2> values = [whisper1, gpt4oMiniTranscribe, gpt4oMiniTranscribe20251215, gpt4oTranscribe, gpt4oTranscribeDiarize];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AudioTranscriptionModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AudioTranscriptionModelVariant2($value)';}
}
/// The model to use for transcription. Current options are `whisper-1`, `gpt-4o-mini-transcribe`, `gpt-4o-mini-transcribe-2025-12-15`, `gpt-4o-transcribe`, and `gpt-4o-transcribe-diarize`. Use `gpt-4o-transcribe-diarize` when you need diarization with speaker labels.
/// 
@immutable
final class AudioTranscriptionModel {
  const AudioTranscriptionModel({this.string = const Omittable.absent(),
this.audioTranscriptionModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AudioTranscriptionModel._({required this.rawValue, required this.string,
required this.audioTranscriptionModelVariant2,});
  factory AudioTranscriptionModel.fromJson(Object? json) => AudioTranscriptionModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
audioTranscriptionModelVariant2: parseAnyOfVariant<AudioTranscriptionModelVariant2>(json, (value) => AudioTranscriptionModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AudioTranscriptionModelVariant2> audioTranscriptionModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || audioTranscriptionModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (audioTranscriptionModelVariant2.isPresent) audioTranscriptionModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AudioTranscriptionModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AudioTranscriptionModel(${toJson()})';
}
