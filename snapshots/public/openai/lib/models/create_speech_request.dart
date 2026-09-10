// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_speech_request_model.dart';import 'voice_ids_or_custom_voice.dart';/// The format to audio in. Supported formats are `mp3`, `opus`, `aac`, `flac`, `wav`, and `pcm`.
@immutable final class CreateSpeechRequestResponseFormat {const CreateSpeechRequestResponseFormat._(this.value);

factory CreateSpeechRequestResponseFormat.fromJson(String json) {return switch (json) {
  'mp3' => mp3,
  'opus' => opus,
  'aac' => aac,
  'flac' => flac,
  'wav' => wav,
  'pcm' => pcm,
  _ => CreateSpeechRequestResponseFormat._(json),
};}

static const CreateSpeechRequestResponseFormat mp3 = CreateSpeechRequestResponseFormat._('mp3');

static const CreateSpeechRequestResponseFormat opus = CreateSpeechRequestResponseFormat._('opus');

static const CreateSpeechRequestResponseFormat aac = CreateSpeechRequestResponseFormat._('aac');

static const CreateSpeechRequestResponseFormat flac = CreateSpeechRequestResponseFormat._('flac');

static const CreateSpeechRequestResponseFormat wav = CreateSpeechRequestResponseFormat._('wav');

static const CreateSpeechRequestResponseFormat pcm = CreateSpeechRequestResponseFormat._('pcm');

static const List<CreateSpeechRequestResponseFormat> values = [mp3, opus, aac, flac, wav, pcm];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateSpeechRequestResponseFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateSpeechRequestResponseFormat($value)';}
}
/// The format to stream the audio in. Supported formats are `sse` and `audio`. `sse` is not supported for `tts-1` or `tts-1-hd`.
@immutable final class CreateSpeechRequestStreamFormat {const CreateSpeechRequestStreamFormat._(this.value);

factory CreateSpeechRequestStreamFormat.fromJson(String json) {return switch (json) {
  'sse' => sse,
  'audio' => audio,
  _ => CreateSpeechRequestStreamFormat._(json),
};}

static const CreateSpeechRequestStreamFormat sse = CreateSpeechRequestStreamFormat._('sse');

static const CreateSpeechRequestStreamFormat audio = CreateSpeechRequestStreamFormat._('audio');

static const List<CreateSpeechRequestStreamFormat> values = [sse, audio];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateSpeechRequestStreamFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateSpeechRequestStreamFormat($value)';}
}
@immutable final class CreateSpeechRequest {const CreateSpeechRequest({required this.model, required this.input, required this.voice, this.instructions, this.responseFormat, this.speed, this.streamFormat, });

factory CreateSpeechRequest.fromJson(Map<String, dynamic> json) {return CreateSpeechRequest(
  model: CreateSpeechRequestModel.fromJson(json['model']),
  input: json['input'] as String,
  instructions: json['instructions'] as String?,
  voice: VoiceIdsOrCustomVoice.fromJson(json['voice']),
  responseFormat: json['response_format'] != null ? CreateSpeechRequestResponseFormat.fromJson(json['response_format'] as String) : null,
  speed: json['speed'] != null ? (json['speed'] as num).toDouble() : null,
  streamFormat: json['stream_format'] != null ? CreateSpeechRequestStreamFormat.fromJson(json['stream_format'] as String) : null,
);}

/// One of the available [TTS models](/docs/models#tts): `tts-1`, `tts-1-hd`, `gpt-4o-mini-tts`, or `gpt-4o-mini-tts-2025-12-15`.
/// 
final CreateSpeechRequestModel model;

/// The text to generate audio for. The maximum length is 4096 characters.
final String input;

/// Control the voice of your generated audio with additional instructions. Does not work with `tts-1` or `tts-1-hd`.
final String? instructions;

/// The voice to use when generating the audio. Supported built-in voices are `alloy`, `ash`, `ballad`, `coral`, `echo`, `fable`, `onyx`, `nova`, `sage`, `shimmer`, `verse`, `marin`, and `cedar`. You may also provide a custom voice object with an `id`, for example `{ "id": "voice_1234" }`. Previews of the voices are available in the [Text to speech guide](/docs/guides/text-to-speech#voice-options).
final VoiceIdsOrCustomVoice voice;

/// The format to audio in. Supported formats are `mp3`, `opus`, `aac`, `flac`, `wav`, and `pcm`.
final CreateSpeechRequestResponseFormat? responseFormat;

/// The speed of the generated audio. Select a value from `0.25` to `4.0`. `1.0` is the default.
final double? speed;

/// The format to stream the audio in. Supported formats are `sse` and `audio`. `sse` is not supported for `tts-1` or `tts-1-hd`.
final CreateSpeechRequestStreamFormat? streamFormat;

/// The value with the schema default applied when absent.
CreateSpeechRequestResponseFormat get responseFormatOrDefault {return responseFormat ?? CreateSpeechRequestResponseFormat.fromJson('mp3');}
/// The value with the schema default applied when absent.
double get speedOrDefault {return speed ?? 1.0;}
/// The value with the schema default applied when absent.
CreateSpeechRequestStreamFormat get streamFormatOrDefault {return streamFormat ?? CreateSpeechRequestStreamFormat.fromJson('audio');}
Map<String, dynamic> toJson() {return {
  'model': model.toJson(),
  'input': input,
  'instructions': ?instructions,
  'voice': voice.toJson(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  'speed': ?speed,
  if (streamFormat != null) 'stream_format': streamFormat?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('model') &&
      json.containsKey('input') && json['input'] is String &&
      json.containsKey('voice');}
CreateSpeechRequest copyWith({CreateSpeechRequestModel? model, String? input, String? Function()? instructions, VoiceIdsOrCustomVoice? voice, CreateSpeechRequestResponseFormat? Function()? responseFormat, double? Function()? speed, CreateSpeechRequestStreamFormat? Function()? streamFormat, }) {return CreateSpeechRequest(
  model: model ?? this.model,
  input: input ?? this.input,
  instructions: instructions != null ? instructions() : this.instructions,
  voice: voice ?? this.voice,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  speed: speed != null ? speed() : this.speed,
  streamFormat: streamFormat != null ? streamFormat() : this.streamFormat,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CreateSpeechRequest &&
          model == other.model &&
          input == other.input &&
          instructions == other.instructions &&
          voice == other.voice &&
          responseFormat == other.responseFormat &&
          speed == other.speed &&
          streamFormat == other.streamFormat;}
@override int get hashCode {return Object.hash(model, input, instructions, voice, responseFormat, speed, streamFormat);}
@override String toString() {return 'CreateSpeechRequest(model: $model, input: $input, instructions: $instructions, voice: $voice, responseFormat: $responseFormat, speed: $speed, streamFormat: $streamFormat)';}
}
