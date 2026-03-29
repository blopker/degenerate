// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transcript_text_usage_duration.dart';import 'transcription_segment.dart';import 'transcription_word.dart';/// Represents a verbose json transcription response returned by model, based on the provided input.
final class CreateTranscriptionResponseVerboseJson {const CreateTranscriptionResponseVerboseJson({required this.language, required this.duration, required this.text, this.words, this.segments, this.usage, });

factory CreateTranscriptionResponseVerboseJson.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseVerboseJson(
  language: json['language'] as String,
  duration: (json['duration'] as num).toDouble(),
  text: json['text'] as String,
  words: (json['words'] as List<dynamic>?)?.map((e) => TranscriptionWord.fromJson(e as Map<String, dynamic>)).toList(),
  segments: (json['segments'] as List<dynamic>?)?.map((e) => TranscriptionSegment.fromJson(e as Map<String, dynamic>)).toList(),
  usage: json['usage'] != null ? TranscriptTextUsageDuration.fromJson(json['usage'] as Map<String, dynamic>) : null,
); }

/// The language of the input audio.
final String language;

/// The duration of the input audio.
final double duration;

/// The transcribed text.
final String text;

/// Extracted words and their corresponding timestamps.
final List<TranscriptionWord>? words;

/// Segments of the transcribed text and their corresponding details.
final List<TranscriptionSegment>? segments;

final TranscriptTextUsageDuration? usage;

Map<String, dynamic> toJson() { return {
  'language': language,
  'duration': duration,
  'text': text,
  if (words != null) 'words': words?.map((e) => e.toJson()).toList(),
  if (segments != null) 'segments': segments?.map((e) => e.toJson()).toList(),
  if (usage != null) 'usage': usage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('language') && json['language'] is String &&
      json.containsKey('duration') && json['duration'] is num &&
      json.containsKey('text') && json['text'] is String; } 
CreateTranscriptionResponseVerboseJson copyWith({String? language, double? duration, String? text, List<TranscriptionWord> Function()? words, List<TranscriptionSegment> Function()? segments, TranscriptTextUsageDuration Function()? usage, }) { return CreateTranscriptionResponseVerboseJson(
  language: language ?? this.language,
  duration: duration ?? this.duration,
  text: text ?? this.text,
  words: words != null ? words() : this.words,
  segments: segments != null ? segments() : this.segments,
  usage: usage != null ? usage() : this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTranscriptionResponseVerboseJson &&
          language == other.language &&
          duration == other.duration &&
          text == other.text &&
          listEquals(words, other.words) &&
          listEquals(segments, other.segments) &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(language, duration, text, Object.hashAll(words ?? const []), Object.hashAll(segments ?? const []), usage); } 
@override String toString() { return 'CreateTranscriptionResponseVerboseJson(language: $language, duration: $duration, text: $text, words: $words, segments: $segments, usage: $usage)'; } 
 }
