// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transcript_text_done_event_logprobs.dart';import 'transcript_text_usage_tokens.dart';/// The type of the event. Always `transcript.text.done`.
/// 
@immutable final class TranscriptTextDoneEventType {const TranscriptTextDoneEventType._(this.value);

factory TranscriptTextDoneEventType.fromJson(String json) { return switch (json) {
  'transcript.text.done' => transcriptTextDone,
  _ => TranscriptTextDoneEventType._(json),
}; }

static const TranscriptTextDoneEventType transcriptTextDone = TranscriptTextDoneEventType._('transcript.text.done');

static const List<TranscriptTextDoneEventType> values = [transcriptTextDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TranscriptTextDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TranscriptTextDoneEventType($value)'; } 
 }
/// Emitted when the transcription is complete. Contains the complete transcription text. Only emitted when you [create a transcription](/docs/api-reference/audio/create-transcription) with the `Stream` parameter set to `true`.
@immutable final class TranscriptTextDoneEvent {const TranscriptTextDoneEvent({required this.type, required this.text, this.logprobs, this.usage, });

factory TranscriptTextDoneEvent.fromJson(Map<String, dynamic> json) { return TranscriptTextDoneEvent(
  type: TranscriptTextDoneEventType.fromJson(json['type'] as String),
  text: json['text'] as String,
  logprobs: (json['logprobs'] as List<dynamic>?)?.map((e) => TranscriptTextDoneEventLogprobs.fromJson(e as Map<String, dynamic>)).toList(),
  usage: json['usage'] != null ? TranscriptTextUsageTokens.fromJson(json['usage'] as Map<String, dynamic>) : null,
); }

/// The type of the event. Always `transcript.text.done`.
/// 
final TranscriptTextDoneEventType type;

/// The text that was transcribed.
/// 
final String text;

/// The log probabilities of the individual tokens in the transcription. Only included if you [create a transcription](/docs/api-reference/audio/create-transcription) with the `include[]` parameter set to `logprobs`.
/// 
final List<TranscriptTextDoneEventLogprobs>? logprobs;

final TranscriptTextUsageTokens? usage;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
  if (logprobs != null) 'logprobs': logprobs?.map((e) => e.toJson()).toList(),
  if (usage != null) 'usage': usage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String; } 
TranscriptTextDoneEvent copyWith({TranscriptTextDoneEventType? type, String? text, List<TranscriptTextDoneEventLogprobs> Function()? logprobs, TranscriptTextUsageTokens Function()? usage, }) { return TranscriptTextDoneEvent(
  type: type ?? this.type,
  text: text ?? this.text,
  logprobs: logprobs != null ? logprobs() : this.logprobs,
  usage: usage != null ? usage() : this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TranscriptTextDoneEvent &&
          type == other.type &&
          text == other.text &&
          listEquals(logprobs, other.logprobs) &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(type, text, Object.hashAll(logprobs ?? const []), usage); } 
@override String toString() { return 'TranscriptTextDoneEvent(type: $type, text: $text, logprobs: $logprobs, usage: $usage)'; } 
 }
