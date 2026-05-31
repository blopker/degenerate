// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speech_audio_delta_event.dart';import 'speech_audio_done_event.dart';sealed class CreateSpeechResponseStreamEvent {const CreateSpeechResponseStreamEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateSpeechResponseStreamEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'speech.audio.delta' => CreateSpeechResponseStreamEventSpeechAudioDelta.fromJson(json),
  'speech.audio.done' => CreateSpeechResponseStreamEventSpeechAudioDone.fromJson(json),
  _ => CreateSpeechResponseStreamEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateSpeechResponseStreamEvent$Unknown; } 
 }
@immutable final class CreateSpeechResponseStreamEventSpeechAudioDelta extends CreateSpeechResponseStreamEvent {const CreateSpeechResponseStreamEventSpeechAudioDelta(this.speechAudioDeltaEvent);

factory CreateSpeechResponseStreamEventSpeechAudioDelta.fromJson(Map<String, dynamic> json) { return CreateSpeechResponseStreamEventSpeechAudioDelta(SpeechAudioDeltaEvent.fromJson(json)); }

final SpeechAudioDeltaEvent speechAudioDeltaEvent;

@override String get type { return 'speech.audio.delta'; } 
@override Map<String, dynamic> toJson() { return {...speechAudioDeltaEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateSpeechResponseStreamEventSpeechAudioDelta && speechAudioDeltaEvent == other.speechAudioDeltaEvent; } 
@override int get hashCode { return speechAudioDeltaEvent.hashCode; } 
@override String toString() { return 'CreateSpeechResponseStreamEventSpeechAudioDelta(speechAudioDeltaEvent: $speechAudioDeltaEvent)'; } 
 }
@immutable final class CreateSpeechResponseStreamEventSpeechAudioDone extends CreateSpeechResponseStreamEvent {const CreateSpeechResponseStreamEventSpeechAudioDone(this.speechAudioDoneEvent);

factory CreateSpeechResponseStreamEventSpeechAudioDone.fromJson(Map<String, dynamic> json) { return CreateSpeechResponseStreamEventSpeechAudioDone(SpeechAudioDoneEvent.fromJson(json)); }

final SpeechAudioDoneEvent speechAudioDoneEvent;

@override String get type { return 'speech.audio.done'; } 
@override Map<String, dynamic> toJson() { return {...speechAudioDoneEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateSpeechResponseStreamEventSpeechAudioDone && speechAudioDoneEvent == other.speechAudioDoneEvent; } 
@override int get hashCode { return speechAudioDoneEvent.hashCode; } 
@override String toString() { return 'CreateSpeechResponseStreamEventSpeechAudioDone(speechAudioDoneEvent: $speechAudioDoneEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CreateSpeechResponseStreamEvent$Unknown extends CreateSpeechResponseStreamEvent {const CreateSpeechResponseStreamEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateSpeechResponseStreamEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateSpeechResponseStreamEvent.unknown($json)'; } 
 }
