// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vad_config.dart';/// Automatically set chunking parameters based on the audio. Must be set to `"auto"`.
/// 
@immutable final class CreateTranscriptionRequestChunkingStrategyVariant1 {const CreateTranscriptionRequestChunkingStrategyVariant1._(this.value);

factory CreateTranscriptionRequestChunkingStrategyVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => CreateTranscriptionRequestChunkingStrategyVariant1._(json),
}; }

static const CreateTranscriptionRequestChunkingStrategyVariant1 auto = CreateTranscriptionRequestChunkingStrategyVariant1._('auto');

static const List<CreateTranscriptionRequestChunkingStrategyVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionRequestChunkingStrategyVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateTranscriptionRequestChunkingStrategyVariant1($value)'; } 
 }
/// Controls how the audio is cut into chunks. When set to `"auto"`, the server first normalizes loudness and then uses voice activity detection (VAD) to choose boundaries. `server_vad` object can be provided to tweak VAD detection parameters manually. If unset, the audio is transcribed as a single block. Required when using `gpt-4o-transcribe-diarize` for inputs longer than 30 seconds.
@immutable
final class CreateTranscriptionRequestChunkingStrategy {
  const CreateTranscriptionRequestChunkingStrategy({this.createTranscriptionRequestChunkingStrategyVariant1 = const Omittable.absent(),
this.vadConfig = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateTranscriptionRequestChunkingStrategy._({required this.rawValue, required this.createTranscriptionRequestChunkingStrategyVariant1,
required this.vadConfig,});
  factory CreateTranscriptionRequestChunkingStrategy.fromJson(Object? json) => CreateTranscriptionRequestChunkingStrategy._(
    rawValue: Omittable(json),
    createTranscriptionRequestChunkingStrategyVariant1: parseAnyOfVariant<CreateTranscriptionRequestChunkingStrategyVariant1>(json, (value) => CreateTranscriptionRequestChunkingStrategyVariant1.fromJson(value! as String)),
vadConfig: parseAnyOfVariant<VadConfig>(json, (value) => VadConfig.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CreateTranscriptionRequestChunkingStrategyVariant1> createTranscriptionRequestChunkingStrategyVariant1;
final Omittable<VadConfig> vadConfig;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || createTranscriptionRequestChunkingStrategyVariant1.isPresent || vadConfig.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (createTranscriptionRequestChunkingStrategyVariant1.isPresent) createTranscriptionRequestChunkingStrategyVariant1.value?.toJson(),
if (vadConfig.isPresent) vadConfig.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateTranscriptionRequestChunkingStrategy && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateTranscriptionRequestChunkingStrategy(${toJson()})';
}
