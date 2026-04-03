// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transcription_segment.dart';@immutable final class CreateTranslationResponseVerboseJson {const CreateTranslationResponseVerboseJson({required this.language, required this.duration, required this.text, this.segments, });

factory CreateTranslationResponseVerboseJson.fromJson(Map<String, dynamic> json) { return CreateTranslationResponseVerboseJson(
  language: json['language'] as String,
  duration: (json['duration'] as num).toDouble(),
  text: json['text'] as String,
  segments: (json['segments'] as List<dynamic>?)?.map((e) => TranscriptionSegment.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The language of the output translation (always `english`).
final String language;

/// The duration of the input audio.
final double duration;

/// The translated text.
final String text;

/// Segments of the translated text and their corresponding details.
final List<TranscriptionSegment>? segments;

Map<String, dynamic> toJson() { return {
  'language': language,
  'duration': duration,
  'text': text,
  if (segments != null) 'segments': segments?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('language') && json['language'] is String &&
      json.containsKey('duration') && json['duration'] is num &&
      json.containsKey('text') && json['text'] is String; } 
CreateTranslationResponseVerboseJson copyWith({String? language, double? duration, String? text, List<TranscriptionSegment> Function()? segments, }) { return CreateTranslationResponseVerboseJson(
  language: language ?? this.language,
  duration: duration ?? this.duration,
  text: text ?? this.text,
  segments: segments != null ? segments() : this.segments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTranslationResponseVerboseJson &&
          language == other.language &&
          duration == other.duration &&
          text == other.text &&
          listEquals(segments, other.segments); } 
@override int get hashCode { return Object.hash(language, duration, text, Object.hashAll(segments ?? const [])); } 
@override String toString() { return 'CreateTranslationResponseVerboseJson(language: $language, duration: $duration, text: $text, segments: $segments)'; } 
 }
