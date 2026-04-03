// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_audio_variant1_voice.dart';import 'messages51_audio_variant1_voice_variant2.dart';@immutable final class Messages51AudioVariant1Format {const Messages51AudioVariant1Format._(this.value);

factory Messages51AudioVariant1Format.fromJson(String json) { return switch (json) {
  'wav' => wav,
  'aac' => aac,
  'mp3' => mp3,
  'flac' => flac,
  'opus' => opus,
  'pcm16' => pcm16,
  _ => Messages51AudioVariant1Format._(json),
}; }

static const Messages51AudioVariant1Format wav = Messages51AudioVariant1Format._('wav');

static const Messages51AudioVariant1Format aac = Messages51AudioVariant1Format._('aac');

static const Messages51AudioVariant1Format mp3 = Messages51AudioVariant1Format._('mp3');

static const Messages51AudioVariant1Format flac = Messages51AudioVariant1Format._('flac');

static const Messages51AudioVariant1Format opus = Messages51AudioVariant1Format._('opus');

static const Messages51AudioVariant1Format pcm16 = Messages51AudioVariant1Format._('pcm16');

static const List<Messages51AudioVariant1Format> values = [wav, aac, mp3, flac, opus, pcm16];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51AudioVariant1Format && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51AudioVariant1Format($value)'; } 
 }
/// Parameters for audio output. Required when modalities includes 'audio'.
@immutable final class Messages51AudioVariant1 {const Messages51AudioVariant1({required this.format, required this.voice, });

factory Messages51AudioVariant1.fromJson(Map<String, dynamic> json) { return Messages51AudioVariant1(
  format: Messages51AudioVariant1Format.fromJson(json['format'] as String),
  voice: OneOf2.parse(json['voice'], fromA: (v) => v as String, fromB: (v) => Messages51AudioVariant1VoiceVariant2.fromJson(v as Map<String, dynamic>),),
); }

final Messages51AudioVariant1Format format;

final Messages51AudioVariant1Voice voice;

Map<String, dynamic> toJson() { return {
  'format': format.toJson(),
  'voice': voice.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('format') &&
      json.containsKey('voice'); } 
Messages51AudioVariant1 copyWith({Messages51AudioVariant1Format? format, Messages51AudioVariant1Voice? voice, }) { return Messages51AudioVariant1(
  format: format ?? this.format,
  voice: voice ?? this.voice,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51AudioVariant1 &&
          format == other.format &&
          voice == other.voice; } 
@override int get hashCode { return Object.hash(format, voice); } 
@override String toString() { return 'Messages51AudioVariant1(format: $format, voice: $voice)'; } 
 }
