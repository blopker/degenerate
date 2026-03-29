// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_transcription_response_diarized_json_usage.dart';import 'transcription_diarized_segment.dart';/// The type of task that was run. Always `transcribe`.
final class CreateTranscriptionResponseDiarizedJsonTask {const CreateTranscriptionResponseDiarizedJsonTask._(this.value);

factory CreateTranscriptionResponseDiarizedJsonTask.fromJson(String json) { return switch (json) {
  'transcribe' => transcribe,
  _ => CreateTranscriptionResponseDiarizedJsonTask._(json),
}; }

static const CreateTranscriptionResponseDiarizedJsonTask transcribe = CreateTranscriptionResponseDiarizedJsonTask._('transcribe');

static const List<CreateTranscriptionResponseDiarizedJsonTask> values = [transcribe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseDiarizedJsonTask && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseDiarizedJsonTask($value)'; } 
 }
/// Represents a diarized transcription response returned by the model, including the combined transcript and speaker-segment annotations.
/// 
final class CreateTranscriptionResponseDiarizedJson {const CreateTranscriptionResponseDiarizedJson({required this.task, required this.duration, required this.text, required this.segments, this.usage, });

factory CreateTranscriptionResponseDiarizedJson.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseDiarizedJson(
  task: CreateTranscriptionResponseDiarizedJsonTask.fromJson(json['task'] as String),
  duration: (json['duration'] as num).toDouble(),
  text: json['text'] as String,
  segments: (json['segments'] as List<dynamic>).map((e) => TranscriptionDiarizedSegment.fromJson(e as Map<String, dynamic>)).toList(),
  usage: json['usage'] != null ? CreateTranscriptionResponseDiarizedJsonUsage.fromJson(json['usage'] as Map<String, dynamic>) : null,
); }

/// The type of task that was run. Always `transcribe`.
final CreateTranscriptionResponseDiarizedJsonTask task;

/// Duration of the input audio in seconds.
final double duration;

/// The concatenated transcript text for the entire audio input.
final String text;

/// Segments of the transcript annotated with timestamps and speaker labels.
final List<TranscriptionDiarizedSegment> segments;

/// Token or duration usage statistics for the request.
final CreateTranscriptionResponseDiarizedJsonUsage? usage;

Map<String, dynamic> toJson() { return {
  'task': task.toJson(),
  'duration': duration,
  'text': text,
  'segments': segments.map((e) => e.toJson()).toList(),
  if (usage != null) 'usage': usage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('task') &&
      json.containsKey('duration') && json['duration'] is num &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('segments'); } 
CreateTranscriptionResponseDiarizedJson copyWith({CreateTranscriptionResponseDiarizedJsonTask? task, double? duration, String? text, List<TranscriptionDiarizedSegment>? segments, CreateTranscriptionResponseDiarizedJsonUsage Function()? usage, }) { return CreateTranscriptionResponseDiarizedJson(
  task: task ?? this.task,
  duration: duration ?? this.duration,
  text: text ?? this.text,
  segments: segments ?? this.segments,
  usage: usage != null ? usage() : this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTranscriptionResponseDiarizedJson &&
          task == other.task &&
          duration == other.duration &&
          text == other.text &&
          listEquals(segments, other.segments) &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(task, duration, text, Object.hashAll(segments), usage); } 
@override String toString() { return 'CreateTranscriptionResponseDiarizedJson(task: $task, duration: $duration, text: $text, segments: $segments, usage: $usage)'; } 
 }
