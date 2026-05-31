// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transcript_text_delta_event.dart';import 'transcript_text_done_event.dart';import 'transcript_text_segment_event.dart';sealed class CreateTranscriptionResponseStreamEvent {const CreateTranscriptionResponseStreamEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateTranscriptionResponseStreamEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'transcript.text.segment' => CreateTranscriptionResponseStreamEventTranscriptTextSegment.fromJson(json),
  'transcript.text.delta' => CreateTranscriptionResponseStreamEventTranscriptTextDelta.fromJson(json),
  'transcript.text.done' => CreateTranscriptionResponseStreamEventTranscriptTextDone.fromJson(json),
  _ => CreateTranscriptionResponseStreamEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateTranscriptionResponseStreamEvent$Unknown; } 
 }
@immutable final class CreateTranscriptionResponseStreamEventTranscriptTextSegment extends CreateTranscriptionResponseStreamEvent {const CreateTranscriptionResponseStreamEventTranscriptTextSegment(this.transcriptTextSegmentEvent);

factory CreateTranscriptionResponseStreamEventTranscriptTextSegment.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseStreamEventTranscriptTextSegment(TranscriptTextSegmentEvent.fromJson(json)); }

final TranscriptTextSegmentEvent transcriptTextSegmentEvent;

@override String get type { return 'transcript.text.segment'; } 
@override Map<String, dynamic> toJson() { return {...transcriptTextSegmentEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseStreamEventTranscriptTextSegment && transcriptTextSegmentEvent == other.transcriptTextSegmentEvent; } 
@override int get hashCode { return transcriptTextSegmentEvent.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseStreamEventTranscriptTextSegment(transcriptTextSegmentEvent: $transcriptTextSegmentEvent)'; } 
 }
@immutable final class CreateTranscriptionResponseStreamEventTranscriptTextDelta extends CreateTranscriptionResponseStreamEvent {const CreateTranscriptionResponseStreamEventTranscriptTextDelta(this.transcriptTextDeltaEvent);

factory CreateTranscriptionResponseStreamEventTranscriptTextDelta.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseStreamEventTranscriptTextDelta(TranscriptTextDeltaEvent.fromJson(json)); }

final TranscriptTextDeltaEvent transcriptTextDeltaEvent;

@override String get type { return 'transcript.text.delta'; } 
@override Map<String, dynamic> toJson() { return {...transcriptTextDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseStreamEventTranscriptTextDelta && transcriptTextDeltaEvent == other.transcriptTextDeltaEvent; } 
@override int get hashCode { return transcriptTextDeltaEvent.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseStreamEventTranscriptTextDelta(transcriptTextDeltaEvent: $transcriptTextDeltaEvent)'; } 
 }
@immutable final class CreateTranscriptionResponseStreamEventTranscriptTextDone extends CreateTranscriptionResponseStreamEvent {const CreateTranscriptionResponseStreamEventTranscriptTextDone(this.transcriptTextDoneEvent);

factory CreateTranscriptionResponseStreamEventTranscriptTextDone.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseStreamEventTranscriptTextDone(TranscriptTextDoneEvent.fromJson(json)); }

final TranscriptTextDoneEvent transcriptTextDoneEvent;

@override String get type { return 'transcript.text.done'; } 
@override Map<String, dynamic> toJson() { return {...transcriptTextDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseStreamEventTranscriptTextDone && transcriptTextDoneEvent == other.transcriptTextDoneEvent; } 
@override int get hashCode { return transcriptTextDoneEvent.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseStreamEventTranscriptTextDone(transcriptTextDoneEvent: $transcriptTextDoneEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CreateTranscriptionResponseStreamEvent$Unknown extends CreateTranscriptionResponseStreamEvent {const CreateTranscriptionResponseStreamEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseStreamEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseStreamEvent.unknown($json)'; } 
 }
