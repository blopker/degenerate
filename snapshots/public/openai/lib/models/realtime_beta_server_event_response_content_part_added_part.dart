// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The content type ("text", "audio").
@immutable final class RealtimeBetaServerEventResponseContentPartAddedPartType {const RealtimeBetaServerEventResponseContentPartAddedPartType._(this.value);

factory RealtimeBetaServerEventResponseContentPartAddedPartType.fromJson(String json) { return switch (json) {
  'audio' => audio,
  'text' => text,
  _ => RealtimeBetaServerEventResponseContentPartAddedPartType._(json),
}; }

static const RealtimeBetaServerEventResponseContentPartAddedPartType audio = RealtimeBetaServerEventResponseContentPartAddedPartType._('audio');

static const RealtimeBetaServerEventResponseContentPartAddedPartType text = RealtimeBetaServerEventResponseContentPartAddedPartType._('text');

static const List<RealtimeBetaServerEventResponseContentPartAddedPartType> values = [audio, text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventResponseContentPartAddedPartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventResponseContentPartAddedPartType($value)'; } 
 }
/// The content part that was added.
@immutable final class RealtimeBetaServerEventResponseContentPartAddedPart {const RealtimeBetaServerEventResponseContentPartAddedPart({this.type, this.text, this.audio, this.transcript, });

factory RealtimeBetaServerEventResponseContentPartAddedPart.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventResponseContentPartAddedPart(
  type: json['type'] != null ? RealtimeBetaServerEventResponseContentPartAddedPartType.fromJson(json['type'] as String) : null,
  text: json['text'] as String?,
  audio: json['audio'] as String?,
  transcript: json['transcript'] as String?,
); }

/// The content type ("text", "audio").
final RealtimeBetaServerEventResponseContentPartAddedPartType? type;

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
RealtimeBetaServerEventResponseContentPartAddedPart copyWith({RealtimeBetaServerEventResponseContentPartAddedPartType Function()? type, String Function()? text, String Function()? audio, String Function()? transcript, }) { return RealtimeBetaServerEventResponseContentPartAddedPart(
  type: type != null ? type() : this.type,
  text: text != null ? text() : this.text,
  audio: audio != null ? audio() : this.audio,
  transcript: transcript != null ? transcript() : this.transcript,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventResponseContentPartAddedPart &&
          type == other.type &&
          text == other.text &&
          audio == other.audio &&
          transcript == other.transcript; } 
@override int get hashCode { return Object.hash(type, text, audio, transcript); } 
@override String toString() { return 'RealtimeBetaServerEventResponseContentPartAddedPart(type: $type, text: $text, audio: $audio, transcript: $transcript)'; } 
 }
