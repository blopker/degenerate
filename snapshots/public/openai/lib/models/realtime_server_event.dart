// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_server_event_conversation_created.dart';import 'realtime_server_event_conversation_item_added.dart';import 'realtime_server_event_conversation_item_created.dart';import 'realtime_server_event_conversation_item_deleted.dart';import 'realtime_server_event_conversation_item_done.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_completed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_delta.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_failed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_segment.dart';import 'realtime_server_event_conversation_item_retrieved.dart';import 'realtime_server_event_conversation_item_truncated.dart';import 'realtime_server_event_error.dart';import 'realtime_server_event_input_audio_buffer_cleared.dart';import 'realtime_server_event_input_audio_buffer_committed.dart';import 'realtime_server_event_input_audio_buffer_dtmf_event_received.dart';import 'realtime_server_event_input_audio_buffer_speech_started.dart';import 'realtime_server_event_input_audio_buffer_speech_stopped.dart';import 'realtime_server_event_input_audio_buffer_timeout_triggered.dart';import 'realtime_server_event_mcp_list_tools_completed.dart';import 'realtime_server_event_mcp_list_tools_failed.dart';import 'realtime_server_event_mcp_list_tools_in_progress.dart';import 'realtime_server_event_output_audio_buffer_cleared.dart';import 'realtime_server_event_output_audio_buffer_started.dart';import 'realtime_server_event_output_audio_buffer_stopped.dart';import 'realtime_server_event_rate_limits_updated.dart';import 'realtime_server_event_response_audio_delta.dart';import 'realtime_server_event_response_audio_done.dart';import 'realtime_server_event_response_audio_transcript_delta.dart';import 'realtime_server_event_response_audio_transcript_done.dart';import 'realtime_server_event_response_content_part_added.dart';import 'realtime_server_event_response_content_part_done.dart';import 'realtime_server_event_response_created.dart';import 'realtime_server_event_response_done.dart';import 'realtime_server_event_response_function_call_arguments_delta.dart';import 'realtime_server_event_response_function_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_arguments_delta.dart';import 'realtime_server_event_response_mcp_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_completed.dart';import 'realtime_server_event_response_mcp_call_failed.dart';import 'realtime_server_event_response_mcp_call_in_progress.dart';import 'realtime_server_event_response_output_item_added.dart';import 'realtime_server_event_response_output_item_done.dart';import 'realtime_server_event_response_text_delta.dart';import 'realtime_server_event_response_text_done.dart';import 'realtime_server_event_session_created.dart';import 'realtime_server_event_session_updated.dart';/// A realtime server event.
/// 
sealed class RealtimeServerEvent {const RealtimeServerEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeServerEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'conversation.created' => RealtimeServerEventConversationCreated.fromJson(json),
  'conversation.item.created' => RealtimeServerEventConversationItemCreated.fromJson(json),
  'conversation.item.deleted' => RealtimeServerEventConversationItemDeleted.fromJson(json),
  'conversation.item.input_audio_transcription.completed' => RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(json),
  'conversation.item.input_audio_transcription.delta' => RealtimeServerEventConversationItemInputAudioTranscriptionDelta.fromJson(json),
  'conversation.item.input_audio_transcription.failed' => RealtimeServerEventConversationItemInputAudioTranscriptionFailed.fromJson(json),
  'conversation.item.retrieved' => RealtimeServerEventConversationItemRetrieved.fromJson(json),
  'conversation.item.truncated' => RealtimeServerEventConversationItemTruncated.fromJson(json),
  'error' => RealtimeServerEventError.fromJson(json),
  'input_audio_buffer.cleared' => RealtimeServerEventInputAudioBufferCleared.fromJson(json),
  'input_audio_buffer.committed' => RealtimeServerEventInputAudioBufferCommitted.fromJson(json),
  'input_audio_buffer.dtmf_event_received' => RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(json),
  'input_audio_buffer.speech_started' => RealtimeServerEventInputAudioBufferSpeechStarted.fromJson(json),
  'input_audio_buffer.speech_stopped' => RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(json),
  'rate_limits.updated' => RealtimeServerEventRateLimitsUpdated.fromJson(json),
  'response.output_audio.delta' => RealtimeServerEventResponseOutputAudioDelta.fromJson(json),
  'response.output_audio.done' => RealtimeServerEventResponseOutputAudioDone.fromJson(json),
  'response.output_audio_transcript.delta' => RealtimeServerEventResponseOutputAudioTranscriptDelta.fromJson(json),
  'response.output_audio_transcript.done' => RealtimeServerEventResponseOutputAudioTranscriptDone.fromJson(json),
  'response.content_part.added' => RealtimeServerEventResponseContentPartAdded.fromJson(json),
  'response.content_part.done' => RealtimeServerEventResponseContentPartDone.fromJson(json),
  'response.created' => RealtimeServerEventResponseCreated.fromJson(json),
  'response.done' => RealtimeServerEventResponseDone.fromJson(json),
  'response.function_call_arguments.delta' => RealtimeServerEventResponseFunctionCallArgumentsDelta.fromJson(json),
  'response.function_call_arguments.done' => RealtimeServerEventResponseFunctionCallArgumentsDone.fromJson(json),
  'response.output_item.added' => RealtimeServerEventResponseOutputItemAdded.fromJson(json),
  'response.output_item.done' => RealtimeServerEventResponseOutputItemDone.fromJson(json),
  'response.output_text.delta' => RealtimeServerEventResponseOutputTextDelta.fromJson(json),
  'response.output_text.done' => RealtimeServerEventResponseOutputTextDone.fromJson(json),
  'session.created' => RealtimeServerEventSessionCreated.fromJson(json),
  'session.updated' => RealtimeServerEventSessionUpdated.fromJson(json),
  'output_audio_buffer.started' => RealtimeServerEventOutputAudioBufferStarted.fromJson(json),
  'output_audio_buffer.stopped' => RealtimeServerEventOutputAudioBufferStopped.fromJson(json),
  'output_audio_buffer.cleared' => RealtimeServerEventOutputAudioBufferCleared.fromJson(json),
  'conversation.item.added' => RealtimeServerEventConversationItemAdded.fromJson(json),
  'conversation.item.done' => RealtimeServerEventConversationItemDone.fromJson(json),
  'input_audio_buffer.timeout_triggered' => RealtimeServerEventInputAudioBufferTimeoutTriggered.fromJson(json),
  'conversation.item.input_audio_transcription.segment' => RealtimeServerEventConversationItemInputAudioTranscriptionSegment.fromJson(json),
  'mcp_list_tools.in_progress' => RealtimeServerEventMcpListToolsInProgress.fromJson(json),
  'mcp_list_tools.completed' => RealtimeServerEventMcpListToolsCompleted.fromJson(json),
  'mcp_list_tools.failed' => RealtimeServerEventMcpListToolsFailed.fromJson(json),
  'response.mcp_call_arguments.delta' => RealtimeServerEventResponseMcpCallArgumentsDelta.fromJson(json),
  'response.mcp_call_arguments.done' => RealtimeServerEventResponseMcpCallArgumentsDone.fromJson(json),
  'response.mcp_call.in_progress' => RealtimeServerEventResponseMcpCallInProgress.fromJson(json),
  'response.mcp_call.completed' => RealtimeServerEventResponseMcpCallCompleted.fromJson(json),
  'response.mcp_call.failed' => RealtimeServerEventResponseMcpCallFailed.fromJson(json),
  _ => RealtimeServerEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeServerEvent$Unknown; } 
 }
@immutable final class RealtimeServerEventConversationCreated extends RealtimeServerEvent {const RealtimeServerEventConversationCreated(this.realtimeServerEventConversationCreated);

factory RealtimeServerEventConversationCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationCreated(RealtimeServerEventConversationCreated.fromJson(json)); }

final RealtimeServerEventConversationCreated realtimeServerEventConversationCreated;

@override String get type { return 'conversation.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationCreated && realtimeServerEventConversationCreated == other.realtimeServerEventConversationCreated; } 
@override int get hashCode { return realtimeServerEventConversationCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationCreated(realtimeServerEventConversationCreated: $realtimeServerEventConversationCreated)'; } 
 }
@immutable final class RealtimeServerEventConversationItemCreated extends RealtimeServerEvent {const RealtimeServerEventConversationItemCreated(this.realtimeServerEventConversationItemCreated);

factory RealtimeServerEventConversationItemCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemCreated(RealtimeServerEventConversationItemCreated.fromJson(json)); }

final RealtimeServerEventConversationItemCreated realtimeServerEventConversationItemCreated;

@override String get type { return 'conversation.item.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemCreated && realtimeServerEventConversationItemCreated == other.realtimeServerEventConversationItemCreated; } 
@override int get hashCode { return realtimeServerEventConversationItemCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemCreated(realtimeServerEventConversationItemCreated: $realtimeServerEventConversationItemCreated)'; } 
 }
@immutable final class RealtimeServerEventConversationItemDeleted extends RealtimeServerEvent {const RealtimeServerEventConversationItemDeleted(this.realtimeServerEventConversationItemDeleted);

factory RealtimeServerEventConversationItemDeleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemDeleted(RealtimeServerEventConversationItemDeleted.fromJson(json)); }

final RealtimeServerEventConversationItemDeleted realtimeServerEventConversationItemDeleted;

@override String get type { return 'conversation.item.deleted'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemDeleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemDeleted && realtimeServerEventConversationItemDeleted == other.realtimeServerEventConversationItemDeleted; } 
@override int get hashCode { return realtimeServerEventConversationItemDeleted.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemDeleted(realtimeServerEventConversationItemDeleted: $realtimeServerEventConversationItemDeleted)'; } 
 }
@immutable final class RealtimeServerEventConversationItemInputAudioTranscriptionCompleted extends RealtimeServerEvent {const RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(this.realtimeServerEventConversationItemInputAudioTranscriptionCompleted);

factory RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionCompleted realtimeServerEventConversationItemInputAudioTranscriptionCompleted;

@override String get type { return 'conversation.item.input_audio_transcription.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemInputAudioTranscriptionCompleted && realtimeServerEventConversationItemInputAudioTranscriptionCompleted == other.realtimeServerEventConversationItemInputAudioTranscriptionCompleted; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionCompleted(realtimeServerEventConversationItemInputAudioTranscriptionCompleted: $realtimeServerEventConversationItemInputAudioTranscriptionCompleted)'; } 
 }
@immutable final class RealtimeServerEventConversationItemInputAudioTranscriptionDelta extends RealtimeServerEvent {const RealtimeServerEventConversationItemInputAudioTranscriptionDelta(this.realtimeServerEventConversationItemInputAudioTranscriptionDelta);

factory RealtimeServerEventConversationItemInputAudioTranscriptionDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionDelta(RealtimeServerEventConversationItemInputAudioTranscriptionDelta.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionDelta realtimeServerEventConversationItemInputAudioTranscriptionDelta;

@override String get type { return 'conversation.item.input_audio_transcription.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemInputAudioTranscriptionDelta && realtimeServerEventConversationItemInputAudioTranscriptionDelta == other.realtimeServerEventConversationItemInputAudioTranscriptionDelta; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionDelta(realtimeServerEventConversationItemInputAudioTranscriptionDelta: $realtimeServerEventConversationItemInputAudioTranscriptionDelta)'; } 
 }
@immutable final class RealtimeServerEventConversationItemInputAudioTranscriptionFailed extends RealtimeServerEvent {const RealtimeServerEventConversationItemInputAudioTranscriptionFailed(this.realtimeServerEventConversationItemInputAudioTranscriptionFailed);

factory RealtimeServerEventConversationItemInputAudioTranscriptionFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionFailed(RealtimeServerEventConversationItemInputAudioTranscriptionFailed.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionFailed realtimeServerEventConversationItemInputAudioTranscriptionFailed;

@override String get type { return 'conversation.item.input_audio_transcription.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemInputAudioTranscriptionFailed && realtimeServerEventConversationItemInputAudioTranscriptionFailed == other.realtimeServerEventConversationItemInputAudioTranscriptionFailed; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionFailed(realtimeServerEventConversationItemInputAudioTranscriptionFailed: $realtimeServerEventConversationItemInputAudioTranscriptionFailed)'; } 
 }
@immutable final class RealtimeServerEventConversationItemRetrieved extends RealtimeServerEvent {const RealtimeServerEventConversationItemRetrieved(this.realtimeServerEventConversationItemRetrieved);

factory RealtimeServerEventConversationItemRetrieved.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemRetrieved(RealtimeServerEventConversationItemRetrieved.fromJson(json)); }

final RealtimeServerEventConversationItemRetrieved realtimeServerEventConversationItemRetrieved;

@override String get type { return 'conversation.item.retrieved'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemRetrieved.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemRetrieved && realtimeServerEventConversationItemRetrieved == other.realtimeServerEventConversationItemRetrieved; } 
@override int get hashCode { return realtimeServerEventConversationItemRetrieved.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemRetrieved(realtimeServerEventConversationItemRetrieved: $realtimeServerEventConversationItemRetrieved)'; } 
 }
@immutable final class RealtimeServerEventConversationItemTruncated extends RealtimeServerEvent {const RealtimeServerEventConversationItemTruncated(this.realtimeServerEventConversationItemTruncated);

factory RealtimeServerEventConversationItemTruncated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemTruncated(RealtimeServerEventConversationItemTruncated.fromJson(json)); }

final RealtimeServerEventConversationItemTruncated realtimeServerEventConversationItemTruncated;

@override String get type { return 'conversation.item.truncated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemTruncated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemTruncated && realtimeServerEventConversationItemTruncated == other.realtimeServerEventConversationItemTruncated; } 
@override int get hashCode { return realtimeServerEventConversationItemTruncated.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemTruncated(realtimeServerEventConversationItemTruncated: $realtimeServerEventConversationItemTruncated)'; } 
 }
@immutable final class RealtimeServerEventError extends RealtimeServerEvent {const RealtimeServerEventError(this.realtimeServerEventError);

factory RealtimeServerEventError.fromJson(Map<String, dynamic> json) { return RealtimeServerEventError(RealtimeServerEventError.fromJson(json)); }

final RealtimeServerEventError realtimeServerEventError;

@override String get type { return 'error'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventError.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventError && realtimeServerEventError == other.realtimeServerEventError; } 
@override int get hashCode { return realtimeServerEventError.hashCode; } 
@override String toString() { return 'RealtimeServerEventError(realtimeServerEventError: $realtimeServerEventError)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferCleared extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferCleared(this.realtimeServerEventInputAudioBufferCleared);

factory RealtimeServerEventInputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferCleared(RealtimeServerEventInputAudioBufferCleared.fromJson(json)); }

final RealtimeServerEventInputAudioBufferCleared realtimeServerEventInputAudioBufferCleared;

@override String get type { return 'input_audio_buffer.cleared'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferCleared.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferCleared && realtimeServerEventInputAudioBufferCleared == other.realtimeServerEventInputAudioBufferCleared; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferCleared.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferCleared(realtimeServerEventInputAudioBufferCleared: $realtimeServerEventInputAudioBufferCleared)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferCommitted extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferCommitted(this.realtimeServerEventInputAudioBufferCommitted);

factory RealtimeServerEventInputAudioBufferCommitted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferCommitted(RealtimeServerEventInputAudioBufferCommitted.fromJson(json)); }

final RealtimeServerEventInputAudioBufferCommitted realtimeServerEventInputAudioBufferCommitted;

@override String get type { return 'input_audio_buffer.committed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferCommitted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferCommitted && realtimeServerEventInputAudioBufferCommitted == other.realtimeServerEventInputAudioBufferCommitted; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferCommitted.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferCommitted(realtimeServerEventInputAudioBufferCommitted: $realtimeServerEventInputAudioBufferCommitted)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferDtmfEventReceived extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferDtmfEventReceived(this.realtimeServerEventInputAudioBufferDtmfEventReceived);

factory RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferDtmfEventReceived(RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(json)); }

final RealtimeServerEventInputAudioBufferDtmfEventReceived realtimeServerEventInputAudioBufferDtmfEventReceived;

@override String get type { return 'input_audio_buffer.dtmf_event_received'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferDtmfEventReceived.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferDtmfEventReceived && realtimeServerEventInputAudioBufferDtmfEventReceived == other.realtimeServerEventInputAudioBufferDtmfEventReceived; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferDtmfEventReceived.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferDtmfEventReceived(realtimeServerEventInputAudioBufferDtmfEventReceived: $realtimeServerEventInputAudioBufferDtmfEventReceived)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferSpeechStarted extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferSpeechStarted(this.realtimeServerEventInputAudioBufferSpeechStarted);

factory RealtimeServerEventInputAudioBufferSpeechStarted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferSpeechStarted(RealtimeServerEventInputAudioBufferSpeechStarted.fromJson(json)); }

final RealtimeServerEventInputAudioBufferSpeechStarted realtimeServerEventInputAudioBufferSpeechStarted;

@override String get type { return 'input_audio_buffer.speech_started'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferSpeechStarted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferSpeechStarted && realtimeServerEventInputAudioBufferSpeechStarted == other.realtimeServerEventInputAudioBufferSpeechStarted; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferSpeechStarted.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferSpeechStarted(realtimeServerEventInputAudioBufferSpeechStarted: $realtimeServerEventInputAudioBufferSpeechStarted)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferSpeechStopped extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferSpeechStopped(this.realtimeServerEventInputAudioBufferSpeechStopped);

factory RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferSpeechStopped(RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(json)); }

final RealtimeServerEventInputAudioBufferSpeechStopped realtimeServerEventInputAudioBufferSpeechStopped;

@override String get type { return 'input_audio_buffer.speech_stopped'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferSpeechStopped.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferSpeechStopped && realtimeServerEventInputAudioBufferSpeechStopped == other.realtimeServerEventInputAudioBufferSpeechStopped; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferSpeechStopped.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferSpeechStopped(realtimeServerEventInputAudioBufferSpeechStopped: $realtimeServerEventInputAudioBufferSpeechStopped)'; } 
 }
@immutable final class RealtimeServerEventRateLimitsUpdated extends RealtimeServerEvent {const RealtimeServerEventRateLimitsUpdated(this.realtimeServerEventRateLimitsUpdated);

factory RealtimeServerEventRateLimitsUpdated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventRateLimitsUpdated(RealtimeServerEventRateLimitsUpdated.fromJson(json)); }

final RealtimeServerEventRateLimitsUpdated realtimeServerEventRateLimitsUpdated;

@override String get type { return 'rate_limits.updated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventRateLimitsUpdated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventRateLimitsUpdated && realtimeServerEventRateLimitsUpdated == other.realtimeServerEventRateLimitsUpdated; } 
@override int get hashCode { return realtimeServerEventRateLimitsUpdated.hashCode; } 
@override String toString() { return 'RealtimeServerEventRateLimitsUpdated(realtimeServerEventRateLimitsUpdated: $realtimeServerEventRateLimitsUpdated)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputAudioDelta extends RealtimeServerEvent {const RealtimeServerEventResponseOutputAudioDelta(this.realtimeServerEventResponseAudioDelta);

factory RealtimeServerEventResponseOutputAudioDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputAudioDelta(RealtimeServerEventResponseAudioDelta.fromJson(json)); }

final RealtimeServerEventResponseAudioDelta realtimeServerEventResponseAudioDelta;

@override String get type { return 'response.output_audio.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseAudioDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputAudioDelta && realtimeServerEventResponseAudioDelta == other.realtimeServerEventResponseAudioDelta; } 
@override int get hashCode { return realtimeServerEventResponseAudioDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputAudioDelta(realtimeServerEventResponseAudioDelta: $realtimeServerEventResponseAudioDelta)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputAudioDone extends RealtimeServerEvent {const RealtimeServerEventResponseOutputAudioDone(this.realtimeServerEventResponseAudioDone);

factory RealtimeServerEventResponseOutputAudioDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputAudioDone(RealtimeServerEventResponseAudioDone.fromJson(json)); }

final RealtimeServerEventResponseAudioDone realtimeServerEventResponseAudioDone;

@override String get type { return 'response.output_audio.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseAudioDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputAudioDone && realtimeServerEventResponseAudioDone == other.realtimeServerEventResponseAudioDone; } 
@override int get hashCode { return realtimeServerEventResponseAudioDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputAudioDone(realtimeServerEventResponseAudioDone: $realtimeServerEventResponseAudioDone)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputAudioTranscriptDelta extends RealtimeServerEvent {const RealtimeServerEventResponseOutputAudioTranscriptDelta(this.realtimeServerEventResponseAudioTranscriptDelta);

factory RealtimeServerEventResponseOutputAudioTranscriptDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputAudioTranscriptDelta(RealtimeServerEventResponseAudioTranscriptDelta.fromJson(json)); }

final RealtimeServerEventResponseAudioTranscriptDelta realtimeServerEventResponseAudioTranscriptDelta;

@override String get type { return 'response.output_audio_transcript.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseAudioTranscriptDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputAudioTranscriptDelta && realtimeServerEventResponseAudioTranscriptDelta == other.realtimeServerEventResponseAudioTranscriptDelta; } 
@override int get hashCode { return realtimeServerEventResponseAudioTranscriptDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputAudioTranscriptDelta(realtimeServerEventResponseAudioTranscriptDelta: $realtimeServerEventResponseAudioTranscriptDelta)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputAudioTranscriptDone extends RealtimeServerEvent {const RealtimeServerEventResponseOutputAudioTranscriptDone(this.realtimeServerEventResponseAudioTranscriptDone);

factory RealtimeServerEventResponseOutputAudioTranscriptDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputAudioTranscriptDone(RealtimeServerEventResponseAudioTranscriptDone.fromJson(json)); }

final RealtimeServerEventResponseAudioTranscriptDone realtimeServerEventResponseAudioTranscriptDone;

@override String get type { return 'response.output_audio_transcript.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseAudioTranscriptDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputAudioTranscriptDone && realtimeServerEventResponseAudioTranscriptDone == other.realtimeServerEventResponseAudioTranscriptDone; } 
@override int get hashCode { return realtimeServerEventResponseAudioTranscriptDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputAudioTranscriptDone(realtimeServerEventResponseAudioTranscriptDone: $realtimeServerEventResponseAudioTranscriptDone)'; } 
 }
@immutable final class RealtimeServerEventResponseContentPartAdded extends RealtimeServerEvent {const RealtimeServerEventResponseContentPartAdded(this.realtimeServerEventResponseContentPartAdded);

factory RealtimeServerEventResponseContentPartAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseContentPartAdded(RealtimeServerEventResponseContentPartAdded.fromJson(json)); }

final RealtimeServerEventResponseContentPartAdded realtimeServerEventResponseContentPartAdded;

@override String get type { return 'response.content_part.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseContentPartAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseContentPartAdded && realtimeServerEventResponseContentPartAdded == other.realtimeServerEventResponseContentPartAdded; } 
@override int get hashCode { return realtimeServerEventResponseContentPartAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseContentPartAdded(realtimeServerEventResponseContentPartAdded: $realtimeServerEventResponseContentPartAdded)'; } 
 }
@immutable final class RealtimeServerEventResponseContentPartDone extends RealtimeServerEvent {const RealtimeServerEventResponseContentPartDone(this.realtimeServerEventResponseContentPartDone);

factory RealtimeServerEventResponseContentPartDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseContentPartDone(RealtimeServerEventResponseContentPartDone.fromJson(json)); }

final RealtimeServerEventResponseContentPartDone realtimeServerEventResponseContentPartDone;

@override String get type { return 'response.content_part.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseContentPartDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseContentPartDone && realtimeServerEventResponseContentPartDone == other.realtimeServerEventResponseContentPartDone; } 
@override int get hashCode { return realtimeServerEventResponseContentPartDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseContentPartDone(realtimeServerEventResponseContentPartDone: $realtimeServerEventResponseContentPartDone)'; } 
 }
@immutable final class RealtimeServerEventResponseCreated extends RealtimeServerEvent {const RealtimeServerEventResponseCreated(this.realtimeServerEventResponseCreated);

factory RealtimeServerEventResponseCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseCreated(RealtimeServerEventResponseCreated.fromJson(json)); }

final RealtimeServerEventResponseCreated realtimeServerEventResponseCreated;

@override String get type { return 'response.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseCreated && realtimeServerEventResponseCreated == other.realtimeServerEventResponseCreated; } 
@override int get hashCode { return realtimeServerEventResponseCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseCreated(realtimeServerEventResponseCreated: $realtimeServerEventResponseCreated)'; } 
 }
@immutable final class RealtimeServerEventResponseDone extends RealtimeServerEvent {const RealtimeServerEventResponseDone(this.realtimeServerEventResponseDone);

factory RealtimeServerEventResponseDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseDone(RealtimeServerEventResponseDone.fromJson(json)); }

final RealtimeServerEventResponseDone realtimeServerEventResponseDone;

@override String get type { return 'response.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseDone && realtimeServerEventResponseDone == other.realtimeServerEventResponseDone; } 
@override int get hashCode { return realtimeServerEventResponseDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseDone(realtimeServerEventResponseDone: $realtimeServerEventResponseDone)'; } 
 }
@immutable final class RealtimeServerEventResponseFunctionCallArgumentsDelta extends RealtimeServerEvent {const RealtimeServerEventResponseFunctionCallArgumentsDelta(this.realtimeServerEventResponseFunctionCallArgumentsDelta);

factory RealtimeServerEventResponseFunctionCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseFunctionCallArgumentsDelta(RealtimeServerEventResponseFunctionCallArgumentsDelta.fromJson(json)); }

final RealtimeServerEventResponseFunctionCallArgumentsDelta realtimeServerEventResponseFunctionCallArgumentsDelta;

@override String get type { return 'response.function_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseFunctionCallArgumentsDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseFunctionCallArgumentsDelta && realtimeServerEventResponseFunctionCallArgumentsDelta == other.realtimeServerEventResponseFunctionCallArgumentsDelta; } 
@override int get hashCode { return realtimeServerEventResponseFunctionCallArgumentsDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseFunctionCallArgumentsDelta(realtimeServerEventResponseFunctionCallArgumentsDelta: $realtimeServerEventResponseFunctionCallArgumentsDelta)'; } 
 }
@immutable final class RealtimeServerEventResponseFunctionCallArgumentsDone extends RealtimeServerEvent {const RealtimeServerEventResponseFunctionCallArgumentsDone(this.realtimeServerEventResponseFunctionCallArgumentsDone);

factory RealtimeServerEventResponseFunctionCallArgumentsDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseFunctionCallArgumentsDone(RealtimeServerEventResponseFunctionCallArgumentsDone.fromJson(json)); }

final RealtimeServerEventResponseFunctionCallArgumentsDone realtimeServerEventResponseFunctionCallArgumentsDone;

@override String get type { return 'response.function_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseFunctionCallArgumentsDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseFunctionCallArgumentsDone && realtimeServerEventResponseFunctionCallArgumentsDone == other.realtimeServerEventResponseFunctionCallArgumentsDone; } 
@override int get hashCode { return realtimeServerEventResponseFunctionCallArgumentsDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseFunctionCallArgumentsDone(realtimeServerEventResponseFunctionCallArgumentsDone: $realtimeServerEventResponseFunctionCallArgumentsDone)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputItemAdded extends RealtimeServerEvent {const RealtimeServerEventResponseOutputItemAdded(this.realtimeServerEventResponseOutputItemAdded);

factory RealtimeServerEventResponseOutputItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputItemAdded(RealtimeServerEventResponseOutputItemAdded.fromJson(json)); }

final RealtimeServerEventResponseOutputItemAdded realtimeServerEventResponseOutputItemAdded;

@override String get type { return 'response.output_item.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseOutputItemAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputItemAdded && realtimeServerEventResponseOutputItemAdded == other.realtimeServerEventResponseOutputItemAdded; } 
@override int get hashCode { return realtimeServerEventResponseOutputItemAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputItemAdded(realtimeServerEventResponseOutputItemAdded: $realtimeServerEventResponseOutputItemAdded)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputItemDone extends RealtimeServerEvent {const RealtimeServerEventResponseOutputItemDone(this.realtimeServerEventResponseOutputItemDone);

factory RealtimeServerEventResponseOutputItemDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputItemDone(RealtimeServerEventResponseOutputItemDone.fromJson(json)); }

final RealtimeServerEventResponseOutputItemDone realtimeServerEventResponseOutputItemDone;

@override String get type { return 'response.output_item.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseOutputItemDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputItemDone && realtimeServerEventResponseOutputItemDone == other.realtimeServerEventResponseOutputItemDone; } 
@override int get hashCode { return realtimeServerEventResponseOutputItemDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputItemDone(realtimeServerEventResponseOutputItemDone: $realtimeServerEventResponseOutputItemDone)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputTextDelta extends RealtimeServerEvent {const RealtimeServerEventResponseOutputTextDelta(this.realtimeServerEventResponseTextDelta);

factory RealtimeServerEventResponseOutputTextDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputTextDelta(RealtimeServerEventResponseTextDelta.fromJson(json)); }

final RealtimeServerEventResponseTextDelta realtimeServerEventResponseTextDelta;

@override String get type { return 'response.output_text.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseTextDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputTextDelta && realtimeServerEventResponseTextDelta == other.realtimeServerEventResponseTextDelta; } 
@override int get hashCode { return realtimeServerEventResponseTextDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputTextDelta(realtimeServerEventResponseTextDelta: $realtimeServerEventResponseTextDelta)'; } 
 }
@immutable final class RealtimeServerEventResponseOutputTextDone extends RealtimeServerEvent {const RealtimeServerEventResponseOutputTextDone(this.realtimeServerEventResponseTextDone);

factory RealtimeServerEventResponseOutputTextDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputTextDone(RealtimeServerEventResponseTextDone.fromJson(json)); }

final RealtimeServerEventResponseTextDone realtimeServerEventResponseTextDone;

@override String get type { return 'response.output_text.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseTextDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputTextDone && realtimeServerEventResponseTextDone == other.realtimeServerEventResponseTextDone; } 
@override int get hashCode { return realtimeServerEventResponseTextDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputTextDone(realtimeServerEventResponseTextDone: $realtimeServerEventResponseTextDone)'; } 
 }
@immutable final class RealtimeServerEventSessionCreated extends RealtimeServerEvent {const RealtimeServerEventSessionCreated(this.realtimeServerEventSessionCreated);

factory RealtimeServerEventSessionCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventSessionCreated(RealtimeServerEventSessionCreated.fromJson(json)); }

final RealtimeServerEventSessionCreated realtimeServerEventSessionCreated;

@override String get type { return 'session.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventSessionCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventSessionCreated && realtimeServerEventSessionCreated == other.realtimeServerEventSessionCreated; } 
@override int get hashCode { return realtimeServerEventSessionCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEventSessionCreated(realtimeServerEventSessionCreated: $realtimeServerEventSessionCreated)'; } 
 }
@immutable final class RealtimeServerEventSessionUpdated extends RealtimeServerEvent {const RealtimeServerEventSessionUpdated(this.realtimeServerEventSessionUpdated);

factory RealtimeServerEventSessionUpdated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventSessionUpdated(RealtimeServerEventSessionUpdated.fromJson(json)); }

final RealtimeServerEventSessionUpdated realtimeServerEventSessionUpdated;

@override String get type { return 'session.updated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventSessionUpdated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventSessionUpdated && realtimeServerEventSessionUpdated == other.realtimeServerEventSessionUpdated; } 
@override int get hashCode { return realtimeServerEventSessionUpdated.hashCode; } 
@override String toString() { return 'RealtimeServerEventSessionUpdated(realtimeServerEventSessionUpdated: $realtimeServerEventSessionUpdated)'; } 
 }
@immutable final class RealtimeServerEventOutputAudioBufferStarted extends RealtimeServerEvent {const RealtimeServerEventOutputAudioBufferStarted(this.realtimeServerEventOutputAudioBufferStarted);

factory RealtimeServerEventOutputAudioBufferStarted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventOutputAudioBufferStarted(RealtimeServerEventOutputAudioBufferStarted.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferStarted realtimeServerEventOutputAudioBufferStarted;

@override String get type { return 'output_audio_buffer.started'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferStarted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventOutputAudioBufferStarted && realtimeServerEventOutputAudioBufferStarted == other.realtimeServerEventOutputAudioBufferStarted; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferStarted.hashCode; } 
@override String toString() { return 'RealtimeServerEventOutputAudioBufferStarted(realtimeServerEventOutputAudioBufferStarted: $realtimeServerEventOutputAudioBufferStarted)'; } 
 }
@immutable final class RealtimeServerEventOutputAudioBufferStopped extends RealtimeServerEvent {const RealtimeServerEventOutputAudioBufferStopped(this.realtimeServerEventOutputAudioBufferStopped);

factory RealtimeServerEventOutputAudioBufferStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEventOutputAudioBufferStopped(RealtimeServerEventOutputAudioBufferStopped.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferStopped realtimeServerEventOutputAudioBufferStopped;

@override String get type { return 'output_audio_buffer.stopped'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferStopped.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventOutputAudioBufferStopped && realtimeServerEventOutputAudioBufferStopped == other.realtimeServerEventOutputAudioBufferStopped; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferStopped.hashCode; } 
@override String toString() { return 'RealtimeServerEventOutputAudioBufferStopped(realtimeServerEventOutputAudioBufferStopped: $realtimeServerEventOutputAudioBufferStopped)'; } 
 }
@immutable final class RealtimeServerEventOutputAudioBufferCleared extends RealtimeServerEvent {const RealtimeServerEventOutputAudioBufferCleared(this.realtimeServerEventOutputAudioBufferCleared);

factory RealtimeServerEventOutputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEventOutputAudioBufferCleared(RealtimeServerEventOutputAudioBufferCleared.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferCleared realtimeServerEventOutputAudioBufferCleared;

@override String get type { return 'output_audio_buffer.cleared'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferCleared.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventOutputAudioBufferCleared && realtimeServerEventOutputAudioBufferCleared == other.realtimeServerEventOutputAudioBufferCleared; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferCleared.hashCode; } 
@override String toString() { return 'RealtimeServerEventOutputAudioBufferCleared(realtimeServerEventOutputAudioBufferCleared: $realtimeServerEventOutputAudioBufferCleared)'; } 
 }
@immutable final class RealtimeServerEventConversationItemAdded extends RealtimeServerEvent {const RealtimeServerEventConversationItemAdded(this.realtimeServerEventConversationItemAdded);

factory RealtimeServerEventConversationItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemAdded(RealtimeServerEventConversationItemAdded.fromJson(json)); }

final RealtimeServerEventConversationItemAdded realtimeServerEventConversationItemAdded;

@override String get type { return 'conversation.item.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemAdded && realtimeServerEventConversationItemAdded == other.realtimeServerEventConversationItemAdded; } 
@override int get hashCode { return realtimeServerEventConversationItemAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemAdded(realtimeServerEventConversationItemAdded: $realtimeServerEventConversationItemAdded)'; } 
 }
@immutable final class RealtimeServerEventConversationItemDone extends RealtimeServerEvent {const RealtimeServerEventConversationItemDone(this.realtimeServerEventConversationItemDone);

factory RealtimeServerEventConversationItemDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemDone(RealtimeServerEventConversationItemDone.fromJson(json)); }

final RealtimeServerEventConversationItemDone realtimeServerEventConversationItemDone;

@override String get type { return 'conversation.item.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemDone && realtimeServerEventConversationItemDone == other.realtimeServerEventConversationItemDone; } 
@override int get hashCode { return realtimeServerEventConversationItemDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemDone(realtimeServerEventConversationItemDone: $realtimeServerEventConversationItemDone)'; } 
 }
@immutable final class RealtimeServerEventInputAudioBufferTimeoutTriggered extends RealtimeServerEvent {const RealtimeServerEventInputAudioBufferTimeoutTriggered(this.realtimeServerEventInputAudioBufferTimeoutTriggered);

factory RealtimeServerEventInputAudioBufferTimeoutTriggered.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferTimeoutTriggered(RealtimeServerEventInputAudioBufferTimeoutTriggered.fromJson(json)); }

final RealtimeServerEventInputAudioBufferTimeoutTriggered realtimeServerEventInputAudioBufferTimeoutTriggered;

@override String get type { return 'input_audio_buffer.timeout_triggered'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferTimeoutTriggered.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferTimeoutTriggered && realtimeServerEventInputAudioBufferTimeoutTriggered == other.realtimeServerEventInputAudioBufferTimeoutTriggered; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferTimeoutTriggered.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferTimeoutTriggered(realtimeServerEventInputAudioBufferTimeoutTriggered: $realtimeServerEventInputAudioBufferTimeoutTriggered)'; } 
 }
@immutable final class RealtimeServerEventConversationItemInputAudioTranscriptionSegment extends RealtimeServerEvent {const RealtimeServerEventConversationItemInputAudioTranscriptionSegment(this.realtimeServerEventConversationItemInputAudioTranscriptionSegment);

factory RealtimeServerEventConversationItemInputAudioTranscriptionSegment.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionSegment(RealtimeServerEventConversationItemInputAudioTranscriptionSegment.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionSegment realtimeServerEventConversationItemInputAudioTranscriptionSegment;

@override String get type { return 'conversation.item.input_audio_transcription.segment'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionSegment.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationItemInputAudioTranscriptionSegment && realtimeServerEventConversationItemInputAudioTranscriptionSegment == other.realtimeServerEventConversationItemInputAudioTranscriptionSegment; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionSegment.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionSegment(realtimeServerEventConversationItemInputAudioTranscriptionSegment: $realtimeServerEventConversationItemInputAudioTranscriptionSegment)'; } 
 }
@immutable final class RealtimeServerEventMcpListToolsInProgress extends RealtimeServerEvent {const RealtimeServerEventMcpListToolsInProgress(this.realtimeServerEventMcpListToolsInProgress);

factory RealtimeServerEventMcpListToolsInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEventMcpListToolsInProgress(RealtimeServerEventMcpListToolsInProgress.fromJson(json)); }

final RealtimeServerEventMcpListToolsInProgress realtimeServerEventMcpListToolsInProgress;

@override String get type { return 'mcp_list_tools.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsInProgress.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventMcpListToolsInProgress && realtimeServerEventMcpListToolsInProgress == other.realtimeServerEventMcpListToolsInProgress; } 
@override int get hashCode { return realtimeServerEventMcpListToolsInProgress.hashCode; } 
@override String toString() { return 'RealtimeServerEventMcpListToolsInProgress(realtimeServerEventMcpListToolsInProgress: $realtimeServerEventMcpListToolsInProgress)'; } 
 }
@immutable final class RealtimeServerEventMcpListToolsCompleted extends RealtimeServerEvent {const RealtimeServerEventMcpListToolsCompleted(this.realtimeServerEventMcpListToolsCompleted);

factory RealtimeServerEventMcpListToolsCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventMcpListToolsCompleted(RealtimeServerEventMcpListToolsCompleted.fromJson(json)); }

final RealtimeServerEventMcpListToolsCompleted realtimeServerEventMcpListToolsCompleted;

@override String get type { return 'mcp_list_tools.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventMcpListToolsCompleted && realtimeServerEventMcpListToolsCompleted == other.realtimeServerEventMcpListToolsCompleted; } 
@override int get hashCode { return realtimeServerEventMcpListToolsCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEventMcpListToolsCompleted(realtimeServerEventMcpListToolsCompleted: $realtimeServerEventMcpListToolsCompleted)'; } 
 }
@immutable final class RealtimeServerEventMcpListToolsFailed extends RealtimeServerEvent {const RealtimeServerEventMcpListToolsFailed(this.realtimeServerEventMcpListToolsFailed);

factory RealtimeServerEventMcpListToolsFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEventMcpListToolsFailed(RealtimeServerEventMcpListToolsFailed.fromJson(json)); }

final RealtimeServerEventMcpListToolsFailed realtimeServerEventMcpListToolsFailed;

@override String get type { return 'mcp_list_tools.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventMcpListToolsFailed && realtimeServerEventMcpListToolsFailed == other.realtimeServerEventMcpListToolsFailed; } 
@override int get hashCode { return realtimeServerEventMcpListToolsFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEventMcpListToolsFailed(realtimeServerEventMcpListToolsFailed: $realtimeServerEventMcpListToolsFailed)'; } 
 }
@immutable final class RealtimeServerEventResponseMcpCallArgumentsDelta extends RealtimeServerEvent {const RealtimeServerEventResponseMcpCallArgumentsDelta(this.realtimeServerEventResponseMcpCallArgumentsDelta);

factory RealtimeServerEventResponseMcpCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallArgumentsDelta(RealtimeServerEventResponseMcpCallArgumentsDelta.fromJson(json)); }

final RealtimeServerEventResponseMcpCallArgumentsDelta realtimeServerEventResponseMcpCallArgumentsDelta;

@override String get type { return 'response.mcp_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallArgumentsDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallArgumentsDelta && realtimeServerEventResponseMcpCallArgumentsDelta == other.realtimeServerEventResponseMcpCallArgumentsDelta; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallArgumentsDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallArgumentsDelta(realtimeServerEventResponseMcpCallArgumentsDelta: $realtimeServerEventResponseMcpCallArgumentsDelta)'; } 
 }
@immutable final class RealtimeServerEventResponseMcpCallArgumentsDone extends RealtimeServerEvent {const RealtimeServerEventResponseMcpCallArgumentsDone(this.realtimeServerEventResponseMcpCallArgumentsDone);

factory RealtimeServerEventResponseMcpCallArgumentsDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallArgumentsDone(RealtimeServerEventResponseMcpCallArgumentsDone.fromJson(json)); }

final RealtimeServerEventResponseMcpCallArgumentsDone realtimeServerEventResponseMcpCallArgumentsDone;

@override String get type { return 'response.mcp_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallArgumentsDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallArgumentsDone && realtimeServerEventResponseMcpCallArgumentsDone == other.realtimeServerEventResponseMcpCallArgumentsDone; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallArgumentsDone.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallArgumentsDone(realtimeServerEventResponseMcpCallArgumentsDone: $realtimeServerEventResponseMcpCallArgumentsDone)'; } 
 }
@immutable final class RealtimeServerEventResponseMcpCallInProgress extends RealtimeServerEvent {const RealtimeServerEventResponseMcpCallInProgress(this.realtimeServerEventResponseMcpCallInProgress);

factory RealtimeServerEventResponseMcpCallInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallInProgress(RealtimeServerEventResponseMcpCallInProgress.fromJson(json)); }

final RealtimeServerEventResponseMcpCallInProgress realtimeServerEventResponseMcpCallInProgress;

@override String get type { return 'response.mcp_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallInProgress.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallInProgress && realtimeServerEventResponseMcpCallInProgress == other.realtimeServerEventResponseMcpCallInProgress; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallInProgress.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallInProgress(realtimeServerEventResponseMcpCallInProgress: $realtimeServerEventResponseMcpCallInProgress)'; } 
 }
@immutable final class RealtimeServerEventResponseMcpCallCompleted extends RealtimeServerEvent {const RealtimeServerEventResponseMcpCallCompleted(this.realtimeServerEventResponseMcpCallCompleted);

factory RealtimeServerEventResponseMcpCallCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallCompleted(RealtimeServerEventResponseMcpCallCompleted.fromJson(json)); }

final RealtimeServerEventResponseMcpCallCompleted realtimeServerEventResponseMcpCallCompleted;

@override String get type { return 'response.mcp_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallCompleted && realtimeServerEventResponseMcpCallCompleted == other.realtimeServerEventResponseMcpCallCompleted; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallCompleted(realtimeServerEventResponseMcpCallCompleted: $realtimeServerEventResponseMcpCallCompleted)'; } 
 }
@immutable final class RealtimeServerEventResponseMcpCallFailed extends RealtimeServerEvent {const RealtimeServerEventResponseMcpCallFailed(this.realtimeServerEventResponseMcpCallFailed);

factory RealtimeServerEventResponseMcpCallFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallFailed(RealtimeServerEventResponseMcpCallFailed.fromJson(json)); }

final RealtimeServerEventResponseMcpCallFailed realtimeServerEventResponseMcpCallFailed;

@override String get type { return 'response.mcp_call.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallFailed && realtimeServerEventResponseMcpCallFailed == other.realtimeServerEventResponseMcpCallFailed; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallFailed(realtimeServerEventResponseMcpCallFailed: $realtimeServerEventResponseMcpCallFailed)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RealtimeServerEvent$Unknown extends RealtimeServerEvent {const RealtimeServerEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RealtimeServerEvent.unknown($json)'; } 
 }
