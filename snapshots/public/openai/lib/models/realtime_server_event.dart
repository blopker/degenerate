// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_server_event_conversation_created.dart';import 'realtime_server_event_conversation_item_added.dart';import 'realtime_server_event_conversation_item_created.dart';import 'realtime_server_event_conversation_item_deleted.dart';import 'realtime_server_event_conversation_item_done.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_completed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_delta.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_failed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_segment.dart';import 'realtime_server_event_conversation_item_retrieved.dart';import 'realtime_server_event_conversation_item_truncated.dart';import 'realtime_server_event_error.dart';import 'realtime_server_event_input_audio_buffer_cleared.dart';import 'realtime_server_event_input_audio_buffer_committed.dart';import 'realtime_server_event_input_audio_buffer_dtmf_event_received.dart';import 'realtime_server_event_input_audio_buffer_speech_started.dart';import 'realtime_server_event_input_audio_buffer_speech_stopped.dart';import 'realtime_server_event_input_audio_buffer_timeout_triggered.dart';import 'realtime_server_event_mcp_list_tools_completed.dart';import 'realtime_server_event_mcp_list_tools_failed.dart';import 'realtime_server_event_mcp_list_tools_in_progress.dart';import 'realtime_server_event_output_audio_buffer_cleared.dart';import 'realtime_server_event_output_audio_buffer_started.dart';import 'realtime_server_event_output_audio_buffer_stopped.dart';import 'realtime_server_event_rate_limits_updated.dart';import 'realtime_server_event_response_audio_delta.dart';import 'realtime_server_event_response_audio_done.dart';import 'realtime_server_event_response_audio_transcript_delta.dart';import 'realtime_server_event_response_audio_transcript_done.dart';import 'realtime_server_event_response_content_part_added.dart';import 'realtime_server_event_response_content_part_done.dart';import 'realtime_server_event_response_created.dart';import 'realtime_server_event_response_done.dart';import 'realtime_server_event_response_function_call_arguments_delta.dart';import 'realtime_server_event_response_function_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_arguments_delta.dart';import 'realtime_server_event_response_mcp_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_completed.dart';import 'realtime_server_event_response_mcp_call_failed.dart';import 'realtime_server_event_response_mcp_call_in_progress.dart';import 'realtime_server_event_response_output_item_added.dart';import 'realtime_server_event_response_output_item_done.dart';import 'realtime_server_event_response_text_delta.dart';import 'realtime_server_event_response_text_done.dart';import 'realtime_server_event_session_created.dart';import 'realtime_server_event_session_updated.dart';/// A realtime server event.
/// 
sealed class RealtimeServerEvent {const RealtimeServerEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeServerEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'conversation.created' => RealtimeServerEvent$ConversationCreated.fromJson(json),
  'conversation.item.created' => RealtimeServerEvent$ConversationItemCreated.fromJson(json),
  'conversation.item.deleted' => RealtimeServerEvent$ConversationItemDeleted.fromJson(json),
  'conversation.item.input_audio_transcription.completed' => RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted.fromJson(json),
  'conversation.item.input_audio_transcription.delta' => RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta.fromJson(json),
  'conversation.item.input_audio_transcription.failed' => RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed.fromJson(json),
  'conversation.item.retrieved' => RealtimeServerEvent$ConversationItemRetrieved.fromJson(json),
  'conversation.item.truncated' => RealtimeServerEvent$ConversationItemTruncated.fromJson(json),
  'error' => RealtimeServerEvent$Error.fromJson(json),
  'input_audio_buffer.cleared' => RealtimeServerEvent$InputAudioBufferCleared.fromJson(json),
  'input_audio_buffer.committed' => RealtimeServerEvent$InputAudioBufferCommitted.fromJson(json),
  'input_audio_buffer.dtmf_event_received' => RealtimeServerEvent$InputAudioBufferDtmfEventReceived.fromJson(json),
  'input_audio_buffer.speech_started' => RealtimeServerEvent$InputAudioBufferSpeechStarted.fromJson(json),
  'input_audio_buffer.speech_stopped' => RealtimeServerEvent$InputAudioBufferSpeechStopped.fromJson(json),
  'rate_limits.updated' => RealtimeServerEvent$RateLimitsUpdated.fromJson(json),
  'response.output_audio.delta' => RealtimeServerEventResponseOutputAudioDelta.fromJson(json),
  'response.output_audio.done' => RealtimeServerEventResponseOutputAudioDone.fromJson(json),
  'response.output_audio_transcript.delta' => RealtimeServerEventResponseOutputAudioTranscriptDelta.fromJson(json),
  'response.output_audio_transcript.done' => RealtimeServerEventResponseOutputAudioTranscriptDone.fromJson(json),
  'response.content_part.added' => RealtimeServerEvent$ResponseContentPartAdded.fromJson(json),
  'response.content_part.done' => RealtimeServerEvent$ResponseContentPartDone.fromJson(json),
  'response.created' => RealtimeServerEvent$ResponseCreated.fromJson(json),
  'response.done' => RealtimeServerEvent$ResponseDone.fromJson(json),
  'response.function_call_arguments.delta' => RealtimeServerEvent$ResponseFunctionCallArgumentsDelta.fromJson(json),
  'response.function_call_arguments.done' => RealtimeServerEvent$ResponseFunctionCallArgumentsDone.fromJson(json),
  'response.output_item.added' => RealtimeServerEvent$ResponseOutputItemAdded.fromJson(json),
  'response.output_item.done' => RealtimeServerEvent$ResponseOutputItemDone.fromJson(json),
  'response.output_text.delta' => RealtimeServerEventResponseOutputTextDelta.fromJson(json),
  'response.output_text.done' => RealtimeServerEventResponseOutputTextDone.fromJson(json),
  'session.created' => RealtimeServerEvent$SessionCreated.fromJson(json),
  'session.updated' => RealtimeServerEvent$SessionUpdated.fromJson(json),
  'output_audio_buffer.started' => RealtimeServerEvent$OutputAudioBufferStarted.fromJson(json),
  'output_audio_buffer.stopped' => RealtimeServerEvent$OutputAudioBufferStopped.fromJson(json),
  'output_audio_buffer.cleared' => RealtimeServerEvent$OutputAudioBufferCleared.fromJson(json),
  'conversation.item.added' => RealtimeServerEvent$ConversationItemAdded.fromJson(json),
  'conversation.item.done' => RealtimeServerEvent$ConversationItemDone.fromJson(json),
  'input_audio_buffer.timeout_triggered' => RealtimeServerEvent$InputAudioBufferTimeoutTriggered.fromJson(json),
  'conversation.item.input_audio_transcription.segment' => RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment.fromJson(json),
  'mcp_list_tools.in_progress' => RealtimeServerEvent$McpListToolsInProgress.fromJson(json),
  'mcp_list_tools.completed' => RealtimeServerEvent$McpListToolsCompleted.fromJson(json),
  'mcp_list_tools.failed' => RealtimeServerEvent$McpListToolsFailed.fromJson(json),
  'response.mcp_call_arguments.delta' => RealtimeServerEvent$ResponseMcpCallArgumentsDelta.fromJson(json),
  'response.mcp_call_arguments.done' => RealtimeServerEvent$ResponseMcpCallArgumentsDone.fromJson(json),
  'response.mcp_call.in_progress' => RealtimeServerEvent$ResponseMcpCallInProgress.fromJson(json),
  'response.mcp_call.completed' => RealtimeServerEvent$ResponseMcpCallCompleted.fromJson(json),
  'response.mcp_call.failed' => RealtimeServerEvent$ResponseMcpCallFailed.fromJson(json),
  _ => RealtimeServerEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeServerEvent$Unknown; } 
 }
@immutable final class RealtimeServerEvent$ConversationCreated extends RealtimeServerEvent {const RealtimeServerEvent$ConversationCreated(this.realtimeServerEventConversationCreated);

factory RealtimeServerEvent$ConversationCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationCreated(RealtimeServerEventConversationCreated.fromJson(json)); }

final RealtimeServerEventConversationCreated realtimeServerEventConversationCreated;

@override String get type { return 'conversation.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationCreated && realtimeServerEventConversationCreated == other.realtimeServerEventConversationCreated; } 
@override int get hashCode { return realtimeServerEventConversationCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationCreated(realtimeServerEventConversationCreated: $realtimeServerEventConversationCreated)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemCreated extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemCreated(this.realtimeServerEventConversationItemCreated);

factory RealtimeServerEvent$ConversationItemCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemCreated(RealtimeServerEventConversationItemCreated.fromJson(json)); }

final RealtimeServerEventConversationItemCreated realtimeServerEventConversationItemCreated;

@override String get type { return 'conversation.item.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemCreated && realtimeServerEventConversationItemCreated == other.realtimeServerEventConversationItemCreated; } 
@override int get hashCode { return realtimeServerEventConversationItemCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemCreated(realtimeServerEventConversationItemCreated: $realtimeServerEventConversationItemCreated)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemDeleted extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemDeleted(this.realtimeServerEventConversationItemDeleted);

factory RealtimeServerEvent$ConversationItemDeleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemDeleted(RealtimeServerEventConversationItemDeleted.fromJson(json)); }

final RealtimeServerEventConversationItemDeleted realtimeServerEventConversationItemDeleted;

@override String get type { return 'conversation.item.deleted'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemDeleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemDeleted && realtimeServerEventConversationItemDeleted == other.realtimeServerEventConversationItemDeleted; } 
@override int get hashCode { return realtimeServerEventConversationItemDeleted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemDeleted(realtimeServerEventConversationItemDeleted: $realtimeServerEventConversationItemDeleted)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted(this.realtimeServerEventConversationItemInputAudioTranscriptionCompleted);

factory RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted(RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionCompleted realtimeServerEventConversationItemInputAudioTranscriptionCompleted;

@override String get type { return 'conversation.item.input_audio_transcription.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemInputAudioTranscriptionCompleted && realtimeServerEventConversationItemInputAudioTranscriptionCompleted == other.realtimeServerEventConversationItemInputAudioTranscriptionCompleted; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemInputAudioTranscriptionCompleted(realtimeServerEventConversationItemInputAudioTranscriptionCompleted: $realtimeServerEventConversationItemInputAudioTranscriptionCompleted)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta(this.realtimeServerEventConversationItemInputAudioTranscriptionDelta);

factory RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta(RealtimeServerEventConversationItemInputAudioTranscriptionDelta.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionDelta realtimeServerEventConversationItemInputAudioTranscriptionDelta;

@override String get type { return 'conversation.item.input_audio_transcription.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemInputAudioTranscriptionDelta && realtimeServerEventConversationItemInputAudioTranscriptionDelta == other.realtimeServerEventConversationItemInputAudioTranscriptionDelta; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemInputAudioTranscriptionDelta(realtimeServerEventConversationItemInputAudioTranscriptionDelta: $realtimeServerEventConversationItemInputAudioTranscriptionDelta)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed(this.realtimeServerEventConversationItemInputAudioTranscriptionFailed);

factory RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed(RealtimeServerEventConversationItemInputAudioTranscriptionFailed.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionFailed realtimeServerEventConversationItemInputAudioTranscriptionFailed;

@override String get type { return 'conversation.item.input_audio_transcription.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemInputAudioTranscriptionFailed && realtimeServerEventConversationItemInputAudioTranscriptionFailed == other.realtimeServerEventConversationItemInputAudioTranscriptionFailed; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemInputAudioTranscriptionFailed(realtimeServerEventConversationItemInputAudioTranscriptionFailed: $realtimeServerEventConversationItemInputAudioTranscriptionFailed)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemRetrieved extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemRetrieved(this.realtimeServerEventConversationItemRetrieved);

factory RealtimeServerEvent$ConversationItemRetrieved.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemRetrieved(RealtimeServerEventConversationItemRetrieved.fromJson(json)); }

final RealtimeServerEventConversationItemRetrieved realtimeServerEventConversationItemRetrieved;

@override String get type { return 'conversation.item.retrieved'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemRetrieved.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemRetrieved && realtimeServerEventConversationItemRetrieved == other.realtimeServerEventConversationItemRetrieved; } 
@override int get hashCode { return realtimeServerEventConversationItemRetrieved.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemRetrieved(realtimeServerEventConversationItemRetrieved: $realtimeServerEventConversationItemRetrieved)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemTruncated extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemTruncated(this.realtimeServerEventConversationItemTruncated);

factory RealtimeServerEvent$ConversationItemTruncated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemTruncated(RealtimeServerEventConversationItemTruncated.fromJson(json)); }

final RealtimeServerEventConversationItemTruncated realtimeServerEventConversationItemTruncated;

@override String get type { return 'conversation.item.truncated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemTruncated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemTruncated && realtimeServerEventConversationItemTruncated == other.realtimeServerEventConversationItemTruncated; } 
@override int get hashCode { return realtimeServerEventConversationItemTruncated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemTruncated(realtimeServerEventConversationItemTruncated: $realtimeServerEventConversationItemTruncated)'; } 
 }
@immutable final class RealtimeServerEvent$Error extends RealtimeServerEvent {const RealtimeServerEvent$Error(this.realtimeServerEventError);

factory RealtimeServerEvent$Error.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$Error(RealtimeServerEventError.fromJson(json)); }

final RealtimeServerEventError realtimeServerEventError;

@override String get type { return 'error'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventError.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$Error && realtimeServerEventError == other.realtimeServerEventError; } 
@override int get hashCode { return realtimeServerEventError.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$Error(realtimeServerEventError: $realtimeServerEventError)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferCleared extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferCleared(this.realtimeServerEventInputAudioBufferCleared);

factory RealtimeServerEvent$InputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferCleared(RealtimeServerEventInputAudioBufferCleared.fromJson(json)); }

final RealtimeServerEventInputAudioBufferCleared realtimeServerEventInputAudioBufferCleared;

@override String get type { return 'input_audio_buffer.cleared'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferCleared.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferCleared && realtimeServerEventInputAudioBufferCleared == other.realtimeServerEventInputAudioBufferCleared; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferCleared.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferCleared(realtimeServerEventInputAudioBufferCleared: $realtimeServerEventInputAudioBufferCleared)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferCommitted extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferCommitted(this.realtimeServerEventInputAudioBufferCommitted);

factory RealtimeServerEvent$InputAudioBufferCommitted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferCommitted(RealtimeServerEventInputAudioBufferCommitted.fromJson(json)); }

final RealtimeServerEventInputAudioBufferCommitted realtimeServerEventInputAudioBufferCommitted;

@override String get type { return 'input_audio_buffer.committed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferCommitted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferCommitted && realtimeServerEventInputAudioBufferCommitted == other.realtimeServerEventInputAudioBufferCommitted; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferCommitted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferCommitted(realtimeServerEventInputAudioBufferCommitted: $realtimeServerEventInputAudioBufferCommitted)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferDtmfEventReceived extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferDtmfEventReceived(this.realtimeServerEventInputAudioBufferDtmfEventReceived);

factory RealtimeServerEvent$InputAudioBufferDtmfEventReceived.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferDtmfEventReceived(RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(json)); }

final RealtimeServerEventInputAudioBufferDtmfEventReceived realtimeServerEventInputAudioBufferDtmfEventReceived;

@override String get type { return 'input_audio_buffer.dtmf_event_received'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferDtmfEventReceived.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferDtmfEventReceived && realtimeServerEventInputAudioBufferDtmfEventReceived == other.realtimeServerEventInputAudioBufferDtmfEventReceived; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferDtmfEventReceived.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferDtmfEventReceived(realtimeServerEventInputAudioBufferDtmfEventReceived: $realtimeServerEventInputAudioBufferDtmfEventReceived)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferSpeechStarted extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferSpeechStarted(this.realtimeServerEventInputAudioBufferSpeechStarted);

factory RealtimeServerEvent$InputAudioBufferSpeechStarted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferSpeechStarted(RealtimeServerEventInputAudioBufferSpeechStarted.fromJson(json)); }

final RealtimeServerEventInputAudioBufferSpeechStarted realtimeServerEventInputAudioBufferSpeechStarted;

@override String get type { return 'input_audio_buffer.speech_started'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferSpeechStarted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferSpeechStarted && realtimeServerEventInputAudioBufferSpeechStarted == other.realtimeServerEventInputAudioBufferSpeechStarted; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferSpeechStarted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferSpeechStarted(realtimeServerEventInputAudioBufferSpeechStarted: $realtimeServerEventInputAudioBufferSpeechStarted)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferSpeechStopped extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferSpeechStopped(this.realtimeServerEventInputAudioBufferSpeechStopped);

factory RealtimeServerEvent$InputAudioBufferSpeechStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferSpeechStopped(RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(json)); }

final RealtimeServerEventInputAudioBufferSpeechStopped realtimeServerEventInputAudioBufferSpeechStopped;

@override String get type { return 'input_audio_buffer.speech_stopped'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferSpeechStopped.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferSpeechStopped && realtimeServerEventInputAudioBufferSpeechStopped == other.realtimeServerEventInputAudioBufferSpeechStopped; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferSpeechStopped.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferSpeechStopped(realtimeServerEventInputAudioBufferSpeechStopped: $realtimeServerEventInputAudioBufferSpeechStopped)'; } 
 }
@immutable final class RealtimeServerEvent$RateLimitsUpdated extends RealtimeServerEvent {const RealtimeServerEvent$RateLimitsUpdated(this.realtimeServerEventRateLimitsUpdated);

factory RealtimeServerEvent$RateLimitsUpdated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$RateLimitsUpdated(RealtimeServerEventRateLimitsUpdated.fromJson(json)); }

final RealtimeServerEventRateLimitsUpdated realtimeServerEventRateLimitsUpdated;

@override String get type { return 'rate_limits.updated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventRateLimitsUpdated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$RateLimitsUpdated && realtimeServerEventRateLimitsUpdated == other.realtimeServerEventRateLimitsUpdated; } 
@override int get hashCode { return realtimeServerEventRateLimitsUpdated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$RateLimitsUpdated(realtimeServerEventRateLimitsUpdated: $realtimeServerEventRateLimitsUpdated)'; } 
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
@immutable final class RealtimeServerEvent$ResponseContentPartAdded extends RealtimeServerEvent {const RealtimeServerEvent$ResponseContentPartAdded(this.realtimeServerEventResponseContentPartAdded);

factory RealtimeServerEvent$ResponseContentPartAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseContentPartAdded(RealtimeServerEventResponseContentPartAdded.fromJson(json)); }

final RealtimeServerEventResponseContentPartAdded realtimeServerEventResponseContentPartAdded;

@override String get type { return 'response.content_part.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseContentPartAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseContentPartAdded && realtimeServerEventResponseContentPartAdded == other.realtimeServerEventResponseContentPartAdded; } 
@override int get hashCode { return realtimeServerEventResponseContentPartAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseContentPartAdded(realtimeServerEventResponseContentPartAdded: $realtimeServerEventResponseContentPartAdded)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseContentPartDone extends RealtimeServerEvent {const RealtimeServerEvent$ResponseContentPartDone(this.realtimeServerEventResponseContentPartDone);

factory RealtimeServerEvent$ResponseContentPartDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseContentPartDone(RealtimeServerEventResponseContentPartDone.fromJson(json)); }

final RealtimeServerEventResponseContentPartDone realtimeServerEventResponseContentPartDone;

@override String get type { return 'response.content_part.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseContentPartDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseContentPartDone && realtimeServerEventResponseContentPartDone == other.realtimeServerEventResponseContentPartDone; } 
@override int get hashCode { return realtimeServerEventResponseContentPartDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseContentPartDone(realtimeServerEventResponseContentPartDone: $realtimeServerEventResponseContentPartDone)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseCreated extends RealtimeServerEvent {const RealtimeServerEvent$ResponseCreated(this.realtimeServerEventResponseCreated);

factory RealtimeServerEvent$ResponseCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseCreated(RealtimeServerEventResponseCreated.fromJson(json)); }

final RealtimeServerEventResponseCreated realtimeServerEventResponseCreated;

@override String get type { return 'response.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseCreated && realtimeServerEventResponseCreated == other.realtimeServerEventResponseCreated; } 
@override int get hashCode { return realtimeServerEventResponseCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseCreated(realtimeServerEventResponseCreated: $realtimeServerEventResponseCreated)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseDone extends RealtimeServerEvent {const RealtimeServerEvent$ResponseDone(this.realtimeServerEventResponseDone);

factory RealtimeServerEvent$ResponseDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseDone(RealtimeServerEventResponseDone.fromJson(json)); }

final RealtimeServerEventResponseDone realtimeServerEventResponseDone;

@override String get type { return 'response.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseDone && realtimeServerEventResponseDone == other.realtimeServerEventResponseDone; } 
@override int get hashCode { return realtimeServerEventResponseDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseDone(realtimeServerEventResponseDone: $realtimeServerEventResponseDone)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseFunctionCallArgumentsDelta extends RealtimeServerEvent {const RealtimeServerEvent$ResponseFunctionCallArgumentsDelta(this.realtimeServerEventResponseFunctionCallArgumentsDelta);

factory RealtimeServerEvent$ResponseFunctionCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseFunctionCallArgumentsDelta(RealtimeServerEventResponseFunctionCallArgumentsDelta.fromJson(json)); }

final RealtimeServerEventResponseFunctionCallArgumentsDelta realtimeServerEventResponseFunctionCallArgumentsDelta;

@override String get type { return 'response.function_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseFunctionCallArgumentsDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseFunctionCallArgumentsDelta && realtimeServerEventResponseFunctionCallArgumentsDelta == other.realtimeServerEventResponseFunctionCallArgumentsDelta; } 
@override int get hashCode { return realtimeServerEventResponseFunctionCallArgumentsDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseFunctionCallArgumentsDelta(realtimeServerEventResponseFunctionCallArgumentsDelta: $realtimeServerEventResponseFunctionCallArgumentsDelta)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseFunctionCallArgumentsDone extends RealtimeServerEvent {const RealtimeServerEvent$ResponseFunctionCallArgumentsDone(this.realtimeServerEventResponseFunctionCallArgumentsDone);

factory RealtimeServerEvent$ResponseFunctionCallArgumentsDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseFunctionCallArgumentsDone(RealtimeServerEventResponseFunctionCallArgumentsDone.fromJson(json)); }

final RealtimeServerEventResponseFunctionCallArgumentsDone realtimeServerEventResponseFunctionCallArgumentsDone;

@override String get type { return 'response.function_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseFunctionCallArgumentsDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseFunctionCallArgumentsDone && realtimeServerEventResponseFunctionCallArgumentsDone == other.realtimeServerEventResponseFunctionCallArgumentsDone; } 
@override int get hashCode { return realtimeServerEventResponseFunctionCallArgumentsDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseFunctionCallArgumentsDone(realtimeServerEventResponseFunctionCallArgumentsDone: $realtimeServerEventResponseFunctionCallArgumentsDone)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseOutputItemAdded extends RealtimeServerEvent {const RealtimeServerEvent$ResponseOutputItemAdded(this.realtimeServerEventResponseOutputItemAdded);

factory RealtimeServerEvent$ResponseOutputItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseOutputItemAdded(RealtimeServerEventResponseOutputItemAdded.fromJson(json)); }

final RealtimeServerEventResponseOutputItemAdded realtimeServerEventResponseOutputItemAdded;

@override String get type { return 'response.output_item.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseOutputItemAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseOutputItemAdded && realtimeServerEventResponseOutputItemAdded == other.realtimeServerEventResponseOutputItemAdded; } 
@override int get hashCode { return realtimeServerEventResponseOutputItemAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseOutputItemAdded(realtimeServerEventResponseOutputItemAdded: $realtimeServerEventResponseOutputItemAdded)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseOutputItemDone extends RealtimeServerEvent {const RealtimeServerEvent$ResponseOutputItemDone(this.realtimeServerEventResponseOutputItemDone);

factory RealtimeServerEvent$ResponseOutputItemDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseOutputItemDone(RealtimeServerEventResponseOutputItemDone.fromJson(json)); }

final RealtimeServerEventResponseOutputItemDone realtimeServerEventResponseOutputItemDone;

@override String get type { return 'response.output_item.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseOutputItemDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseOutputItemDone && realtimeServerEventResponseOutputItemDone == other.realtimeServerEventResponseOutputItemDone; } 
@override int get hashCode { return realtimeServerEventResponseOutputItemDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseOutputItemDone(realtimeServerEventResponseOutputItemDone: $realtimeServerEventResponseOutputItemDone)'; } 
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
@immutable final class RealtimeServerEvent$SessionCreated extends RealtimeServerEvent {const RealtimeServerEvent$SessionCreated(this.realtimeServerEventSessionCreated);

factory RealtimeServerEvent$SessionCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$SessionCreated(RealtimeServerEventSessionCreated.fromJson(json)); }

final RealtimeServerEventSessionCreated realtimeServerEventSessionCreated;

@override String get type { return 'session.created'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventSessionCreated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$SessionCreated && realtimeServerEventSessionCreated == other.realtimeServerEventSessionCreated; } 
@override int get hashCode { return realtimeServerEventSessionCreated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$SessionCreated(realtimeServerEventSessionCreated: $realtimeServerEventSessionCreated)'; } 
 }
@immutable final class RealtimeServerEvent$SessionUpdated extends RealtimeServerEvent {const RealtimeServerEvent$SessionUpdated(this.realtimeServerEventSessionUpdated);

factory RealtimeServerEvent$SessionUpdated.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$SessionUpdated(RealtimeServerEventSessionUpdated.fromJson(json)); }

final RealtimeServerEventSessionUpdated realtimeServerEventSessionUpdated;

@override String get type { return 'session.updated'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventSessionUpdated.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$SessionUpdated && realtimeServerEventSessionUpdated == other.realtimeServerEventSessionUpdated; } 
@override int get hashCode { return realtimeServerEventSessionUpdated.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$SessionUpdated(realtimeServerEventSessionUpdated: $realtimeServerEventSessionUpdated)'; } 
 }
@immutable final class RealtimeServerEvent$OutputAudioBufferStarted extends RealtimeServerEvent {const RealtimeServerEvent$OutputAudioBufferStarted(this.realtimeServerEventOutputAudioBufferStarted);

factory RealtimeServerEvent$OutputAudioBufferStarted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$OutputAudioBufferStarted(RealtimeServerEventOutputAudioBufferStarted.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferStarted realtimeServerEventOutputAudioBufferStarted;

@override String get type { return 'output_audio_buffer.started'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferStarted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$OutputAudioBufferStarted && realtimeServerEventOutputAudioBufferStarted == other.realtimeServerEventOutputAudioBufferStarted; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferStarted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$OutputAudioBufferStarted(realtimeServerEventOutputAudioBufferStarted: $realtimeServerEventOutputAudioBufferStarted)'; } 
 }
@immutable final class RealtimeServerEvent$OutputAudioBufferStopped extends RealtimeServerEvent {const RealtimeServerEvent$OutputAudioBufferStopped(this.realtimeServerEventOutputAudioBufferStopped);

factory RealtimeServerEvent$OutputAudioBufferStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$OutputAudioBufferStopped(RealtimeServerEventOutputAudioBufferStopped.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferStopped realtimeServerEventOutputAudioBufferStopped;

@override String get type { return 'output_audio_buffer.stopped'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferStopped.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$OutputAudioBufferStopped && realtimeServerEventOutputAudioBufferStopped == other.realtimeServerEventOutputAudioBufferStopped; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferStopped.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$OutputAudioBufferStopped(realtimeServerEventOutputAudioBufferStopped: $realtimeServerEventOutputAudioBufferStopped)'; } 
 }
@immutable final class RealtimeServerEvent$OutputAudioBufferCleared extends RealtimeServerEvent {const RealtimeServerEvent$OutputAudioBufferCleared(this.realtimeServerEventOutputAudioBufferCleared);

factory RealtimeServerEvent$OutputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$OutputAudioBufferCleared(RealtimeServerEventOutputAudioBufferCleared.fromJson(json)); }

final RealtimeServerEventOutputAudioBufferCleared realtimeServerEventOutputAudioBufferCleared;

@override String get type { return 'output_audio_buffer.cleared'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventOutputAudioBufferCleared.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$OutputAudioBufferCleared && realtimeServerEventOutputAudioBufferCleared == other.realtimeServerEventOutputAudioBufferCleared; } 
@override int get hashCode { return realtimeServerEventOutputAudioBufferCleared.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$OutputAudioBufferCleared(realtimeServerEventOutputAudioBufferCleared: $realtimeServerEventOutputAudioBufferCleared)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemAdded extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemAdded(this.realtimeServerEventConversationItemAdded);

factory RealtimeServerEvent$ConversationItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemAdded(RealtimeServerEventConversationItemAdded.fromJson(json)); }

final RealtimeServerEventConversationItemAdded realtimeServerEventConversationItemAdded;

@override String get type { return 'conversation.item.added'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemAdded.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemAdded && realtimeServerEventConversationItemAdded == other.realtimeServerEventConversationItemAdded; } 
@override int get hashCode { return realtimeServerEventConversationItemAdded.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemAdded(realtimeServerEventConversationItemAdded: $realtimeServerEventConversationItemAdded)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemDone extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemDone(this.realtimeServerEventConversationItemDone);

factory RealtimeServerEvent$ConversationItemDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemDone(RealtimeServerEventConversationItemDone.fromJson(json)); }

final RealtimeServerEventConversationItemDone realtimeServerEventConversationItemDone;

@override String get type { return 'conversation.item.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemDone && realtimeServerEventConversationItemDone == other.realtimeServerEventConversationItemDone; } 
@override int get hashCode { return realtimeServerEventConversationItemDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemDone(realtimeServerEventConversationItemDone: $realtimeServerEventConversationItemDone)'; } 
 }
@immutable final class RealtimeServerEvent$InputAudioBufferTimeoutTriggered extends RealtimeServerEvent {const RealtimeServerEvent$InputAudioBufferTimeoutTriggered(this.realtimeServerEventInputAudioBufferTimeoutTriggered);

factory RealtimeServerEvent$InputAudioBufferTimeoutTriggered.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$InputAudioBufferTimeoutTriggered(RealtimeServerEventInputAudioBufferTimeoutTriggered.fromJson(json)); }

final RealtimeServerEventInputAudioBufferTimeoutTriggered realtimeServerEventInputAudioBufferTimeoutTriggered;

@override String get type { return 'input_audio_buffer.timeout_triggered'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventInputAudioBufferTimeoutTriggered.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$InputAudioBufferTimeoutTriggered && realtimeServerEventInputAudioBufferTimeoutTriggered == other.realtimeServerEventInputAudioBufferTimeoutTriggered; } 
@override int get hashCode { return realtimeServerEventInputAudioBufferTimeoutTriggered.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$InputAudioBufferTimeoutTriggered(realtimeServerEventInputAudioBufferTimeoutTriggered: $realtimeServerEventInputAudioBufferTimeoutTriggered)'; } 
 }
@immutable final class RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment extends RealtimeServerEvent {const RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment(this.realtimeServerEventConversationItemInputAudioTranscriptionSegment);

factory RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment(RealtimeServerEventConversationItemInputAudioTranscriptionSegment.fromJson(json)); }

final RealtimeServerEventConversationItemInputAudioTranscriptionSegment realtimeServerEventConversationItemInputAudioTranscriptionSegment;

@override String get type { return 'conversation.item.input_audio_transcription.segment'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventConversationItemInputAudioTranscriptionSegment.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ConversationItemInputAudioTranscriptionSegment && realtimeServerEventConversationItemInputAudioTranscriptionSegment == other.realtimeServerEventConversationItemInputAudioTranscriptionSegment; } 
@override int get hashCode { return realtimeServerEventConversationItemInputAudioTranscriptionSegment.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ConversationItemInputAudioTranscriptionSegment(realtimeServerEventConversationItemInputAudioTranscriptionSegment: $realtimeServerEventConversationItemInputAudioTranscriptionSegment)'; } 
 }
@immutable final class RealtimeServerEvent$McpListToolsInProgress extends RealtimeServerEvent {const RealtimeServerEvent$McpListToolsInProgress(this.realtimeServerEventMcpListToolsInProgress);

factory RealtimeServerEvent$McpListToolsInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$McpListToolsInProgress(RealtimeServerEventMcpListToolsInProgress.fromJson(json)); }

final RealtimeServerEventMcpListToolsInProgress realtimeServerEventMcpListToolsInProgress;

@override String get type { return 'mcp_list_tools.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsInProgress.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$McpListToolsInProgress && realtimeServerEventMcpListToolsInProgress == other.realtimeServerEventMcpListToolsInProgress; } 
@override int get hashCode { return realtimeServerEventMcpListToolsInProgress.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$McpListToolsInProgress(realtimeServerEventMcpListToolsInProgress: $realtimeServerEventMcpListToolsInProgress)'; } 
 }
@immutable final class RealtimeServerEvent$McpListToolsCompleted extends RealtimeServerEvent {const RealtimeServerEvent$McpListToolsCompleted(this.realtimeServerEventMcpListToolsCompleted);

factory RealtimeServerEvent$McpListToolsCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$McpListToolsCompleted(RealtimeServerEventMcpListToolsCompleted.fromJson(json)); }

final RealtimeServerEventMcpListToolsCompleted realtimeServerEventMcpListToolsCompleted;

@override String get type { return 'mcp_list_tools.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$McpListToolsCompleted && realtimeServerEventMcpListToolsCompleted == other.realtimeServerEventMcpListToolsCompleted; } 
@override int get hashCode { return realtimeServerEventMcpListToolsCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$McpListToolsCompleted(realtimeServerEventMcpListToolsCompleted: $realtimeServerEventMcpListToolsCompleted)'; } 
 }
@immutable final class RealtimeServerEvent$McpListToolsFailed extends RealtimeServerEvent {const RealtimeServerEvent$McpListToolsFailed(this.realtimeServerEventMcpListToolsFailed);

factory RealtimeServerEvent$McpListToolsFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$McpListToolsFailed(RealtimeServerEventMcpListToolsFailed.fromJson(json)); }

final RealtimeServerEventMcpListToolsFailed realtimeServerEventMcpListToolsFailed;

@override String get type { return 'mcp_list_tools.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventMcpListToolsFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$McpListToolsFailed && realtimeServerEventMcpListToolsFailed == other.realtimeServerEventMcpListToolsFailed; } 
@override int get hashCode { return realtimeServerEventMcpListToolsFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$McpListToolsFailed(realtimeServerEventMcpListToolsFailed: $realtimeServerEventMcpListToolsFailed)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseMcpCallArgumentsDelta extends RealtimeServerEvent {const RealtimeServerEvent$ResponseMcpCallArgumentsDelta(this.realtimeServerEventResponseMcpCallArgumentsDelta);

factory RealtimeServerEvent$ResponseMcpCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseMcpCallArgumentsDelta(RealtimeServerEventResponseMcpCallArgumentsDelta.fromJson(json)); }

final RealtimeServerEventResponseMcpCallArgumentsDelta realtimeServerEventResponseMcpCallArgumentsDelta;

@override String get type { return 'response.mcp_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallArgumentsDelta.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseMcpCallArgumentsDelta && realtimeServerEventResponseMcpCallArgumentsDelta == other.realtimeServerEventResponseMcpCallArgumentsDelta; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallArgumentsDelta.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseMcpCallArgumentsDelta(realtimeServerEventResponseMcpCallArgumentsDelta: $realtimeServerEventResponseMcpCallArgumentsDelta)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseMcpCallArgumentsDone extends RealtimeServerEvent {const RealtimeServerEvent$ResponseMcpCallArgumentsDone(this.realtimeServerEventResponseMcpCallArgumentsDone);

factory RealtimeServerEvent$ResponseMcpCallArgumentsDone.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseMcpCallArgumentsDone(RealtimeServerEventResponseMcpCallArgumentsDone.fromJson(json)); }

final RealtimeServerEventResponseMcpCallArgumentsDone realtimeServerEventResponseMcpCallArgumentsDone;

@override String get type { return 'response.mcp_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallArgumentsDone.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseMcpCallArgumentsDone && realtimeServerEventResponseMcpCallArgumentsDone == other.realtimeServerEventResponseMcpCallArgumentsDone; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallArgumentsDone.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseMcpCallArgumentsDone(realtimeServerEventResponseMcpCallArgumentsDone: $realtimeServerEventResponseMcpCallArgumentsDone)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseMcpCallInProgress extends RealtimeServerEvent {const RealtimeServerEvent$ResponseMcpCallInProgress(this.realtimeServerEventResponseMcpCallInProgress);

factory RealtimeServerEvent$ResponseMcpCallInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseMcpCallInProgress(RealtimeServerEventResponseMcpCallInProgress.fromJson(json)); }

final RealtimeServerEventResponseMcpCallInProgress realtimeServerEventResponseMcpCallInProgress;

@override String get type { return 'response.mcp_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallInProgress.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseMcpCallInProgress && realtimeServerEventResponseMcpCallInProgress == other.realtimeServerEventResponseMcpCallInProgress; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallInProgress.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseMcpCallInProgress(realtimeServerEventResponseMcpCallInProgress: $realtimeServerEventResponseMcpCallInProgress)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseMcpCallCompleted extends RealtimeServerEvent {const RealtimeServerEvent$ResponseMcpCallCompleted(this.realtimeServerEventResponseMcpCallCompleted);

factory RealtimeServerEvent$ResponseMcpCallCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseMcpCallCompleted(RealtimeServerEventResponseMcpCallCompleted.fromJson(json)); }

final RealtimeServerEventResponseMcpCallCompleted realtimeServerEventResponseMcpCallCompleted;

@override String get type { return 'response.mcp_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallCompleted.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseMcpCallCompleted && realtimeServerEventResponseMcpCallCompleted == other.realtimeServerEventResponseMcpCallCompleted; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallCompleted.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseMcpCallCompleted(realtimeServerEventResponseMcpCallCompleted: $realtimeServerEventResponseMcpCallCompleted)'; } 
 }
@immutable final class RealtimeServerEvent$ResponseMcpCallFailed extends RealtimeServerEvent {const RealtimeServerEvent$ResponseMcpCallFailed(this.realtimeServerEventResponseMcpCallFailed);

factory RealtimeServerEvent$ResponseMcpCallFailed.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent$ResponseMcpCallFailed(RealtimeServerEventResponseMcpCallFailed.fromJson(json)); }

final RealtimeServerEventResponseMcpCallFailed realtimeServerEventResponseMcpCallFailed;

@override String get type { return 'response.mcp_call.failed'; } 
@override Map<String, dynamic> toJson() { return {...realtimeServerEventResponseMcpCallFailed.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEvent$ResponseMcpCallFailed && realtimeServerEventResponseMcpCallFailed == other.realtimeServerEventResponseMcpCallFailed; } 
@override int get hashCode { return realtimeServerEventResponseMcpCallFailed.hashCode; } 
@override String toString() { return 'RealtimeServerEvent\$ResponseMcpCallFailed(realtimeServerEventResponseMcpCallFailed: $realtimeServerEventResponseMcpCallFailed)'; } 
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
