// GENERATED CODE - DO NOT MODIFY BY HAND

/// The content type ("text", "audio").
final class RealtimeServerEventResponseContentPartDonePartType {const RealtimeServerEventResponseContentPartDonePartType._(this.value);

factory RealtimeServerEventResponseContentPartDonePartType.fromJson(String json) { return switch (json) {
  'audio' => audio,
  'text' => text,
  _ => RealtimeServerEventResponseContentPartDonePartType._(json),
}; }

static const RealtimeServerEventResponseContentPartDonePartType audio = RealtimeServerEventResponseContentPartDonePartType._('audio');

static const RealtimeServerEventResponseContentPartDonePartType text = RealtimeServerEventResponseContentPartDonePartType._('text');

static const List<RealtimeServerEventResponseContentPartDonePartType> values = [audio, text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseContentPartDonePartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseContentPartDonePartType($value)'; } 
 }
/// The content part that is done.
final class RealtimeServerEventResponseContentPartDonePart {const RealtimeServerEventResponseContentPartDonePart({this.type, this.text, this.audio, this.transcript, });

factory RealtimeServerEventResponseContentPartDonePart.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseContentPartDonePart(
  type: json['type'] != null ? RealtimeServerEventResponseContentPartDonePartType.fromJson(json['type'] as String) : null,
  text: json['text'] as String?,
  audio: json['audio'] as String?,
  transcript: json['transcript'] as String?,
); }

/// The content type ("text", "audio").
final RealtimeServerEventResponseContentPartDonePartType? type;

/// The text content (if type is "text").
final String? text;

/// Base64-encoded audio data (if type is "audio").
final String? audio;

/// The transcript of the audio (if type is "audio").
final String? transcript;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'text': ?text,
  'audio': ?audio,
  'transcript': ?transcript,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'text', 'audio', 'transcript'}.contains(key)); } 
RealtimeServerEventResponseContentPartDonePart copyWith({RealtimeServerEventResponseContentPartDonePartType Function()? type, String Function()? text, String Function()? audio, String Function()? transcript, }) { return RealtimeServerEventResponseContentPartDonePart(
  type: type != null ? type() : this.type,
  text: text != null ? text() : this.text,
  audio: audio != null ? audio() : this.audio,
  transcript: transcript != null ? transcript() : this.transcript,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventResponseContentPartDonePart &&
          type == other.type &&
          text == other.text &&
          audio == other.audio &&
          transcript == other.transcript; } 
@override int get hashCode { return Object.hash(type, text, audio, transcript); } 
@override String toString() { return 'RealtimeServerEventResponseContentPartDonePart(type: $type, text: $text, audio: $audio, transcript: $transcript)'; } 
 }
