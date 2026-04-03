// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_transcription_session_create_response_ga_audio_input.dart';/// Configuration for input audio for the session.
/// 
@immutable final class RealtimeTranscriptionSessionCreateResponseGaAudio {const RealtimeTranscriptionSessionCreateResponseGaAudio({this.input});

factory RealtimeTranscriptionSessionCreateResponseGaAudio.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateResponseGaAudio(
  input: json['input'] != null ? RealtimeTranscriptionSessionCreateResponseGaAudioInput.fromJson(json['input'] as Map<String, dynamic>) : null,
); }

final RealtimeTranscriptionSessionCreateResponseGaAudioInput? input;

Map<String, dynamic> toJson() { return {
  if (input != null) 'input': input?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'input'}.contains(key)); } 
RealtimeTranscriptionSessionCreateResponseGaAudio copyWith({RealtimeTranscriptionSessionCreateResponseGaAudioInput Function()? input}) { return RealtimeTranscriptionSessionCreateResponseGaAudio(
  input: input != null ? input() : this.input,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateResponseGaAudio &&
          input == other.input; } 
@override int get hashCode { return input.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGaAudio(input: $input)'; } 
 }
