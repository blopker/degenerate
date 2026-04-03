// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_server_event_conversation_created.dart';import 'realtime_server_event_conversation_item_added.dart';import 'realtime_server_event_conversation_item_created.dart';import 'realtime_server_event_conversation_item_deleted.dart';import 'realtime_server_event_conversation_item_done.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_completed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_delta.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_failed.dart';import 'realtime_server_event_conversation_item_input_audio_transcription_segment.dart';import 'realtime_server_event_conversation_item_retrieved.dart';import 'realtime_server_event_conversation_item_truncated.dart';import 'realtime_server_event_error.dart';import 'realtime_server_event_input_audio_buffer_cleared.dart';import 'realtime_server_event_input_audio_buffer_committed.dart';import 'realtime_server_event_input_audio_buffer_dtmf_event_received.dart';import 'realtime_server_event_input_audio_buffer_speech_started.dart';import 'realtime_server_event_input_audio_buffer_speech_stopped.dart';import 'realtime_server_event_input_audio_buffer_timeout_triggered.dart';import 'realtime_server_event_mcp_list_tools_completed.dart';import 'realtime_server_event_mcp_list_tools_failed.dart';import 'realtime_server_event_mcp_list_tools_in_progress.dart';import 'realtime_server_event_output_audio_buffer_cleared.dart';import 'realtime_server_event_output_audio_buffer_started.dart';import 'realtime_server_event_output_audio_buffer_stopped.dart';import 'realtime_server_event_rate_limits_updated.dart';import 'realtime_server_event_response_audio_delta.dart';import 'realtime_server_event_response_audio_done.dart';import 'realtime_server_event_response_audio_transcript_delta.dart';import 'realtime_server_event_response_audio_transcript_done.dart';import 'realtime_server_event_response_content_part_added.dart';import 'realtime_server_event_response_content_part_done.dart';import 'realtime_server_event_response_created.dart';import 'realtime_server_event_response_done.dart';import 'realtime_server_event_response_function_call_arguments_delta.dart';import 'realtime_server_event_response_function_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_arguments_delta.dart';import 'realtime_server_event_response_mcp_call_arguments_done.dart';import 'realtime_server_event_response_mcp_call_completed.dart';import 'realtime_server_event_response_mcp_call_failed.dart';import 'realtime_server_event_response_mcp_call_in_progress.dart';import 'realtime_server_event_response_output_item_added.dart';import 'realtime_server_event_response_output_item_done.dart';import 'realtime_server_event_response_text_delta.dart';import 'realtime_server_event_response_text_done.dart';import 'realtime_server_event_session_created.dart';import 'realtime_server_event_session_updated.dart';/// A realtime server event.
/// 
final class RealtimeServerEvent {const RealtimeServerEvent({this.realtimeServerEventConversationCreated, this.realtimeServerEventConversationItemCreated, this.realtimeServerEventConversationItemDeleted, this.realtimeServerEventConversationItemInputAudioTranscriptionCompleted, this.realtimeServerEventConversationItemInputAudioTranscriptionDelta, this.realtimeServerEventConversationItemInputAudioTranscriptionFailed, this.realtimeServerEventConversationItemRetrieved, this.realtimeServerEventConversationItemTruncated, this.realtimeServerEventError, this.realtimeServerEventInputAudioBufferCleared, this.realtimeServerEventInputAudioBufferCommitted, this.realtimeServerEventInputAudioBufferDtmfEventReceived, this.realtimeServerEventInputAudioBufferSpeechStarted, this.realtimeServerEventInputAudioBufferSpeechStopped, this.realtimeServerEventRateLimitsUpdated, this.realtimeServerEventResponseAudioDelta, this.realtimeServerEventResponseAudioDone, this.realtimeServerEventResponseAudioTranscriptDelta, this.realtimeServerEventResponseAudioTranscriptDone, this.realtimeServerEventResponseContentPartAdded, this.realtimeServerEventResponseContentPartDone, this.realtimeServerEventResponseCreated, this.realtimeServerEventResponseDone, this.realtimeServerEventResponseFunctionCallArgumentsDelta, this.realtimeServerEventResponseFunctionCallArgumentsDone, this.realtimeServerEventResponseOutputItemAdded, this.realtimeServerEventResponseOutputItemDone, this.realtimeServerEventResponseTextDelta, this.realtimeServerEventResponseTextDone, this.realtimeServerEventSessionCreated, this.realtimeServerEventSessionUpdated, this.realtimeServerEventOutputAudioBufferStarted, this.realtimeServerEventOutputAudioBufferStopped, this.realtimeServerEventOutputAudioBufferCleared, this.realtimeServerEventConversationItemAdded, this.realtimeServerEventConversationItemDone, this.realtimeServerEventInputAudioBufferTimeoutTriggered, this.realtimeServerEventConversationItemInputAudioTranscriptionSegment, this.realtimeServerEventMcpListToolsInProgress, this.realtimeServerEventMcpListToolsCompleted, this.realtimeServerEventMcpListToolsFailed, this.realtimeServerEventResponseMcpCallArgumentsDelta, this.realtimeServerEventResponseMcpCallArgumentsDone, this.realtimeServerEventResponseMcpCallInProgress, this.realtimeServerEventResponseMcpCallCompleted, this.realtimeServerEventResponseMcpCallFailed, });

factory RealtimeServerEvent.fromJson(Map<String, dynamic> json) { return RealtimeServerEvent(
  realtimeServerEventConversationCreated: RealtimeServerEventConversationCreated.canParse(json) ? RealtimeServerEventConversationCreated.fromJson(json) : null,
  realtimeServerEventConversationItemCreated: RealtimeServerEventConversationItemCreated.canParse(json) ? RealtimeServerEventConversationItemCreated.fromJson(json) : null,
  realtimeServerEventConversationItemDeleted: RealtimeServerEventConversationItemDeleted.canParse(json) ? RealtimeServerEventConversationItemDeleted.fromJson(json) : null,
  realtimeServerEventConversationItemInputAudioTranscriptionCompleted: RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.canParse(json) ? RealtimeServerEventConversationItemInputAudioTranscriptionCompleted.fromJson(json) : null,
  realtimeServerEventConversationItemInputAudioTranscriptionDelta: RealtimeServerEventConversationItemInputAudioTranscriptionDelta.canParse(json) ? RealtimeServerEventConversationItemInputAudioTranscriptionDelta.fromJson(json) : null,
  realtimeServerEventConversationItemInputAudioTranscriptionFailed: RealtimeServerEventConversationItemInputAudioTranscriptionFailed.canParse(json) ? RealtimeServerEventConversationItemInputAudioTranscriptionFailed.fromJson(json) : null,
  realtimeServerEventConversationItemRetrieved: RealtimeServerEventConversationItemRetrieved.canParse(json) ? RealtimeServerEventConversationItemRetrieved.fromJson(json) : null,
  realtimeServerEventConversationItemTruncated: RealtimeServerEventConversationItemTruncated.canParse(json) ? RealtimeServerEventConversationItemTruncated.fromJson(json) : null,
  realtimeServerEventError: RealtimeServerEventError.canParse(json) ? RealtimeServerEventError.fromJson(json) : null,
  realtimeServerEventInputAudioBufferCleared: RealtimeServerEventInputAudioBufferCleared.canParse(json) ? RealtimeServerEventInputAudioBufferCleared.fromJson(json) : null,
  realtimeServerEventInputAudioBufferCommitted: RealtimeServerEventInputAudioBufferCommitted.canParse(json) ? RealtimeServerEventInputAudioBufferCommitted.fromJson(json) : null,
  realtimeServerEventInputAudioBufferDtmfEventReceived: RealtimeServerEventInputAudioBufferDtmfEventReceived.canParse(json) ? RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(json) : null,
  realtimeServerEventInputAudioBufferSpeechStarted: RealtimeServerEventInputAudioBufferSpeechStarted.canParse(json) ? RealtimeServerEventInputAudioBufferSpeechStarted.fromJson(json) : null,
  realtimeServerEventInputAudioBufferSpeechStopped: RealtimeServerEventInputAudioBufferSpeechStopped.canParse(json) ? RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(json) : null,
  realtimeServerEventRateLimitsUpdated: RealtimeServerEventRateLimitsUpdated.canParse(json) ? RealtimeServerEventRateLimitsUpdated.fromJson(json) : null,
  realtimeServerEventResponseAudioDelta: RealtimeServerEventResponseAudioDelta.canParse(json) ? RealtimeServerEventResponseAudioDelta.fromJson(json) : null,
  realtimeServerEventResponseAudioDone: RealtimeServerEventResponseAudioDone.canParse(json) ? RealtimeServerEventResponseAudioDone.fromJson(json) : null,
  realtimeServerEventResponseAudioTranscriptDelta: RealtimeServerEventResponseAudioTranscriptDelta.canParse(json) ? RealtimeServerEventResponseAudioTranscriptDelta.fromJson(json) : null,
  realtimeServerEventResponseAudioTranscriptDone: RealtimeServerEventResponseAudioTranscriptDone.canParse(json) ? RealtimeServerEventResponseAudioTranscriptDone.fromJson(json) : null,
  realtimeServerEventResponseContentPartAdded: RealtimeServerEventResponseContentPartAdded.canParse(json) ? RealtimeServerEventResponseContentPartAdded.fromJson(json) : null,
  realtimeServerEventResponseContentPartDone: RealtimeServerEventResponseContentPartDone.canParse(json) ? RealtimeServerEventResponseContentPartDone.fromJson(json) : null,
  realtimeServerEventResponseCreated: RealtimeServerEventResponseCreated.canParse(json) ? RealtimeServerEventResponseCreated.fromJson(json) : null,
  realtimeServerEventResponseDone: RealtimeServerEventResponseDone.canParse(json) ? RealtimeServerEventResponseDone.fromJson(json) : null,
  realtimeServerEventResponseFunctionCallArgumentsDelta: RealtimeServerEventResponseFunctionCallArgumentsDelta.canParse(json) ? RealtimeServerEventResponseFunctionCallArgumentsDelta.fromJson(json) : null,
  realtimeServerEventResponseFunctionCallArgumentsDone: RealtimeServerEventResponseFunctionCallArgumentsDone.canParse(json) ? RealtimeServerEventResponseFunctionCallArgumentsDone.fromJson(json) : null,
  realtimeServerEventResponseOutputItemAdded: RealtimeServerEventResponseOutputItemAdded.canParse(json) ? RealtimeServerEventResponseOutputItemAdded.fromJson(json) : null,
  realtimeServerEventResponseOutputItemDone: RealtimeServerEventResponseOutputItemDone.canParse(json) ? RealtimeServerEventResponseOutputItemDone.fromJson(json) : null,
  realtimeServerEventResponseTextDelta: RealtimeServerEventResponseTextDelta.canParse(json) ? RealtimeServerEventResponseTextDelta.fromJson(json) : null,
  realtimeServerEventResponseTextDone: RealtimeServerEventResponseTextDone.canParse(json) ? RealtimeServerEventResponseTextDone.fromJson(json) : null,
  realtimeServerEventSessionCreated: RealtimeServerEventSessionCreated.canParse(json) ? RealtimeServerEventSessionCreated.fromJson(json) : null,
  realtimeServerEventSessionUpdated: RealtimeServerEventSessionUpdated.canParse(json) ? RealtimeServerEventSessionUpdated.fromJson(json) : null,
  realtimeServerEventOutputAudioBufferStarted: RealtimeServerEventOutputAudioBufferStarted.canParse(json) ? RealtimeServerEventOutputAudioBufferStarted.fromJson(json) : null,
  realtimeServerEventOutputAudioBufferStopped: RealtimeServerEventOutputAudioBufferStopped.canParse(json) ? RealtimeServerEventOutputAudioBufferStopped.fromJson(json) : null,
  realtimeServerEventOutputAudioBufferCleared: RealtimeServerEventOutputAudioBufferCleared.canParse(json) ? RealtimeServerEventOutputAudioBufferCleared.fromJson(json) : null,
  realtimeServerEventConversationItemAdded: RealtimeServerEventConversationItemAdded.canParse(json) ? RealtimeServerEventConversationItemAdded.fromJson(json) : null,
  realtimeServerEventConversationItemDone: RealtimeServerEventConversationItemDone.canParse(json) ? RealtimeServerEventConversationItemDone.fromJson(json) : null,
  realtimeServerEventInputAudioBufferTimeoutTriggered: RealtimeServerEventInputAudioBufferTimeoutTriggered.canParse(json) ? RealtimeServerEventInputAudioBufferTimeoutTriggered.fromJson(json) : null,
  realtimeServerEventConversationItemInputAudioTranscriptionSegment: RealtimeServerEventConversationItemInputAudioTranscriptionSegment.canParse(json) ? RealtimeServerEventConversationItemInputAudioTranscriptionSegment.fromJson(json) : null,
  realtimeServerEventMcpListToolsInProgress: RealtimeServerEventMcpListToolsInProgress.canParse(json) ? RealtimeServerEventMcpListToolsInProgress.fromJson(json) : null,
  realtimeServerEventMcpListToolsCompleted: RealtimeServerEventMcpListToolsCompleted.canParse(json) ? RealtimeServerEventMcpListToolsCompleted.fromJson(json) : null,
  realtimeServerEventMcpListToolsFailed: RealtimeServerEventMcpListToolsFailed.canParse(json) ? RealtimeServerEventMcpListToolsFailed.fromJson(json) : null,
  realtimeServerEventResponseMcpCallArgumentsDelta: RealtimeServerEventResponseMcpCallArgumentsDelta.canParse(json) ? RealtimeServerEventResponseMcpCallArgumentsDelta.fromJson(json) : null,
  realtimeServerEventResponseMcpCallArgumentsDone: RealtimeServerEventResponseMcpCallArgumentsDone.canParse(json) ? RealtimeServerEventResponseMcpCallArgumentsDone.fromJson(json) : null,
  realtimeServerEventResponseMcpCallInProgress: RealtimeServerEventResponseMcpCallInProgress.canParse(json) ? RealtimeServerEventResponseMcpCallInProgress.fromJson(json) : null,
  realtimeServerEventResponseMcpCallCompleted: RealtimeServerEventResponseMcpCallCompleted.canParse(json) ? RealtimeServerEventResponseMcpCallCompleted.fromJson(json) : null,
  realtimeServerEventResponseMcpCallFailed: RealtimeServerEventResponseMcpCallFailed.canParse(json) ? RealtimeServerEventResponseMcpCallFailed.fromJson(json) : null,
); }

final RealtimeServerEventConversationCreated? realtimeServerEventConversationCreated;

final RealtimeServerEventConversationItemCreated? realtimeServerEventConversationItemCreated;

final RealtimeServerEventConversationItemDeleted? realtimeServerEventConversationItemDeleted;

final RealtimeServerEventConversationItemInputAudioTranscriptionCompleted? realtimeServerEventConversationItemInputAudioTranscriptionCompleted;

final RealtimeServerEventConversationItemInputAudioTranscriptionDelta? realtimeServerEventConversationItemInputAudioTranscriptionDelta;

final RealtimeServerEventConversationItemInputAudioTranscriptionFailed? realtimeServerEventConversationItemInputAudioTranscriptionFailed;

final RealtimeServerEventConversationItemRetrieved? realtimeServerEventConversationItemRetrieved;

final RealtimeServerEventConversationItemTruncated? realtimeServerEventConversationItemTruncated;

final RealtimeServerEventError? realtimeServerEventError;

final RealtimeServerEventInputAudioBufferCleared? realtimeServerEventInputAudioBufferCleared;

final RealtimeServerEventInputAudioBufferCommitted? realtimeServerEventInputAudioBufferCommitted;

final RealtimeServerEventInputAudioBufferDtmfEventReceived? realtimeServerEventInputAudioBufferDtmfEventReceived;

final RealtimeServerEventInputAudioBufferSpeechStarted? realtimeServerEventInputAudioBufferSpeechStarted;

final RealtimeServerEventInputAudioBufferSpeechStopped? realtimeServerEventInputAudioBufferSpeechStopped;

final RealtimeServerEventRateLimitsUpdated? realtimeServerEventRateLimitsUpdated;

final RealtimeServerEventResponseAudioDelta? realtimeServerEventResponseAudioDelta;

final RealtimeServerEventResponseAudioDone? realtimeServerEventResponseAudioDone;

final RealtimeServerEventResponseAudioTranscriptDelta? realtimeServerEventResponseAudioTranscriptDelta;

final RealtimeServerEventResponseAudioTranscriptDone? realtimeServerEventResponseAudioTranscriptDone;

final RealtimeServerEventResponseContentPartAdded? realtimeServerEventResponseContentPartAdded;

final RealtimeServerEventResponseContentPartDone? realtimeServerEventResponseContentPartDone;

final RealtimeServerEventResponseCreated? realtimeServerEventResponseCreated;

final RealtimeServerEventResponseDone? realtimeServerEventResponseDone;

final RealtimeServerEventResponseFunctionCallArgumentsDelta? realtimeServerEventResponseFunctionCallArgumentsDelta;

final RealtimeServerEventResponseFunctionCallArgumentsDone? realtimeServerEventResponseFunctionCallArgumentsDone;

final RealtimeServerEventResponseOutputItemAdded? realtimeServerEventResponseOutputItemAdded;

final RealtimeServerEventResponseOutputItemDone? realtimeServerEventResponseOutputItemDone;

final RealtimeServerEventResponseTextDelta? realtimeServerEventResponseTextDelta;

final RealtimeServerEventResponseTextDone? realtimeServerEventResponseTextDone;

final RealtimeServerEventSessionCreated? realtimeServerEventSessionCreated;

final RealtimeServerEventSessionUpdated? realtimeServerEventSessionUpdated;

final RealtimeServerEventOutputAudioBufferStarted? realtimeServerEventOutputAudioBufferStarted;

final RealtimeServerEventOutputAudioBufferStopped? realtimeServerEventOutputAudioBufferStopped;

final RealtimeServerEventOutputAudioBufferCleared? realtimeServerEventOutputAudioBufferCleared;

final RealtimeServerEventConversationItemAdded? realtimeServerEventConversationItemAdded;

final RealtimeServerEventConversationItemDone? realtimeServerEventConversationItemDone;

final RealtimeServerEventInputAudioBufferTimeoutTriggered? realtimeServerEventInputAudioBufferTimeoutTriggered;

final RealtimeServerEventConversationItemInputAudioTranscriptionSegment? realtimeServerEventConversationItemInputAudioTranscriptionSegment;

final RealtimeServerEventMcpListToolsInProgress? realtimeServerEventMcpListToolsInProgress;

final RealtimeServerEventMcpListToolsCompleted? realtimeServerEventMcpListToolsCompleted;

final RealtimeServerEventMcpListToolsFailed? realtimeServerEventMcpListToolsFailed;

final RealtimeServerEventResponseMcpCallArgumentsDelta? realtimeServerEventResponseMcpCallArgumentsDelta;

final RealtimeServerEventResponseMcpCallArgumentsDone? realtimeServerEventResponseMcpCallArgumentsDone;

final RealtimeServerEventResponseMcpCallInProgress? realtimeServerEventResponseMcpCallInProgress;

final RealtimeServerEventResponseMcpCallCompleted? realtimeServerEventResponseMcpCallCompleted;

final RealtimeServerEventResponseMcpCallFailed? realtimeServerEventResponseMcpCallFailed;

/// At least one variant must be present.
bool get isValid { return realtimeServerEventConversationCreated != null || realtimeServerEventConversationItemCreated != null || realtimeServerEventConversationItemDeleted != null || realtimeServerEventConversationItemInputAudioTranscriptionCompleted != null || realtimeServerEventConversationItemInputAudioTranscriptionDelta != null || realtimeServerEventConversationItemInputAudioTranscriptionFailed != null || realtimeServerEventConversationItemRetrieved != null || realtimeServerEventConversationItemTruncated != null || realtimeServerEventError != null || realtimeServerEventInputAudioBufferCleared != null || realtimeServerEventInputAudioBufferCommitted != null || realtimeServerEventInputAudioBufferDtmfEventReceived != null || realtimeServerEventInputAudioBufferSpeechStarted != null || realtimeServerEventInputAudioBufferSpeechStopped != null || realtimeServerEventRateLimitsUpdated != null || realtimeServerEventResponseAudioDelta != null || realtimeServerEventResponseAudioDone != null || realtimeServerEventResponseAudioTranscriptDelta != null || realtimeServerEventResponseAudioTranscriptDone != null || realtimeServerEventResponseContentPartAdded != null || realtimeServerEventResponseContentPartDone != null || realtimeServerEventResponseCreated != null || realtimeServerEventResponseDone != null || realtimeServerEventResponseFunctionCallArgumentsDelta != null || realtimeServerEventResponseFunctionCallArgumentsDone != null || realtimeServerEventResponseOutputItemAdded != null || realtimeServerEventResponseOutputItemDone != null || realtimeServerEventResponseTextDelta != null || realtimeServerEventResponseTextDone != null || realtimeServerEventSessionCreated != null || realtimeServerEventSessionUpdated != null || realtimeServerEventOutputAudioBufferStarted != null || realtimeServerEventOutputAudioBufferStopped != null || realtimeServerEventOutputAudioBufferCleared != null || realtimeServerEventConversationItemAdded != null || realtimeServerEventConversationItemDone != null || realtimeServerEventInputAudioBufferTimeoutTriggered != null || realtimeServerEventConversationItemInputAudioTranscriptionSegment != null || realtimeServerEventMcpListToolsInProgress != null || realtimeServerEventMcpListToolsCompleted != null || realtimeServerEventMcpListToolsFailed != null || realtimeServerEventResponseMcpCallArgumentsDelta != null || realtimeServerEventResponseMcpCallArgumentsDone != null || realtimeServerEventResponseMcpCallInProgress != null || realtimeServerEventResponseMcpCallCompleted != null || realtimeServerEventResponseMcpCallFailed != null; } 
Map<String, dynamic> toJson() { return {
  ...?realtimeServerEventConversationCreated?.toJson(),
  ...?realtimeServerEventConversationItemCreated?.toJson(),
  ...?realtimeServerEventConversationItemDeleted?.toJson(),
  ...?realtimeServerEventConversationItemInputAudioTranscriptionCompleted?.toJson(),
  ...?realtimeServerEventConversationItemInputAudioTranscriptionDelta?.toJson(),
  ...?realtimeServerEventConversationItemInputAudioTranscriptionFailed?.toJson(),
  ...?realtimeServerEventConversationItemRetrieved?.toJson(),
  ...?realtimeServerEventConversationItemTruncated?.toJson(),
  ...?realtimeServerEventError?.toJson(),
  ...?realtimeServerEventInputAudioBufferCleared?.toJson(),
  ...?realtimeServerEventInputAudioBufferCommitted?.toJson(),
  ...?realtimeServerEventInputAudioBufferDtmfEventReceived?.toJson(),
  ...?realtimeServerEventInputAudioBufferSpeechStarted?.toJson(),
  ...?realtimeServerEventInputAudioBufferSpeechStopped?.toJson(),
  ...?realtimeServerEventRateLimitsUpdated?.toJson(),
  ...?realtimeServerEventResponseAudioDelta?.toJson(),
  ...?realtimeServerEventResponseAudioDone?.toJson(),
  ...?realtimeServerEventResponseAudioTranscriptDelta?.toJson(),
  ...?realtimeServerEventResponseAudioTranscriptDone?.toJson(),
  ...?realtimeServerEventResponseContentPartAdded?.toJson(),
  ...?realtimeServerEventResponseContentPartDone?.toJson(),
  ...?realtimeServerEventResponseCreated?.toJson(),
  ...?realtimeServerEventResponseDone?.toJson(),
  ...?realtimeServerEventResponseFunctionCallArgumentsDelta?.toJson(),
  ...?realtimeServerEventResponseFunctionCallArgumentsDone?.toJson(),
  ...?realtimeServerEventResponseOutputItemAdded?.toJson(),
  ...?realtimeServerEventResponseOutputItemDone?.toJson(),
  ...?realtimeServerEventResponseTextDelta?.toJson(),
  ...?realtimeServerEventResponseTextDone?.toJson(),
  ...?realtimeServerEventSessionCreated?.toJson(),
  ...?realtimeServerEventSessionUpdated?.toJson(),
  ...?realtimeServerEventOutputAudioBufferStarted?.toJson(),
  ...?realtimeServerEventOutputAudioBufferStopped?.toJson(),
  ...?realtimeServerEventOutputAudioBufferCleared?.toJson(),
  ...?realtimeServerEventConversationItemAdded?.toJson(),
  ...?realtimeServerEventConversationItemDone?.toJson(),
  ...?realtimeServerEventInputAudioBufferTimeoutTriggered?.toJson(),
  ...?realtimeServerEventConversationItemInputAudioTranscriptionSegment?.toJson(),
  ...?realtimeServerEventMcpListToolsInProgress?.toJson(),
  ...?realtimeServerEventMcpListToolsCompleted?.toJson(),
  ...?realtimeServerEventMcpListToolsFailed?.toJson(),
  ...?realtimeServerEventResponseMcpCallArgumentsDelta?.toJson(),
  ...?realtimeServerEventResponseMcpCallArgumentsDone?.toJson(),
  ...?realtimeServerEventResponseMcpCallInProgress?.toJson(),
  ...?realtimeServerEventResponseMcpCallCompleted?.toJson(),
  ...?realtimeServerEventResponseMcpCallFailed?.toJson(),
}; } 
 }
