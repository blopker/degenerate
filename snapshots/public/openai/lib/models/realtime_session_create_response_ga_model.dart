// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeSessionCreateResponseGaModelVariant2 {const RealtimeSessionCreateResponseGaModelVariant2._(this.value);

factory RealtimeSessionCreateResponseGaModelVariant2.fromJson(String json) {return switch (json) {
  'gpt-realtime' => gptRealtime,
  'gpt-realtime-1.5' => gptRealtime15,
  'gpt-realtime-2025-08-28' => gptRealtime20250828,
  'gpt-4o-realtime-preview' => gpt4oRealtimePreview,
  'gpt-4o-realtime-preview-2024-10-01' => gpt4oRealtimePreview20241001,
  'gpt-4o-realtime-preview-2024-12-17' => gpt4oRealtimePreview20241217,
  'gpt-4o-realtime-preview-2025-06-03' => gpt4oRealtimePreview20250603,
  'gpt-4o-mini-realtime-preview' => gpt4oMiniRealtimePreview,
  'gpt-4o-mini-realtime-preview-2024-12-17' => gpt4oMiniRealtimePreview20241217,
  'gpt-realtime-mini' => gptRealtimeMini,
  'gpt-realtime-mini-2025-10-06' => gptRealtimeMini20251006,
  'gpt-realtime-mini-2025-12-15' => gptRealtimeMini20251215,
  'gpt-audio-1.5' => gptAudio15,
  'gpt-audio-mini' => gptAudioMini,
  'gpt-audio-mini-2025-10-06' => gptAudioMini20251006,
  'gpt-audio-mini-2025-12-15' => gptAudioMini20251215,
  _ => RealtimeSessionCreateResponseGaModelVariant2._(json),
};}

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtime = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime');

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtime15 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime-1.5');

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtime20250828 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime-2025-08-28');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oRealtimePreview = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-realtime-preview');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oRealtimePreview20241001 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-realtime-preview-2024-10-01');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oRealtimePreview20241217 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-realtime-preview-2024-12-17');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oRealtimePreview20250603 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-realtime-preview-2025-06-03');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oMiniRealtimePreview = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-mini-realtime-preview');

static const RealtimeSessionCreateResponseGaModelVariant2 gpt4oMiniRealtimePreview20241217 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-4o-mini-realtime-preview-2024-12-17');

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtimeMini = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime-mini');

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtimeMini20251006 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime-mini-2025-10-06');

static const RealtimeSessionCreateResponseGaModelVariant2 gptRealtimeMini20251215 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-realtime-mini-2025-12-15');

static const RealtimeSessionCreateResponseGaModelVariant2 gptAudio15 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-audio-1.5');

static const RealtimeSessionCreateResponseGaModelVariant2 gptAudioMini = RealtimeSessionCreateResponseGaModelVariant2._('gpt-audio-mini');

static const RealtimeSessionCreateResponseGaModelVariant2 gptAudioMini20251006 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-audio-mini-2025-10-06');

static const RealtimeSessionCreateResponseGaModelVariant2 gptAudioMini20251215 = RealtimeSessionCreateResponseGaModelVariant2._('gpt-audio-mini-2025-12-15');

static const List<RealtimeSessionCreateResponseGaModelVariant2> values = [gptRealtime, gptRealtime15, gptRealtime20250828, gpt4oRealtimePreview, gpt4oRealtimePreview20241001, gpt4oRealtimePreview20241217, gpt4oRealtimePreview20250603, gpt4oMiniRealtimePreview, gpt4oMiniRealtimePreview20241217, gptRealtimeMini, gptRealtimeMini20251006, gptRealtimeMini20251215, gptAudio15, gptAudioMini, gptAudioMini20251006, gptAudioMini20251215];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimeSessionCreateResponseGaModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimeSessionCreateResponseGaModelVariant2($value)';}
}
/// The Realtime model used for this session.
/// 
@immutable
final class RealtimeSessionCreateResponseGaModel {
  const RealtimeSessionCreateResponseGaModel({this.string = const Omittable.absent(),
this.realtimeSessionCreateResponseGaModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RealtimeSessionCreateResponseGaModel._({required this.rawValue, required this.string,
required this.realtimeSessionCreateResponseGaModelVariant2,});
  factory RealtimeSessionCreateResponseGaModel.fromJson(Object? json) => RealtimeSessionCreateResponseGaModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
realtimeSessionCreateResponseGaModelVariant2: parseAnyOfVariant<RealtimeSessionCreateResponseGaModelVariant2>(json, (value) => RealtimeSessionCreateResponseGaModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<RealtimeSessionCreateResponseGaModelVariant2> realtimeSessionCreateResponseGaModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || realtimeSessionCreateResponseGaModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (realtimeSessionCreateResponseGaModelVariant2.isPresent) realtimeSessionCreateResponseGaModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RealtimeSessionCreateResponseGaModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RealtimeSessionCreateResponseGaModel(${toJson()})';
}
