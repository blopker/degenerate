// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_transcription_session_create_request_ga_audio_input.dart';/// Configuration for input and output audio.
/// 
@immutable final class RealtimeTranscriptionSessionCreateRequestGaAudio {const RealtimeTranscriptionSessionCreateRequestGaAudio({this.input});

factory RealtimeTranscriptionSessionCreateRequestGaAudio.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateRequestGaAudio(
  input: json['input'] != null ? RealtimeTranscriptionSessionCreateRequestGaAudioInput.fromJson(json['input'] as Map<String, dynamic>) : null,
); }

final RealtimeTranscriptionSessionCreateRequestGaAudioInput? input;

Map<String, dynamic> toJson() { return {
  if (input != null) 'input': input?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'input'}.contains(key)); } 
RealtimeTranscriptionSessionCreateRequestGaAudio copyWith({RealtimeTranscriptionSessionCreateRequestGaAudioInput Function()? input}) { return RealtimeTranscriptionSessionCreateRequestGaAudio(
  input: input != null ? input() : this.input,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateRequestGaAudio &&
          input == other.input; } 
@override int get hashCode { return input.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateRequestGaAudio(input: $input)'; } 
 }
