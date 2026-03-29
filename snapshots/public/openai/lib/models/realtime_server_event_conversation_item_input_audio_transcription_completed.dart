// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'log_prob_properties.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_completed_usage.dart';import 'transcript_text_usage_duration.dart';import 'transcript_text_usage_tokens.dart';/// The event type, must be
/// `conversation.item.input_audio_transcription.completed`.
/// 
final class RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType {const RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType._(this.value);

factory RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType.fromJson(String json) { return switch (json) {
  'conversation.item.input_audio_transcription.completed' => conversationItemInputAudioTranscriptionCompleted,
  _ => RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType._(json),
}; }

static const RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType conversationItemInputAudioTranscriptionCompleted = RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType._('conversation.item.input_audio_transcription.completed');

static const List<RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType> values = [conversationItemInputAudioTranscriptionCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType($value)'; } 
 }
/// This event is the output of audio transcription for user audio written to the
/// user audio buffer. Transcription begins when the input audio buffer is
/// committed by the client or server (when VAD is enabled). Transcription runs
/// asynchronously with Response creation, so this event may come before or after
/// the Response events.
/// 
/// Realtime API models accept audio natively, and thus input transcription is a
/// separate process run on a separate ASR (Automatic Speech Recognition) model.
/// The transcript may diverge somewhat from the model's interpretation, and
/// should be treated as a rough guide.
/// 
final class RealtimeServerEventConversationItemInputAudioTranscriptionCompleted {const RealtimeServerEventConversationItemInputAudioTranscriptionCompleted({required this.eventId, required this.type, required this.itemId, required this.contentIndex, required this.transcript, this.logprobs, required this.usage, });

factory RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  contentIndex: (json['content_index'] as num).toInt(),
  transcript: json['transcript'] as String,
  logprobs: (json['logprobs'] as List<dynamic>?)?.map((e) => LogProbProperties.fromJson(e as Map<String, dynamic>)).toList(),
  usage: OneOf2.parse(json['usage'], fromA: (v) => TranscriptTextUsageTokens.fromJson(v as Map<String, dynamic>), fromB: (v) => TranscriptTextUsageDuration.fromJson(v as Map<String, dynamic>),),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be
/// `conversation.item.input_audio_transcription.completed`.
/// 
final RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType type;

/// The ID of the item containing the audio that is being transcribed.
final String itemId;

/// The index of the content part containing the audio.
final int contentIndex;

/// The transcribed text.
final String transcript;

/// The log probabilities of the transcription.
final List<LogProbProperties>? logprobs;

/// Usage statistics for the transcription, this is billed according to the ASR model's pricing rather than the realtime model's pricing.
final RealtimeServerEventConversationItemInputAudioTranscriptionCompletedUsage usage;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'item_id': itemId,
  'content_index': contentIndex,
  'transcript': transcript,
  if (logprobs != null) 'logprobs': logprobs?.map((e) => e.toJson()).toList(),
  'usage': usage.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('content_index') && json['content_index'] is num &&
      json.containsKey('transcript') && json['transcript'] is String &&
      json.containsKey('usage'); } 
RealtimeServerEventConversationItemInputAudioTranscriptionCompleted copyWith({String? eventId, RealtimeServerEventConversationItemInputAudioTranscriptionCompletedType? type, String? itemId, int? contentIndex, String? transcript, List<LogProbProperties>? Function()? logprobs, RealtimeServerEventConversationItemInputAudioTranscriptionCompletedUsage? usage, }) { return RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  contentIndex: contentIndex ?? this.contentIndex,
  transcript: transcript ?? this.transcript,
  logprobs: logprobs != null ? logprobs() : this.logprobs,
  usage: usage ?? this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemInputAudioTranscriptionCompleted &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId &&
          contentIndex == other.contentIndex &&
          transcript == other.transcript &&
          listEquals(logprobs, other.logprobs) &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(eventId, type, itemId, contentIndex, transcript, Object.hashAll(logprobs ?? const []), usage); } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(eventId: $eventId, type: $type, itemId: $itemId, contentIndex: $contentIndex, transcript: $transcript, logprobs: $logprobs, usage: $usage)'; } 
 }
