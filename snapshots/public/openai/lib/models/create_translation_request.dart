// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_translation_request_model.dart';/// The format of the output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`.
/// 
@immutable final class CreateTranslationRequestResponseFormat {const CreateTranslationRequestResponseFormat._(this.value);

factory CreateTranslationRequestResponseFormat.fromJson(String json) { return switch (json) {
  'json' => $json,
  'text' => text,
  'srt' => srt,
  'verbose_json' => verboseJson,
  'vtt' => vtt,
  _ => CreateTranslationRequestResponseFormat._(json),
}; }

static const CreateTranslationRequestResponseFormat $json = CreateTranslationRequestResponseFormat._('json');

static const CreateTranslationRequestResponseFormat text = CreateTranslationRequestResponseFormat._('text');

static const CreateTranslationRequestResponseFormat srt = CreateTranslationRequestResponseFormat._('srt');

static const CreateTranslationRequestResponseFormat verboseJson = CreateTranslationRequestResponseFormat._('verbose_json');

static const CreateTranslationRequestResponseFormat vtt = CreateTranslationRequestResponseFormat._('vtt');

static const List<CreateTranslationRequestResponseFormat> values = [$json, text, srt, verboseJson, vtt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranslationRequestResponseFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateTranslationRequestResponseFormat($value)'; } 
 }
@immutable final class CreateTranslationRequest {const CreateTranslationRequest({required this.file, required this.model, this.prompt, this.responseFormat = CreateTranslationRequestResponseFormat.$json, this.temperature = 0.0, });

factory CreateTranslationRequest.fromJson(Map<String, dynamic> json) { return CreateTranslationRequest(
  file: base64Decode(json['file'] as String),
  model: OneOf2.parse(json['model'], fromA: (v) => v as String, fromB: (v) => CreateTranslationRequestModelVariant2.fromJson(v as String),),
  prompt: json['prompt'] as String?,
  responseFormat: json.containsKey('response_format') ? CreateTranslationRequestResponseFormat.fromJson(json['response_format'] as String) : CreateTranslationRequestResponseFormat.$json,
  temperature: json.containsKey('temperature') ? (json['temperature'] as num).toDouble() : 0.0,
); }

/// The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.
/// 
final Uint8List file;

/// ID of the model to use. Only `whisper-1` (which is powered by our open source Whisper V2 model) is currently available.
/// 
final CreateTranslationRequestModel model;

/// An optional text to guide the model's style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text#prompting) should be in English.
/// 
final String? prompt;

/// The format of the output, in one of these options: `json`, `text`, `srt`, `verbose_json`, or `vtt`.
/// 
final CreateTranslationRequestResponseFormat responseFormat;

/// The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.
/// 
final double temperature;

Map<String, dynamic> toJson() { return {
  'file': base64Encode(file),
  'model': model.toJson(),
  'prompt': ?prompt,
  'response_format': responseFormat.toJson(),
  'temperature': temperature,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file') &&
      json.containsKey('model'); } 
CreateTranslationRequest copyWith({Uint8List? file, CreateTranslationRequestModel? model, String Function()? prompt, CreateTranslationRequestResponseFormat Function()? responseFormat, double Function()? temperature, }) { return CreateTranslationRequest(
  file: file ?? this.file,
  model: model ?? this.model,
  prompt: prompt != null ? prompt() : this.prompt,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  temperature: temperature != null ? temperature() : this.temperature,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTranslationRequest &&
          file == other.file &&
          model == other.model &&
          prompt == other.prompt &&
          responseFormat == other.responseFormat &&
          temperature == other.temperature; } 
@override int get hashCode { return Object.hash(file, model, prompt, responseFormat, temperature); } 
@override String toString() { return 'CreateTranslationRequest(file: $file, model: $model, prompt: $prompt, responseFormat: $responseFormat, temperature: $temperature)'; } 
 }
