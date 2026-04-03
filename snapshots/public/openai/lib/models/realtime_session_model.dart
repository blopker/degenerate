// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeSessionModelVariant2 {const RealtimeSessionModelVariant2._(this.value);

factory RealtimeSessionModelVariant2.fromJson(String json) { return switch (json) {
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
  _ => RealtimeSessionModelVariant2._(json),
}; }

static const RealtimeSessionModelVariant2 gptRealtime = RealtimeSessionModelVariant2._('gpt-realtime');

static const RealtimeSessionModelVariant2 gptRealtime15 = RealtimeSessionModelVariant2._('gpt-realtime-1.5');

static const RealtimeSessionModelVariant2 gptRealtime20250828 = RealtimeSessionModelVariant2._('gpt-realtime-2025-08-28');

static const RealtimeSessionModelVariant2 gpt4oRealtimePreview = RealtimeSessionModelVariant2._('gpt-4o-realtime-preview');

static const RealtimeSessionModelVariant2 gpt4oRealtimePreview20241001 = RealtimeSessionModelVariant2._('gpt-4o-realtime-preview-2024-10-01');

static const RealtimeSessionModelVariant2 gpt4oRealtimePreview20241217 = RealtimeSessionModelVariant2._('gpt-4o-realtime-preview-2024-12-17');

static const RealtimeSessionModelVariant2 gpt4oRealtimePreview20250603 = RealtimeSessionModelVariant2._('gpt-4o-realtime-preview-2025-06-03');

static const RealtimeSessionModelVariant2 gpt4oMiniRealtimePreview = RealtimeSessionModelVariant2._('gpt-4o-mini-realtime-preview');

static const RealtimeSessionModelVariant2 gpt4oMiniRealtimePreview20241217 = RealtimeSessionModelVariant2._('gpt-4o-mini-realtime-preview-2024-12-17');

static const RealtimeSessionModelVariant2 gptRealtimeMini = RealtimeSessionModelVariant2._('gpt-realtime-mini');

static const RealtimeSessionModelVariant2 gptRealtimeMini20251006 = RealtimeSessionModelVariant2._('gpt-realtime-mini-2025-10-06');

static const RealtimeSessionModelVariant2 gptRealtimeMini20251215 = RealtimeSessionModelVariant2._('gpt-realtime-mini-2025-12-15');

static const RealtimeSessionModelVariant2 gptAudio15 = RealtimeSessionModelVariant2._('gpt-audio-1.5');

static const RealtimeSessionModelVariant2 gptAudioMini = RealtimeSessionModelVariant2._('gpt-audio-mini');

static const RealtimeSessionModelVariant2 gptAudioMini20251006 = RealtimeSessionModelVariant2._('gpt-audio-mini-2025-10-06');

static const RealtimeSessionModelVariant2 gptAudioMini20251215 = RealtimeSessionModelVariant2._('gpt-audio-mini-2025-12-15');

static const List<RealtimeSessionModelVariant2> values = [gptRealtime, gptRealtime15, gptRealtime20250828, gpt4oRealtimePreview, gpt4oRealtimePreview20241001, gpt4oRealtimePreview20241217, gpt4oRealtimePreview20250603, gpt4oMiniRealtimePreview, gpt4oMiniRealtimePreview20241217, gptRealtimeMini, gptRealtimeMini20251006, gptRealtimeMini20251215, gptAudio15, gptAudioMini, gptAudioMini20251006, gptAudioMini20251215];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeSessionModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeSessionModelVariant2($value)'; } 
 }
typedef RealtimeSessionModel = OneOf2<String,RealtimeSessionModelVariant2>;
