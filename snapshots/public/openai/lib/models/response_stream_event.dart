// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_audio_delta_event.dart';import 'response_audio_done_event.dart';import 'response_audio_transcript_delta_event.dart';import 'response_audio_transcript_done_event.dart';import 'response_code_interpreter_call_code_delta_event.dart';import 'response_code_interpreter_call_code_done_event.dart';import 'response_code_interpreter_call_completed_event.dart';import 'response_code_interpreter_call_in_progress_event.dart';import 'response_code_interpreter_call_interpreting_event.dart';import 'response_completed_event.dart';import 'response_content_part_added_event.dart';import 'response_content_part_done_event.dart';import 'response_created_event.dart';import 'response_custom_tool_call_input_delta_event.dart';import 'response_custom_tool_call_input_done_event.dart';import 'response_error_event.dart';import 'response_failed_event.dart';import 'response_file_search_call_completed_event.dart';import 'response_file_search_call_in_progress_event.dart';import 'response_file_search_call_searching_event.dart';import 'response_function_call_arguments_delta_event.dart';import 'response_function_call_arguments_done_event.dart';import 'response_image_gen_call_completed_event.dart';import 'response_image_gen_call_generating_event.dart';import 'response_image_gen_call_in_progress_event.dart';import 'response_image_gen_call_partial_image_event.dart';import 'response_in_progress_event.dart';import 'response_incomplete_event.dart';import 'response_mcp_call_arguments_delta_event.dart';import 'response_mcp_call_arguments_done_event.dart';import 'response_mcp_call_completed_event.dart';import 'response_mcp_call_failed_event.dart';import 'response_mcp_call_in_progress_event.dart';import 'response_mcp_list_tools_completed_event.dart';import 'response_mcp_list_tools_failed_event.dart';import 'response_mcp_list_tools_in_progress_event.dart';import 'response_output_item_added_event.dart';import 'response_output_item_done_event.dart';import 'response_output_text_annotation_added_event.dart';import 'response_queued_event.dart';import 'response_reasoning_summary_part_added_event.dart';import 'response_reasoning_summary_part_done_event.dart';import 'response_reasoning_summary_text_delta_event.dart';import 'response_reasoning_summary_text_done_event.dart';import 'response_reasoning_text_delta_event.dart';import 'response_reasoning_text_done_event.dart';import 'response_refusal_delta_event.dart';import 'response_refusal_done_event.dart';import 'response_text_delta_event.dart';import 'response_text_done_event.dart';import 'response_web_search_call_completed_event.dart';import 'response_web_search_call_in_progress_event.dart';import 'response_web_search_call_searching_event.dart';sealed class ResponseStreamEvent {const ResponseStreamEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ResponseStreamEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'response.audio.delta' => ResponseStreamEventResponseAudioDelta.fromJson(json),
  'response.audio.done' => ResponseStreamEventResponseAudioDone.fromJson(json),
  'response.audio.transcript.delta' => ResponseStreamEventResponseAudioTranscriptDelta.fromJson(json),
  'response.audio.transcript.done' => ResponseStreamEventResponseAudioTranscriptDone.fromJson(json),
  'response.code_interpreter_call_code.delta' => ResponseStreamEventResponseCodeInterpreterCallCodeDelta.fromJson(json),
  'response.code_interpreter_call_code.done' => ResponseStreamEventResponseCodeInterpreterCallCodeDone.fromJson(json),
  'response.code_interpreter_call.completed' => ResponseStreamEventResponseCodeInterpreterCallCompleted.fromJson(json),
  'response.code_interpreter_call.in_progress' => ResponseStreamEventResponseCodeInterpreterCallInProgress.fromJson(json),
  'response.code_interpreter_call.interpreting' => ResponseStreamEventResponseCodeInterpreterCallInterpreting.fromJson(json),
  'response.completed' => ResponseStreamEventResponseCompleted.fromJson(json),
  'response.content_part.added' => ResponseStreamEventResponseContentPartAdded.fromJson(json),
  'response.content_part.done' => ResponseStreamEventResponseContentPartDone.fromJson(json),
  'response.created' => ResponseStreamEventResponseCreated.fromJson(json),
  'error' => ResponseStreamEventError.fromJson(json),
  'response.file_search_call.completed' => ResponseStreamEventResponseFileSearchCallCompleted.fromJson(json),
  'response.file_search_call.in_progress' => ResponseStreamEventResponseFileSearchCallInProgress.fromJson(json),
  'response.file_search_call.searching' => ResponseStreamEventResponseFileSearchCallSearching.fromJson(json),
  'response.function_call_arguments.delta' => ResponseStreamEventResponseFunctionCallArgumentsDelta.fromJson(json),
  'response.function_call_arguments.done' => ResponseStreamEventResponseFunctionCallArgumentsDone.fromJson(json),
  'response.in_progress' => ResponseStreamEventResponseInProgress.fromJson(json),
  'response.failed' => ResponseStreamEventResponseFailed.fromJson(json),
  'response.incomplete' => ResponseStreamEventResponseIncomplete.fromJson(json),
  'response.output_item.added' => ResponseStreamEventResponseOutputItemAdded.fromJson(json),
  'response.output_item.done' => ResponseStreamEventResponseOutputItemDone.fromJson(json),
  'response.reasoning_summary_part.added' => ResponseStreamEventResponseReasoningSummaryPartAdded.fromJson(json),
  'response.reasoning_summary_part.done' => ResponseStreamEventResponseReasoningSummaryPartDone.fromJson(json),
  'response.reasoning_summary_text.delta' => ResponseStreamEventResponseReasoningSummaryTextDelta.fromJson(json),
  'response.reasoning_summary_text.done' => ResponseStreamEventResponseReasoningSummaryTextDone.fromJson(json),
  'response.reasoning_text.delta' => ResponseStreamEventResponseReasoningTextDelta.fromJson(json),
  'response.reasoning_text.done' => ResponseStreamEventResponseReasoningTextDone.fromJson(json),
  'response.refusal.delta' => ResponseStreamEventResponseRefusalDelta.fromJson(json),
  'response.refusal.done' => ResponseStreamEventResponseRefusalDone.fromJson(json),
  'response.output_text.delta' => ResponseStreamEventResponseOutputTextDelta.fromJson(json),
  'response.output_text.done' => ResponseStreamEventResponseOutputTextDone.fromJson(json),
  'response.web_search_call.completed' => ResponseStreamEventResponseWebSearchCallCompleted.fromJson(json),
  'response.web_search_call.in_progress' => ResponseStreamEventResponseWebSearchCallInProgress.fromJson(json),
  'response.web_search_call.searching' => ResponseStreamEventResponseWebSearchCallSearching.fromJson(json),
  'response.image_generation_call.completed' => ResponseStreamEventResponseImageGenerationCallCompleted.fromJson(json),
  'response.image_generation_call.generating' => ResponseStreamEventResponseImageGenerationCallGenerating.fromJson(json),
  'response.image_generation_call.in_progress' => ResponseStreamEventResponseImageGenerationCallInProgress.fromJson(json),
  'response.image_generation_call.partial_image' => ResponseStreamEventResponseImageGenerationCallPartialImage.fromJson(json),
  'response.mcp_call_arguments.delta' => ResponseStreamEventResponseMcpCallArgumentsDelta.fromJson(json),
  'response.mcp_call_arguments.done' => ResponseStreamEventResponseMcpCallArgumentsDone.fromJson(json),
  'response.mcp_call.completed' => ResponseStreamEventResponseMcpCallCompleted.fromJson(json),
  'response.mcp_call.failed' => ResponseStreamEventResponseMcpCallFailed.fromJson(json),
  'response.mcp_call.in_progress' => ResponseStreamEventResponseMcpCallInProgress.fromJson(json),
  'response.mcp_list_tools.completed' => ResponseStreamEventResponseMcpListToolsCompleted.fromJson(json),
  'response.mcp_list_tools.failed' => ResponseStreamEventResponseMcpListToolsFailed.fromJson(json),
  'response.mcp_list_tools.in_progress' => ResponseStreamEventResponseMcpListToolsInProgress.fromJson(json),
  'response.output_text.annotation.added' => ResponseStreamEventResponseOutputTextAnnotationAdded.fromJson(json),
  'response.queued' => ResponseStreamEventResponseQueued.fromJson(json),
  'response.custom_tool_call_input.delta' => ResponseStreamEventResponseCustomToolCallInputDelta.fromJson(json),
  'response.custom_tool_call_input.done' => ResponseStreamEventResponseCustomToolCallInputDone.fromJson(json),
  _ => ResponseStreamEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResponseStreamEvent$Unknown; } 
 }
@immutable final class ResponseStreamEventResponseAudioDelta extends ResponseStreamEvent {const ResponseStreamEventResponseAudioDelta(this.responseAudioDeltaEvent);

factory ResponseStreamEventResponseAudioDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseAudioDelta(ResponseAudioDeltaEvent.fromJson(json)); }

final ResponseAudioDeltaEvent responseAudioDeltaEvent;

@override String get type { return 'response.audio.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseAudioDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseAudioDelta && responseAudioDeltaEvent == other.responseAudioDeltaEvent; } 
@override int get hashCode { return responseAudioDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseAudioDelta(responseAudioDeltaEvent: $responseAudioDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseAudioDone extends ResponseStreamEvent {const ResponseStreamEventResponseAudioDone(this.responseAudioDoneEvent);

factory ResponseStreamEventResponseAudioDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseAudioDone(ResponseAudioDoneEvent.fromJson(json)); }

final ResponseAudioDoneEvent responseAudioDoneEvent;

@override String get type { return 'response.audio.done'; } 
@override Map<String, dynamic> toJson() { return {...responseAudioDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseAudioDone && responseAudioDoneEvent == other.responseAudioDoneEvent; } 
@override int get hashCode { return responseAudioDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseAudioDone(responseAudioDoneEvent: $responseAudioDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseAudioTranscriptDelta extends ResponseStreamEvent {const ResponseStreamEventResponseAudioTranscriptDelta(this.responseAudioTranscriptDeltaEvent);

factory ResponseStreamEventResponseAudioTranscriptDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseAudioTranscriptDelta(ResponseAudioTranscriptDeltaEvent.fromJson(json)); }

final ResponseAudioTranscriptDeltaEvent responseAudioTranscriptDeltaEvent;

@override String get type { return 'response.audio.transcript.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseAudioTranscriptDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseAudioTranscriptDelta && responseAudioTranscriptDeltaEvent == other.responseAudioTranscriptDeltaEvent; } 
@override int get hashCode { return responseAudioTranscriptDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseAudioTranscriptDelta(responseAudioTranscriptDeltaEvent: $responseAudioTranscriptDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseAudioTranscriptDone extends ResponseStreamEvent {const ResponseStreamEventResponseAudioTranscriptDone(this.responseAudioTranscriptDoneEvent);

factory ResponseStreamEventResponseAudioTranscriptDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseAudioTranscriptDone(ResponseAudioTranscriptDoneEvent.fromJson(json)); }

final ResponseAudioTranscriptDoneEvent responseAudioTranscriptDoneEvent;

@override String get type { return 'response.audio.transcript.done'; } 
@override Map<String, dynamic> toJson() { return {...responseAudioTranscriptDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseAudioTranscriptDone && responseAudioTranscriptDoneEvent == other.responseAudioTranscriptDoneEvent; } 
@override int get hashCode { return responseAudioTranscriptDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseAudioTranscriptDone(responseAudioTranscriptDoneEvent: $responseAudioTranscriptDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCodeInterpreterCallCodeDelta extends ResponseStreamEvent {const ResponseStreamEventResponseCodeInterpreterCallCodeDelta(this.responseCodeInterpreterCallCodeDeltaEvent);

factory ResponseStreamEventResponseCodeInterpreterCallCodeDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCodeInterpreterCallCodeDelta(ResponseCodeInterpreterCallCodeDeltaEvent.fromJson(json)); }

final ResponseCodeInterpreterCallCodeDeltaEvent responseCodeInterpreterCallCodeDeltaEvent;

@override String get type { return 'response.code_interpreter_call_code.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseCodeInterpreterCallCodeDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCodeInterpreterCallCodeDelta && responseCodeInterpreterCallCodeDeltaEvent == other.responseCodeInterpreterCallCodeDeltaEvent; } 
@override int get hashCode { return responseCodeInterpreterCallCodeDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCodeInterpreterCallCodeDelta(responseCodeInterpreterCallCodeDeltaEvent: $responseCodeInterpreterCallCodeDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCodeInterpreterCallCodeDone extends ResponseStreamEvent {const ResponseStreamEventResponseCodeInterpreterCallCodeDone(this.responseCodeInterpreterCallCodeDoneEvent);

factory ResponseStreamEventResponseCodeInterpreterCallCodeDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCodeInterpreterCallCodeDone(ResponseCodeInterpreterCallCodeDoneEvent.fromJson(json)); }

final ResponseCodeInterpreterCallCodeDoneEvent responseCodeInterpreterCallCodeDoneEvent;

@override String get type { return 'response.code_interpreter_call_code.done'; } 
@override Map<String, dynamic> toJson() { return {...responseCodeInterpreterCallCodeDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCodeInterpreterCallCodeDone && responseCodeInterpreterCallCodeDoneEvent == other.responseCodeInterpreterCallCodeDoneEvent; } 
@override int get hashCode { return responseCodeInterpreterCallCodeDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCodeInterpreterCallCodeDone(responseCodeInterpreterCallCodeDoneEvent: $responseCodeInterpreterCallCodeDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCodeInterpreterCallCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseCodeInterpreterCallCompleted(this.responseCodeInterpreterCallCompletedEvent);

factory ResponseStreamEventResponseCodeInterpreterCallCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCodeInterpreterCallCompleted(ResponseCodeInterpreterCallCompletedEvent.fromJson(json)); }

final ResponseCodeInterpreterCallCompletedEvent responseCodeInterpreterCallCompletedEvent;

@override String get type { return 'response.code_interpreter_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseCodeInterpreterCallCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCodeInterpreterCallCompleted && responseCodeInterpreterCallCompletedEvent == other.responseCodeInterpreterCallCompletedEvent; } 
@override int get hashCode { return responseCodeInterpreterCallCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCodeInterpreterCallCompleted(responseCodeInterpreterCallCompletedEvent: $responseCodeInterpreterCallCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCodeInterpreterCallInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseCodeInterpreterCallInProgress(this.responseCodeInterpreterCallInProgressEvent);

factory ResponseStreamEventResponseCodeInterpreterCallInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCodeInterpreterCallInProgress(ResponseCodeInterpreterCallInProgressEvent.fromJson(json)); }

final ResponseCodeInterpreterCallInProgressEvent responseCodeInterpreterCallInProgressEvent;

@override String get type { return 'response.code_interpreter_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseCodeInterpreterCallInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCodeInterpreterCallInProgress && responseCodeInterpreterCallInProgressEvent == other.responseCodeInterpreterCallInProgressEvent; } 
@override int get hashCode { return responseCodeInterpreterCallInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCodeInterpreterCallInProgress(responseCodeInterpreterCallInProgressEvent: $responseCodeInterpreterCallInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCodeInterpreterCallInterpreting extends ResponseStreamEvent {const ResponseStreamEventResponseCodeInterpreterCallInterpreting(this.responseCodeInterpreterCallInterpretingEvent);

factory ResponseStreamEventResponseCodeInterpreterCallInterpreting.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCodeInterpreterCallInterpreting(ResponseCodeInterpreterCallInterpretingEvent.fromJson(json)); }

final ResponseCodeInterpreterCallInterpretingEvent responseCodeInterpreterCallInterpretingEvent;

@override String get type { return 'response.code_interpreter_call.interpreting'; } 
@override Map<String, dynamic> toJson() { return {...responseCodeInterpreterCallInterpretingEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCodeInterpreterCallInterpreting && responseCodeInterpreterCallInterpretingEvent == other.responseCodeInterpreterCallInterpretingEvent; } 
@override int get hashCode { return responseCodeInterpreterCallInterpretingEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCodeInterpreterCallInterpreting(responseCodeInterpreterCallInterpretingEvent: $responseCodeInterpreterCallInterpretingEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseCompleted(this.responseCompletedEvent);

factory ResponseStreamEventResponseCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCompleted(ResponseCompletedEvent.fromJson(json)); }

final ResponseCompletedEvent responseCompletedEvent;

@override String get type { return 'response.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCompleted && responseCompletedEvent == other.responseCompletedEvent; } 
@override int get hashCode { return responseCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCompleted(responseCompletedEvent: $responseCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseContentPartAdded extends ResponseStreamEvent {const ResponseStreamEventResponseContentPartAdded(this.responseContentPartAddedEvent);

factory ResponseStreamEventResponseContentPartAdded.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseContentPartAdded(ResponseContentPartAddedEvent.fromJson(json)); }

final ResponseContentPartAddedEvent responseContentPartAddedEvent;

@override String get type { return 'response.content_part.added'; } 
@override Map<String, dynamic> toJson() { return {...responseContentPartAddedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseContentPartAdded && responseContentPartAddedEvent == other.responseContentPartAddedEvent; } 
@override int get hashCode { return responseContentPartAddedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseContentPartAdded(responseContentPartAddedEvent: $responseContentPartAddedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseContentPartDone extends ResponseStreamEvent {const ResponseStreamEventResponseContentPartDone(this.responseContentPartDoneEvent);

factory ResponseStreamEventResponseContentPartDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseContentPartDone(ResponseContentPartDoneEvent.fromJson(json)); }

final ResponseContentPartDoneEvent responseContentPartDoneEvent;

@override String get type { return 'response.content_part.done'; } 
@override Map<String, dynamic> toJson() { return {...responseContentPartDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseContentPartDone && responseContentPartDoneEvent == other.responseContentPartDoneEvent; } 
@override int get hashCode { return responseContentPartDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseContentPartDone(responseContentPartDoneEvent: $responseContentPartDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCreated extends ResponseStreamEvent {const ResponseStreamEventResponseCreated(this.responseCreatedEvent);

factory ResponseStreamEventResponseCreated.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCreated(ResponseCreatedEvent.fromJson(json)); }

final ResponseCreatedEvent responseCreatedEvent;

@override String get type { return 'response.created'; } 
@override Map<String, dynamic> toJson() { return {...responseCreatedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCreated && responseCreatedEvent == other.responseCreatedEvent; } 
@override int get hashCode { return responseCreatedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCreated(responseCreatedEvent: $responseCreatedEvent)'; } 
 }
@immutable final class ResponseStreamEventError extends ResponseStreamEvent {const ResponseStreamEventError(this.responseErrorEvent);

factory ResponseStreamEventError.fromJson(Map<String, dynamic> json) { return ResponseStreamEventError(ResponseErrorEvent.fromJson(json)); }

final ResponseErrorEvent responseErrorEvent;

@override String get type { return 'error'; } 
@override Map<String, dynamic> toJson() { return {...responseErrorEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventError && responseErrorEvent == other.responseErrorEvent; } 
@override int get hashCode { return responseErrorEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventError(responseErrorEvent: $responseErrorEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFileSearchCallCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseFileSearchCallCompleted(this.responseFileSearchCallCompletedEvent);

factory ResponseStreamEventResponseFileSearchCallCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFileSearchCallCompleted(ResponseFileSearchCallCompletedEvent.fromJson(json)); }

final ResponseFileSearchCallCompletedEvent responseFileSearchCallCompletedEvent;

@override String get type { return 'response.file_search_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseFileSearchCallCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFileSearchCallCompleted && responseFileSearchCallCompletedEvent == other.responseFileSearchCallCompletedEvent; } 
@override int get hashCode { return responseFileSearchCallCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFileSearchCallCompleted(responseFileSearchCallCompletedEvent: $responseFileSearchCallCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFileSearchCallInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseFileSearchCallInProgress(this.responseFileSearchCallInProgressEvent);

factory ResponseStreamEventResponseFileSearchCallInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFileSearchCallInProgress(ResponseFileSearchCallInProgressEvent.fromJson(json)); }

final ResponseFileSearchCallInProgressEvent responseFileSearchCallInProgressEvent;

@override String get type { return 'response.file_search_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseFileSearchCallInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFileSearchCallInProgress && responseFileSearchCallInProgressEvent == other.responseFileSearchCallInProgressEvent; } 
@override int get hashCode { return responseFileSearchCallInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFileSearchCallInProgress(responseFileSearchCallInProgressEvent: $responseFileSearchCallInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFileSearchCallSearching extends ResponseStreamEvent {const ResponseStreamEventResponseFileSearchCallSearching(this.responseFileSearchCallSearchingEvent);

factory ResponseStreamEventResponseFileSearchCallSearching.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFileSearchCallSearching(ResponseFileSearchCallSearchingEvent.fromJson(json)); }

final ResponseFileSearchCallSearchingEvent responseFileSearchCallSearchingEvent;

@override String get type { return 'response.file_search_call.searching'; } 
@override Map<String, dynamic> toJson() { return {...responseFileSearchCallSearchingEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFileSearchCallSearching && responseFileSearchCallSearchingEvent == other.responseFileSearchCallSearchingEvent; } 
@override int get hashCode { return responseFileSearchCallSearchingEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFileSearchCallSearching(responseFileSearchCallSearchingEvent: $responseFileSearchCallSearchingEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFunctionCallArgumentsDelta extends ResponseStreamEvent {const ResponseStreamEventResponseFunctionCallArgumentsDelta(this.responseFunctionCallArgumentsDeltaEvent);

factory ResponseStreamEventResponseFunctionCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFunctionCallArgumentsDelta(ResponseFunctionCallArgumentsDeltaEvent.fromJson(json)); }

final ResponseFunctionCallArgumentsDeltaEvent responseFunctionCallArgumentsDeltaEvent;

@override String get type { return 'response.function_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseFunctionCallArgumentsDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFunctionCallArgumentsDelta && responseFunctionCallArgumentsDeltaEvent == other.responseFunctionCallArgumentsDeltaEvent; } 
@override int get hashCode { return responseFunctionCallArgumentsDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFunctionCallArgumentsDelta(responseFunctionCallArgumentsDeltaEvent: $responseFunctionCallArgumentsDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFunctionCallArgumentsDone extends ResponseStreamEvent {const ResponseStreamEventResponseFunctionCallArgumentsDone(this.responseFunctionCallArgumentsDoneEvent);

factory ResponseStreamEventResponseFunctionCallArgumentsDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFunctionCallArgumentsDone(ResponseFunctionCallArgumentsDoneEvent.fromJson(json)); }

final ResponseFunctionCallArgumentsDoneEvent responseFunctionCallArgumentsDoneEvent;

@override String get type { return 'response.function_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...responseFunctionCallArgumentsDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFunctionCallArgumentsDone && responseFunctionCallArgumentsDoneEvent == other.responseFunctionCallArgumentsDoneEvent; } 
@override int get hashCode { return responseFunctionCallArgumentsDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFunctionCallArgumentsDone(responseFunctionCallArgumentsDoneEvent: $responseFunctionCallArgumentsDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseInProgress(this.responseInProgressEvent);

factory ResponseStreamEventResponseInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseInProgress(ResponseInProgressEvent.fromJson(json)); }

final ResponseInProgressEvent responseInProgressEvent;

@override String get type { return 'response.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseInProgress && responseInProgressEvent == other.responseInProgressEvent; } 
@override int get hashCode { return responseInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseInProgress(responseInProgressEvent: $responseInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseFailed extends ResponseStreamEvent {const ResponseStreamEventResponseFailed(this.responseFailedEvent);

factory ResponseStreamEventResponseFailed.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseFailed(ResponseFailedEvent.fromJson(json)); }

final ResponseFailedEvent responseFailedEvent;

@override String get type { return 'response.failed'; } 
@override Map<String, dynamic> toJson() { return {...responseFailedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseFailed && responseFailedEvent == other.responseFailedEvent; } 
@override int get hashCode { return responseFailedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseFailed(responseFailedEvent: $responseFailedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseIncomplete extends ResponseStreamEvent {const ResponseStreamEventResponseIncomplete(this.responseIncompleteEvent);

factory ResponseStreamEventResponseIncomplete.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseIncomplete(ResponseIncompleteEvent.fromJson(json)); }

final ResponseIncompleteEvent responseIncompleteEvent;

@override String get type { return 'response.incomplete'; } 
@override Map<String, dynamic> toJson() { return {...responseIncompleteEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseIncomplete && responseIncompleteEvent == other.responseIncompleteEvent; } 
@override int get hashCode { return responseIncompleteEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseIncomplete(responseIncompleteEvent: $responseIncompleteEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseOutputItemAdded extends ResponseStreamEvent {const ResponseStreamEventResponseOutputItemAdded(this.responseOutputItemAddedEvent);

factory ResponseStreamEventResponseOutputItemAdded.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseOutputItemAdded(ResponseOutputItemAddedEvent.fromJson(json)); }

final ResponseOutputItemAddedEvent responseOutputItemAddedEvent;

@override String get type { return 'response.output_item.added'; } 
@override Map<String, dynamic> toJson() { return {...responseOutputItemAddedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseOutputItemAdded && responseOutputItemAddedEvent == other.responseOutputItemAddedEvent; } 
@override int get hashCode { return responseOutputItemAddedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseOutputItemAdded(responseOutputItemAddedEvent: $responseOutputItemAddedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseOutputItemDone extends ResponseStreamEvent {const ResponseStreamEventResponseOutputItemDone(this.responseOutputItemDoneEvent);

factory ResponseStreamEventResponseOutputItemDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseOutputItemDone(ResponseOutputItemDoneEvent.fromJson(json)); }

final ResponseOutputItemDoneEvent responseOutputItemDoneEvent;

@override String get type { return 'response.output_item.done'; } 
@override Map<String, dynamic> toJson() { return {...responseOutputItemDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseOutputItemDone && responseOutputItemDoneEvent == other.responseOutputItemDoneEvent; } 
@override int get hashCode { return responseOutputItemDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseOutputItemDone(responseOutputItemDoneEvent: $responseOutputItemDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningSummaryPartAdded extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningSummaryPartAdded(this.responseReasoningSummaryPartAddedEvent);

factory ResponseStreamEventResponseReasoningSummaryPartAdded.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningSummaryPartAdded(ResponseReasoningSummaryPartAddedEvent.fromJson(json)); }

final ResponseReasoningSummaryPartAddedEvent responseReasoningSummaryPartAddedEvent;

@override String get type { return 'response.reasoning_summary_part.added'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningSummaryPartAddedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningSummaryPartAdded && responseReasoningSummaryPartAddedEvent == other.responseReasoningSummaryPartAddedEvent; } 
@override int get hashCode { return responseReasoningSummaryPartAddedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningSummaryPartAdded(responseReasoningSummaryPartAddedEvent: $responseReasoningSummaryPartAddedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningSummaryPartDone extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningSummaryPartDone(this.responseReasoningSummaryPartDoneEvent);

factory ResponseStreamEventResponseReasoningSummaryPartDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningSummaryPartDone(ResponseReasoningSummaryPartDoneEvent.fromJson(json)); }

final ResponseReasoningSummaryPartDoneEvent responseReasoningSummaryPartDoneEvent;

@override String get type { return 'response.reasoning_summary_part.done'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningSummaryPartDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningSummaryPartDone && responseReasoningSummaryPartDoneEvent == other.responseReasoningSummaryPartDoneEvent; } 
@override int get hashCode { return responseReasoningSummaryPartDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningSummaryPartDone(responseReasoningSummaryPartDoneEvent: $responseReasoningSummaryPartDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningSummaryTextDelta extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningSummaryTextDelta(this.responseReasoningSummaryTextDeltaEvent);

factory ResponseStreamEventResponseReasoningSummaryTextDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningSummaryTextDelta(ResponseReasoningSummaryTextDeltaEvent.fromJson(json)); }

final ResponseReasoningSummaryTextDeltaEvent responseReasoningSummaryTextDeltaEvent;

@override String get type { return 'response.reasoning_summary_text.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningSummaryTextDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningSummaryTextDelta && responseReasoningSummaryTextDeltaEvent == other.responseReasoningSummaryTextDeltaEvent; } 
@override int get hashCode { return responseReasoningSummaryTextDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningSummaryTextDelta(responseReasoningSummaryTextDeltaEvent: $responseReasoningSummaryTextDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningSummaryTextDone extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningSummaryTextDone(this.responseReasoningSummaryTextDoneEvent);

factory ResponseStreamEventResponseReasoningSummaryTextDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningSummaryTextDone(ResponseReasoningSummaryTextDoneEvent.fromJson(json)); }

final ResponseReasoningSummaryTextDoneEvent responseReasoningSummaryTextDoneEvent;

@override String get type { return 'response.reasoning_summary_text.done'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningSummaryTextDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningSummaryTextDone && responseReasoningSummaryTextDoneEvent == other.responseReasoningSummaryTextDoneEvent; } 
@override int get hashCode { return responseReasoningSummaryTextDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningSummaryTextDone(responseReasoningSummaryTextDoneEvent: $responseReasoningSummaryTextDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningTextDelta extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningTextDelta(this.responseReasoningTextDeltaEvent);

factory ResponseStreamEventResponseReasoningTextDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningTextDelta(ResponseReasoningTextDeltaEvent.fromJson(json)); }

final ResponseReasoningTextDeltaEvent responseReasoningTextDeltaEvent;

@override String get type { return 'response.reasoning_text.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningTextDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningTextDelta && responseReasoningTextDeltaEvent == other.responseReasoningTextDeltaEvent; } 
@override int get hashCode { return responseReasoningTextDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningTextDelta(responseReasoningTextDeltaEvent: $responseReasoningTextDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseReasoningTextDone extends ResponseStreamEvent {const ResponseStreamEventResponseReasoningTextDone(this.responseReasoningTextDoneEvent);

factory ResponseStreamEventResponseReasoningTextDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseReasoningTextDone(ResponseReasoningTextDoneEvent.fromJson(json)); }

final ResponseReasoningTextDoneEvent responseReasoningTextDoneEvent;

@override String get type { return 'response.reasoning_text.done'; } 
@override Map<String, dynamic> toJson() { return {...responseReasoningTextDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseReasoningTextDone && responseReasoningTextDoneEvent == other.responseReasoningTextDoneEvent; } 
@override int get hashCode { return responseReasoningTextDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseReasoningTextDone(responseReasoningTextDoneEvent: $responseReasoningTextDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseRefusalDelta extends ResponseStreamEvent {const ResponseStreamEventResponseRefusalDelta(this.responseRefusalDeltaEvent);

factory ResponseStreamEventResponseRefusalDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseRefusalDelta(ResponseRefusalDeltaEvent.fromJson(json)); }

final ResponseRefusalDeltaEvent responseRefusalDeltaEvent;

@override String get type { return 'response.refusal.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseRefusalDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseRefusalDelta && responseRefusalDeltaEvent == other.responseRefusalDeltaEvent; } 
@override int get hashCode { return responseRefusalDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseRefusalDelta(responseRefusalDeltaEvent: $responseRefusalDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseRefusalDone extends ResponseStreamEvent {const ResponseStreamEventResponseRefusalDone(this.responseRefusalDoneEvent);

factory ResponseStreamEventResponseRefusalDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseRefusalDone(ResponseRefusalDoneEvent.fromJson(json)); }

final ResponseRefusalDoneEvent responseRefusalDoneEvent;

@override String get type { return 'response.refusal.done'; } 
@override Map<String, dynamic> toJson() { return {...responseRefusalDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseRefusalDone && responseRefusalDoneEvent == other.responseRefusalDoneEvent; } 
@override int get hashCode { return responseRefusalDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseRefusalDone(responseRefusalDoneEvent: $responseRefusalDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseOutputTextDelta extends ResponseStreamEvent {const ResponseStreamEventResponseOutputTextDelta(this.responseTextDeltaEvent);

factory ResponseStreamEventResponseOutputTextDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseOutputTextDelta(ResponseTextDeltaEvent.fromJson(json)); }

final ResponseTextDeltaEvent responseTextDeltaEvent;

@override String get type { return 'response.output_text.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseTextDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseOutputTextDelta && responseTextDeltaEvent == other.responseTextDeltaEvent; } 
@override int get hashCode { return responseTextDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseOutputTextDelta(responseTextDeltaEvent: $responseTextDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseOutputTextDone extends ResponseStreamEvent {const ResponseStreamEventResponseOutputTextDone(this.responseTextDoneEvent);

factory ResponseStreamEventResponseOutputTextDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseOutputTextDone(ResponseTextDoneEvent.fromJson(json)); }

final ResponseTextDoneEvent responseTextDoneEvent;

@override String get type { return 'response.output_text.done'; } 
@override Map<String, dynamic> toJson() { return {...responseTextDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseOutputTextDone && responseTextDoneEvent == other.responseTextDoneEvent; } 
@override int get hashCode { return responseTextDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseOutputTextDone(responseTextDoneEvent: $responseTextDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseWebSearchCallCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseWebSearchCallCompleted(this.responseWebSearchCallCompletedEvent);

factory ResponseStreamEventResponseWebSearchCallCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseWebSearchCallCompleted(ResponseWebSearchCallCompletedEvent.fromJson(json)); }

final ResponseWebSearchCallCompletedEvent responseWebSearchCallCompletedEvent;

@override String get type { return 'response.web_search_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseWebSearchCallCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseWebSearchCallCompleted && responseWebSearchCallCompletedEvent == other.responseWebSearchCallCompletedEvent; } 
@override int get hashCode { return responseWebSearchCallCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseWebSearchCallCompleted(responseWebSearchCallCompletedEvent: $responseWebSearchCallCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseWebSearchCallInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseWebSearchCallInProgress(this.responseWebSearchCallInProgressEvent);

factory ResponseStreamEventResponseWebSearchCallInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseWebSearchCallInProgress(ResponseWebSearchCallInProgressEvent.fromJson(json)); }

final ResponseWebSearchCallInProgressEvent responseWebSearchCallInProgressEvent;

@override String get type { return 'response.web_search_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseWebSearchCallInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseWebSearchCallInProgress && responseWebSearchCallInProgressEvent == other.responseWebSearchCallInProgressEvent; } 
@override int get hashCode { return responseWebSearchCallInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseWebSearchCallInProgress(responseWebSearchCallInProgressEvent: $responseWebSearchCallInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseWebSearchCallSearching extends ResponseStreamEvent {const ResponseStreamEventResponseWebSearchCallSearching(this.responseWebSearchCallSearchingEvent);

factory ResponseStreamEventResponseWebSearchCallSearching.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseWebSearchCallSearching(ResponseWebSearchCallSearchingEvent.fromJson(json)); }

final ResponseWebSearchCallSearchingEvent responseWebSearchCallSearchingEvent;

@override String get type { return 'response.web_search_call.searching'; } 
@override Map<String, dynamic> toJson() { return {...responseWebSearchCallSearchingEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseWebSearchCallSearching && responseWebSearchCallSearchingEvent == other.responseWebSearchCallSearchingEvent; } 
@override int get hashCode { return responseWebSearchCallSearchingEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseWebSearchCallSearching(responseWebSearchCallSearchingEvent: $responseWebSearchCallSearchingEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseImageGenerationCallCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseImageGenerationCallCompleted(this.responseImageGenCallCompletedEvent);

factory ResponseStreamEventResponseImageGenerationCallCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseImageGenerationCallCompleted(ResponseImageGenCallCompletedEvent.fromJson(json)); }

final ResponseImageGenCallCompletedEvent responseImageGenCallCompletedEvent;

@override String get type { return 'response.image_generation_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseImageGenCallCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseImageGenerationCallCompleted && responseImageGenCallCompletedEvent == other.responseImageGenCallCompletedEvent; } 
@override int get hashCode { return responseImageGenCallCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseImageGenerationCallCompleted(responseImageGenCallCompletedEvent: $responseImageGenCallCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseImageGenerationCallGenerating extends ResponseStreamEvent {const ResponseStreamEventResponseImageGenerationCallGenerating(this.responseImageGenCallGeneratingEvent);

factory ResponseStreamEventResponseImageGenerationCallGenerating.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseImageGenerationCallGenerating(ResponseImageGenCallGeneratingEvent.fromJson(json)); }

final ResponseImageGenCallGeneratingEvent responseImageGenCallGeneratingEvent;

@override String get type { return 'response.image_generation_call.generating'; } 
@override Map<String, dynamic> toJson() { return {...responseImageGenCallGeneratingEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseImageGenerationCallGenerating && responseImageGenCallGeneratingEvent == other.responseImageGenCallGeneratingEvent; } 
@override int get hashCode { return responseImageGenCallGeneratingEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseImageGenerationCallGenerating(responseImageGenCallGeneratingEvent: $responseImageGenCallGeneratingEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseImageGenerationCallInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseImageGenerationCallInProgress(this.responseImageGenCallInProgressEvent);

factory ResponseStreamEventResponseImageGenerationCallInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseImageGenerationCallInProgress(ResponseImageGenCallInProgressEvent.fromJson(json)); }

final ResponseImageGenCallInProgressEvent responseImageGenCallInProgressEvent;

@override String get type { return 'response.image_generation_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseImageGenCallInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseImageGenerationCallInProgress && responseImageGenCallInProgressEvent == other.responseImageGenCallInProgressEvent; } 
@override int get hashCode { return responseImageGenCallInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseImageGenerationCallInProgress(responseImageGenCallInProgressEvent: $responseImageGenCallInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseImageGenerationCallPartialImage extends ResponseStreamEvent {const ResponseStreamEventResponseImageGenerationCallPartialImage(this.responseImageGenCallPartialImageEvent);

factory ResponseStreamEventResponseImageGenerationCallPartialImage.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseImageGenerationCallPartialImage(ResponseImageGenCallPartialImageEvent.fromJson(json)); }

final ResponseImageGenCallPartialImageEvent responseImageGenCallPartialImageEvent;

@override String get type { return 'response.image_generation_call.partial_image'; } 
@override Map<String, dynamic> toJson() { return {...responseImageGenCallPartialImageEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseImageGenerationCallPartialImage && responseImageGenCallPartialImageEvent == other.responseImageGenCallPartialImageEvent; } 
@override int get hashCode { return responseImageGenCallPartialImageEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseImageGenerationCallPartialImage(responseImageGenCallPartialImageEvent: $responseImageGenCallPartialImageEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpCallArgumentsDelta extends ResponseStreamEvent {const ResponseStreamEventResponseMcpCallArgumentsDelta(this.responseMcpCallArgumentsDeltaEvent);

factory ResponseStreamEventResponseMcpCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpCallArgumentsDelta(ResponseMcpCallArgumentsDeltaEvent.fromJson(json)); }

final ResponseMcpCallArgumentsDeltaEvent responseMcpCallArgumentsDeltaEvent;

@override String get type { return 'response.mcp_call_arguments.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpCallArgumentsDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpCallArgumentsDelta && responseMcpCallArgumentsDeltaEvent == other.responseMcpCallArgumentsDeltaEvent; } 
@override int get hashCode { return responseMcpCallArgumentsDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpCallArgumentsDelta(responseMcpCallArgumentsDeltaEvent: $responseMcpCallArgumentsDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpCallArgumentsDone extends ResponseStreamEvent {const ResponseStreamEventResponseMcpCallArgumentsDone(this.responseMcpCallArgumentsDoneEvent);

factory ResponseStreamEventResponseMcpCallArgumentsDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpCallArgumentsDone(ResponseMcpCallArgumentsDoneEvent.fromJson(json)); }

final ResponseMcpCallArgumentsDoneEvent responseMcpCallArgumentsDoneEvent;

@override String get type { return 'response.mcp_call_arguments.done'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpCallArgumentsDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpCallArgumentsDone && responseMcpCallArgumentsDoneEvent == other.responseMcpCallArgumentsDoneEvent; } 
@override int get hashCode { return responseMcpCallArgumentsDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpCallArgumentsDone(responseMcpCallArgumentsDoneEvent: $responseMcpCallArgumentsDoneEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpCallCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseMcpCallCompleted(this.responseMcpCallCompletedEvent);

factory ResponseStreamEventResponseMcpCallCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpCallCompleted(ResponseMcpCallCompletedEvent.fromJson(json)); }

final ResponseMcpCallCompletedEvent responseMcpCallCompletedEvent;

@override String get type { return 'response.mcp_call.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpCallCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpCallCompleted && responseMcpCallCompletedEvent == other.responseMcpCallCompletedEvent; } 
@override int get hashCode { return responseMcpCallCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpCallCompleted(responseMcpCallCompletedEvent: $responseMcpCallCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpCallFailed extends ResponseStreamEvent {const ResponseStreamEventResponseMcpCallFailed(this.responseMcpCallFailedEvent);

factory ResponseStreamEventResponseMcpCallFailed.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpCallFailed(ResponseMcpCallFailedEvent.fromJson(json)); }

final ResponseMcpCallFailedEvent responseMcpCallFailedEvent;

@override String get type { return 'response.mcp_call.failed'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpCallFailedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpCallFailed && responseMcpCallFailedEvent == other.responseMcpCallFailedEvent; } 
@override int get hashCode { return responseMcpCallFailedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpCallFailed(responseMcpCallFailedEvent: $responseMcpCallFailedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpCallInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseMcpCallInProgress(this.responseMcpCallInProgressEvent);

factory ResponseStreamEventResponseMcpCallInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpCallInProgress(ResponseMcpCallInProgressEvent.fromJson(json)); }

final ResponseMcpCallInProgressEvent responseMcpCallInProgressEvent;

@override String get type { return 'response.mcp_call.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpCallInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpCallInProgress && responseMcpCallInProgressEvent == other.responseMcpCallInProgressEvent; } 
@override int get hashCode { return responseMcpCallInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpCallInProgress(responseMcpCallInProgressEvent: $responseMcpCallInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpListToolsCompleted extends ResponseStreamEvent {const ResponseStreamEventResponseMcpListToolsCompleted(this.responseMcpListToolsCompletedEvent);

factory ResponseStreamEventResponseMcpListToolsCompleted.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpListToolsCompleted(ResponseMcpListToolsCompletedEvent.fromJson(json)); }

final ResponseMcpListToolsCompletedEvent responseMcpListToolsCompletedEvent;

@override String get type { return 'response.mcp_list_tools.completed'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpListToolsCompletedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpListToolsCompleted && responseMcpListToolsCompletedEvent == other.responseMcpListToolsCompletedEvent; } 
@override int get hashCode { return responseMcpListToolsCompletedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpListToolsCompleted(responseMcpListToolsCompletedEvent: $responseMcpListToolsCompletedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpListToolsFailed extends ResponseStreamEvent {const ResponseStreamEventResponseMcpListToolsFailed(this.responseMcpListToolsFailedEvent);

factory ResponseStreamEventResponseMcpListToolsFailed.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpListToolsFailed(ResponseMcpListToolsFailedEvent.fromJson(json)); }

final ResponseMcpListToolsFailedEvent responseMcpListToolsFailedEvent;

@override String get type { return 'response.mcp_list_tools.failed'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpListToolsFailedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpListToolsFailed && responseMcpListToolsFailedEvent == other.responseMcpListToolsFailedEvent; } 
@override int get hashCode { return responseMcpListToolsFailedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpListToolsFailed(responseMcpListToolsFailedEvent: $responseMcpListToolsFailedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseMcpListToolsInProgress extends ResponseStreamEvent {const ResponseStreamEventResponseMcpListToolsInProgress(this.responseMcpListToolsInProgressEvent);

factory ResponseStreamEventResponseMcpListToolsInProgress.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseMcpListToolsInProgress(ResponseMcpListToolsInProgressEvent.fromJson(json)); }

final ResponseMcpListToolsInProgressEvent responseMcpListToolsInProgressEvent;

@override String get type { return 'response.mcp_list_tools.in_progress'; } 
@override Map<String, dynamic> toJson() { return {...responseMcpListToolsInProgressEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseMcpListToolsInProgress && responseMcpListToolsInProgressEvent == other.responseMcpListToolsInProgressEvent; } 
@override int get hashCode { return responseMcpListToolsInProgressEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseMcpListToolsInProgress(responseMcpListToolsInProgressEvent: $responseMcpListToolsInProgressEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseOutputTextAnnotationAdded extends ResponseStreamEvent {const ResponseStreamEventResponseOutputTextAnnotationAdded(this.responseOutputTextAnnotationAddedEvent);

factory ResponseStreamEventResponseOutputTextAnnotationAdded.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseOutputTextAnnotationAdded(ResponseOutputTextAnnotationAddedEvent.fromJson(json)); }

final ResponseOutputTextAnnotationAddedEvent responseOutputTextAnnotationAddedEvent;

@override String get type { return 'response.output_text.annotation.added'; } 
@override Map<String, dynamic> toJson() { return {...responseOutputTextAnnotationAddedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseOutputTextAnnotationAdded && responseOutputTextAnnotationAddedEvent == other.responseOutputTextAnnotationAddedEvent; } 
@override int get hashCode { return responseOutputTextAnnotationAddedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseOutputTextAnnotationAdded(responseOutputTextAnnotationAddedEvent: $responseOutputTextAnnotationAddedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseQueued extends ResponseStreamEvent {const ResponseStreamEventResponseQueued(this.responseQueuedEvent);

factory ResponseStreamEventResponseQueued.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseQueued(ResponseQueuedEvent.fromJson(json)); }

final ResponseQueuedEvent responseQueuedEvent;

@override String get type { return 'response.queued'; } 
@override Map<String, dynamic> toJson() { return {...responseQueuedEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseQueued && responseQueuedEvent == other.responseQueuedEvent; } 
@override int get hashCode { return responseQueuedEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseQueued(responseQueuedEvent: $responseQueuedEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCustomToolCallInputDelta extends ResponseStreamEvent {const ResponseStreamEventResponseCustomToolCallInputDelta(this.responseCustomToolCallInputDeltaEvent);

factory ResponseStreamEventResponseCustomToolCallInputDelta.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCustomToolCallInputDelta(ResponseCustomToolCallInputDeltaEvent.fromJson(json)); }

final ResponseCustomToolCallInputDeltaEvent responseCustomToolCallInputDeltaEvent;

@override String get type { return 'response.custom_tool_call_input.delta'; } 
@override Map<String, dynamic> toJson() { return {...responseCustomToolCallInputDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCustomToolCallInputDelta && responseCustomToolCallInputDeltaEvent == other.responseCustomToolCallInputDeltaEvent; } 
@override int get hashCode { return responseCustomToolCallInputDeltaEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCustomToolCallInputDelta(responseCustomToolCallInputDeltaEvent: $responseCustomToolCallInputDeltaEvent)'; } 
 }
@immutable final class ResponseStreamEventResponseCustomToolCallInputDone extends ResponseStreamEvent {const ResponseStreamEventResponseCustomToolCallInputDone(this.responseCustomToolCallInputDoneEvent);

factory ResponseStreamEventResponseCustomToolCallInputDone.fromJson(Map<String, dynamic> json) { return ResponseStreamEventResponseCustomToolCallInputDone(ResponseCustomToolCallInputDoneEvent.fromJson(json)); }

final ResponseCustomToolCallInputDoneEvent responseCustomToolCallInputDoneEvent;

@override String get type { return 'response.custom_tool_call_input.done'; } 
@override Map<String, dynamic> toJson() { return {...responseCustomToolCallInputDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEventResponseCustomToolCallInputDone && responseCustomToolCallInputDoneEvent == other.responseCustomToolCallInputDoneEvent; } 
@override int get hashCode { return responseCustomToolCallInputDoneEvent.hashCode; } 
@override String toString() { return 'ResponseStreamEventResponseCustomToolCallInputDone(responseCustomToolCallInputDoneEvent: $responseCustomToolCallInputDoneEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResponseStreamEvent$Unknown extends ResponseStreamEvent {const ResponseStreamEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStreamEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResponseStreamEvent.unknown($json)'; } 
 }
