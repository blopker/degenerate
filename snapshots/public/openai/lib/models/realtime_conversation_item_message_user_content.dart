// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The content type (`input_text`, `input_audio`, or `input_image`).
@immutable final class RealtimeConversationItemMessageUserContentType {const RealtimeConversationItemMessageUserContentType._(this.value);

factory RealtimeConversationItemMessageUserContentType.fromJson(String json) { return switch (json) {
  'input_text' => inputText,
  'input_audio' => inputAudio,
  'input_image' => inputImage,
  _ => RealtimeConversationItemMessageUserContentType._(json),
}; }

static const RealtimeConversationItemMessageUserContentType inputText = RealtimeConversationItemMessageUserContentType._('input_text');

static const RealtimeConversationItemMessageUserContentType inputAudio = RealtimeConversationItemMessageUserContentType._('input_audio');

static const RealtimeConversationItemMessageUserContentType inputImage = RealtimeConversationItemMessageUserContentType._('input_image');

static const List<RealtimeConversationItemMessageUserContentType> values = [inputText, inputAudio, inputImage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageUserContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageUserContentType($value)'; } 
 }
/// The detail level of the image (for `input_image`). `auto` will default to `high`.
@immutable final class RealtimeConversationItemMessageUserContentDetail {const RealtimeConversationItemMessageUserContentDetail._(this.value);

factory RealtimeConversationItemMessageUserContentDetail.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'low' => low,
  'high' => high,
  _ => RealtimeConversationItemMessageUserContentDetail._(json),
}; }

static const RealtimeConversationItemMessageUserContentDetail auto = RealtimeConversationItemMessageUserContentDetail._('auto');

static const RealtimeConversationItemMessageUserContentDetail low = RealtimeConversationItemMessageUserContentDetail._('low');

static const RealtimeConversationItemMessageUserContentDetail high = RealtimeConversationItemMessageUserContentDetail._('high');

static const List<RealtimeConversationItemMessageUserContentDetail> values = [auto, low, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageUserContentDetail && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageUserContentDetail($value)'; } 
 }
@immutable final class RealtimeConversationItemMessageUserContent {const RealtimeConversationItemMessageUserContent({this.type, this.text, this.audio, this.imageUrl, this.detail = RealtimeConversationItemMessageUserContentDetail.auto, this.transcript, });

factory RealtimeConversationItemMessageUserContent.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMessageUserContent(
  type: json['type'] != null ? RealtimeConversationItemMessageUserContentType.fromJson(json['type'] as String) : null,
  text: json['text'] as String?,
  audio: json['audio'] as String?,
  imageUrl: json['image_url'] as String?,
  detail: json.containsKey('detail') ? RealtimeConversationItemMessageUserContentDetail.fromJson(json['detail'] as String) : RealtimeConversationItemMessageUserContentDetail.auto,
  transcript: json['transcript'] as String?,
); }

/// The content type (`input_text`, `input_audio`, or `input_image`).
final RealtimeConversationItemMessageUserContentType? type;

/// The text content (for `input_text`).
final String? text;

/// Base64-encoded audio bytes (for `input_audio`), these will be parsed as the format specified in the session input audio type configuration. This defaults to PCM 16-bit 24kHz mono if not specified.
final String? audio;

/// Base64-encoded image bytes (for `input_image`) as a data URI. For example `data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAA...`. Supported formats are PNG and JPEG.
final String? imageUrl;

/// The detail level of the image (for `input_image`). `auto` will default to `high`.
final RealtimeConversationItemMessageUserContentDetail detail;

/// Transcript of the audio (for `input_audio`). This is not sent to the model, but will be attached to the message item for reference.
final String? transcript;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'text': ?text,
  'audio': ?audio,
  'image_url': ?imageUrl,
  'detail': detail.toJson(),
  'transcript': ?transcript,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'text', 'audio', 'image_url', 'detail', 'transcript'}.contains(key)); } 
RealtimeConversationItemMessageUserContent copyWith({RealtimeConversationItemMessageUserContentType Function()? type, String Function()? text, String Function()? audio, String Function()? imageUrl, RealtimeConversationItemMessageUserContentDetail Function()? detail, String Function()? transcript, }) { return RealtimeConversationItemMessageUserContent(
  type: type != null ? type() : this.type,
  text: text != null ? text() : this.text,
  audio: audio != null ? audio() : this.audio,
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  detail: detail != null ? detail() : this.detail,
  transcript: transcript != null ? transcript() : this.transcript,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeConversationItemMessageUserContent &&
          type == other.type &&
          text == other.text &&
          audio == other.audio &&
          imageUrl == other.imageUrl &&
          detail == other.detail &&
          transcript == other.transcript; } 
@override int get hashCode { return Object.hash(type, text, audio, imageUrl, detail, transcript); } 
@override String toString() { return 'RealtimeConversationItemMessageUserContent(type: $type, text: $text, audio: $audio, imageUrl: $imageUrl, detail: $detail, transcript: $transcript)'; } 
 }
