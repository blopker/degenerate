// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_transcription_session_create_request_ga_audio.dart';/// The type of session to create. Always `transcription` for transcription sessions.
/// 
@immutable final class RealtimeTranscriptionSessionCreateRequestGaType {const RealtimeTranscriptionSessionCreateRequestGaType._(this.value);

factory RealtimeTranscriptionSessionCreateRequestGaType.fromJson(String json) { return switch (json) {
  'transcription' => transcription,
  _ => RealtimeTranscriptionSessionCreateRequestGaType._(json),
}; }

static const RealtimeTranscriptionSessionCreateRequestGaType transcription = RealtimeTranscriptionSessionCreateRequestGaType._('transcription');

static const List<RealtimeTranscriptionSessionCreateRequestGaType> values = [transcription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionSessionCreateRequestGaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateRequestGaType($value)'; } 
 }
@immutable final class RealtimeTranscriptionSessionCreateRequestGaInclude {const RealtimeTranscriptionSessionCreateRequestGaInclude._(this.value);

factory RealtimeTranscriptionSessionCreateRequestGaInclude.fromJson(String json) { return switch (json) {
  'item.input_audio_transcription.logprobs' => itemInputAudioTranscriptionLogprobs,
  _ => RealtimeTranscriptionSessionCreateRequestGaInclude._(json),
}; }

static const RealtimeTranscriptionSessionCreateRequestGaInclude itemInputAudioTranscriptionLogprobs = RealtimeTranscriptionSessionCreateRequestGaInclude._('item.input_audio_transcription.logprobs');

static const List<RealtimeTranscriptionSessionCreateRequestGaInclude> values = [itemInputAudioTranscriptionLogprobs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionSessionCreateRequestGaInclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateRequestGaInclude($value)'; } 
 }
/// Realtime transcription session object configuration.
@immutable final class RealtimeTranscriptionSessionCreateRequestGa {const RealtimeTranscriptionSessionCreateRequestGa({required this.type, this.audio, this.include, });

factory RealtimeTranscriptionSessionCreateRequestGa.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateRequestGa(
  type: RealtimeTranscriptionSessionCreateRequestGaType.fromJson(json['type'] as String),
  audio: json['audio'] != null ? RealtimeTranscriptionSessionCreateRequestGaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => RealtimeTranscriptionSessionCreateRequestGaInclude.fromJson(e as String)).toList(),
); }

/// The type of session to create. Always `transcription` for transcription sessions.
/// 
final RealtimeTranscriptionSessionCreateRequestGaType type;

/// Configuration for input and output audio.
/// 
final RealtimeTranscriptionSessionCreateRequestGaAudio? audio;

/// Additional fields to include in server outputs.
/// 
/// `item.input_audio_transcription.logprobs`: Include logprobs for input audio transcription.
/// 
final List<RealtimeTranscriptionSessionCreateRequestGaInclude>? include;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (audio != null) 'audio': audio?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeTranscriptionSessionCreateRequestGa copyWith({RealtimeTranscriptionSessionCreateRequestGaType? type, RealtimeTranscriptionSessionCreateRequestGaAudio Function()? audio, List<RealtimeTranscriptionSessionCreateRequestGaInclude> Function()? include, }) { return RealtimeTranscriptionSessionCreateRequestGa(
  type: type ?? this.type,
  audio: audio != null ? audio() : this.audio,
  include: include != null ? include() : this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateRequestGa &&
          type == other.type &&
          audio == other.audio &&
          listEquals(include, other.include); } 
@override int get hashCode { return Object.hash(type, audio, Object.hashAll(include ?? const [])); } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateRequestGa(type: $type, audio: $audio, include: $include)'; } 
 }
