// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'voice_ids_or_custom_voice.dart';import 'voice_ids_or_custom_voice_variant2.dart';import 'voice_ids_shared.dart';/// Specifies the output audio format. Must be one of `wav`, `mp3`, `flac`,
/// `opus`, or `pcm16`.
/// 
final class CreateChatCompletionRequestAudioFormat {const CreateChatCompletionRequestAudioFormat._(this.value);

factory CreateChatCompletionRequestAudioFormat.fromJson(String json) { return switch (json) {
  'wav' => wav,
  'aac' => aac,
  'mp3' => mp3,
  'flac' => flac,
  'opus' => opus,
  'pcm16' => pcm16,
  _ => CreateChatCompletionRequestAudioFormat._(json),
}; }

static const CreateChatCompletionRequestAudioFormat wav = CreateChatCompletionRequestAudioFormat._('wav');

static const CreateChatCompletionRequestAudioFormat aac = CreateChatCompletionRequestAudioFormat._('aac');

static const CreateChatCompletionRequestAudioFormat mp3 = CreateChatCompletionRequestAudioFormat._('mp3');

static const CreateChatCompletionRequestAudioFormat flac = CreateChatCompletionRequestAudioFormat._('flac');

static const CreateChatCompletionRequestAudioFormat opus = CreateChatCompletionRequestAudioFormat._('opus');

static const CreateChatCompletionRequestAudioFormat pcm16 = CreateChatCompletionRequestAudioFormat._('pcm16');

static const List<CreateChatCompletionRequestAudioFormat> values = [wav, aac, mp3, flac, opus, pcm16];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestAudioFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestAudioFormat($value)'; } 
 }
/// Parameters for audio output. Required when audio output is requested with
/// `modalities: ["audio"]`. [Learn more](/docs/guides/audio).
/// 
final class CreateChatCompletionRequestAudio {const CreateChatCompletionRequestAudio({required this.voice, required this.format, });

factory CreateChatCompletionRequestAudio.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestAudio(
  voice: OneOf2.parse(json['voice'], fromA: (v) => OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => VoiceIdsSharedVariant2.fromJson(v as String),), fromB: (v) => VoiceIdsOrCustomVoiceVariant2.fromJson(v as Map<String, dynamic>),),
  format: CreateChatCompletionRequestAudioFormat.fromJson(json['format'] as String),
); }

/// The voice the model uses to respond. Supported built-in voices are
/// `alloy`, `ash`, `ballad`, `coral`, `echo`, `fable`, `nova`, `onyx`,
/// `sage`, `shimmer`, `marin`, and `cedar`. You may also provide a
/// custom voice object with an `id`, for example `{ "id": "voice_1234" }`.
/// 
final VoiceIdsOrCustomVoice voice;

/// Specifies the output audio format. Must be one of `wav`, `mp3`, `flac`,
/// `opus`, or `pcm16`.
/// 
final CreateChatCompletionRequestAudioFormat format;

Map<String, dynamic> toJson() { return {
  'voice': voice.toJson(),
  'format': format.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('voice') &&
      json.containsKey('format'); } 
CreateChatCompletionRequestAudio copyWith({VoiceIdsOrCustomVoice? voice, CreateChatCompletionRequestAudioFormat? format, }) { return CreateChatCompletionRequestAudio(
  voice: voice ?? this.voice,
  format: format ?? this.format,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionRequestAudio &&
          voice == other.voice &&
          format == other.format; } 
@override int get hashCode { return Object.hash(voice, format); } 
@override String toString() { return 'CreateChatCompletionRequestAudio(voice: $voice, format: $format)'; } 
 }
