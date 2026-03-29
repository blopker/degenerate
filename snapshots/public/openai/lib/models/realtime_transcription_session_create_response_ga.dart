// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_transcription_session_create_response_ga_audio.dart';/// The type of session. Always `transcription` for transcription sessions.
/// 
final class RealtimeTranscriptionSessionCreateResponseGaType {const RealtimeTranscriptionSessionCreateResponseGaType._(this.value);

factory RealtimeTranscriptionSessionCreateResponseGaType.fromJson(String json) { return switch (json) {
  'transcription' => transcription,
  _ => RealtimeTranscriptionSessionCreateResponseGaType._(json),
}; }

static const RealtimeTranscriptionSessionCreateResponseGaType transcription = RealtimeTranscriptionSessionCreateResponseGaType._('transcription');

static const List<RealtimeTranscriptionSessionCreateResponseGaType> values = [transcription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionSessionCreateResponseGaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGaType($value)'; } 
 }
final class RealtimeTranscriptionSessionCreateResponseGaInclude {const RealtimeTranscriptionSessionCreateResponseGaInclude._(this.value);

factory RealtimeTranscriptionSessionCreateResponseGaInclude.fromJson(String json) { return switch (json) {
  'item.input_audio_transcription.logprobs' => itemInputAudioTranscriptionLogprobs,
  _ => RealtimeTranscriptionSessionCreateResponseGaInclude._(json),
}; }

static const RealtimeTranscriptionSessionCreateResponseGaInclude itemInputAudioTranscriptionLogprobs = RealtimeTranscriptionSessionCreateResponseGaInclude._('item.input_audio_transcription.logprobs');

static const List<RealtimeTranscriptionSessionCreateResponseGaInclude> values = [itemInputAudioTranscriptionLogprobs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionSessionCreateResponseGaInclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGaInclude($value)'; } 
 }
/// A Realtime transcription session configuration object.
/// 
final class RealtimeTranscriptionSessionCreateResponseGa {const RealtimeTranscriptionSessionCreateResponseGa({required this.type, required this.id, required this.object, this.expiresAt, this.include, this.audio, });

factory RealtimeTranscriptionSessionCreateResponseGa.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateResponseGa(
  type: RealtimeTranscriptionSessionCreateResponseGaType.fromJson(json['type'] as String),
  id: json['id'] as String,
  object: json['object'] as String,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => RealtimeTranscriptionSessionCreateResponseGaInclude.fromJson(e as String)).toList(),
  audio: json['audio'] != null ? RealtimeTranscriptionSessionCreateResponseGaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
); }

/// The type of session. Always `transcription` for transcription sessions.
/// 
final RealtimeTranscriptionSessionCreateResponseGaType type;

/// Unique identifier for the session that looks like `sess_1234567890abcdef`.
/// 
final String id;

/// The object type. Always `realtime.transcription_session`.
final String object;

/// Expiration timestamp for the session, in seconds since epoch.
final int? expiresAt;

/// Additional fields to include in server outputs.
/// - `item.input_audio_transcription.logprobs`: Include logprobs for input audio transcription.
/// 
final List<RealtimeTranscriptionSessionCreateResponseGaInclude>? include;

/// Configuration for input audio for the session.
/// 
final RealtimeTranscriptionSessionCreateResponseGaAudio? audio;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'id': id,
  'object': object,
  'expires_at': ?expiresAt,
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  if (audio != null) 'audio': audio?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') && json['object'] is String; } 
RealtimeTranscriptionSessionCreateResponseGa copyWith({RealtimeTranscriptionSessionCreateResponseGaType? type, String? id, String? object, int Function()? expiresAt, List<RealtimeTranscriptionSessionCreateResponseGaInclude> Function()? include, RealtimeTranscriptionSessionCreateResponseGaAudio Function()? audio, }) { return RealtimeTranscriptionSessionCreateResponseGa(
  type: type ?? this.type,
  id: id ?? this.id,
  object: object ?? this.object,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  include: include != null ? include() : this.include,
  audio: audio != null ? audio() : this.audio,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateResponseGa &&
          type == other.type &&
          id == other.id &&
          object == other.object &&
          expiresAt == other.expiresAt &&
          listEquals(include, other.include) &&
          audio == other.audio; } 
@override int get hashCode { return Object.hash(type, id, object, expiresAt, Object.hashAll(include ?? const []), audio); } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGa(type: $type, id: $id, object: $object, expiresAt: $expiresAt, include: $include, audio: $audio)'; } 
 }
