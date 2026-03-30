// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtime_session_create_response_ga_audio_input.dart';import 'realtime_session_create_response_ga_audio_output.dart';/// Configuration for input and output audio.
/// 
final class RealtimeSessionCreateResponseGaAudio {const RealtimeSessionCreateResponseGaAudio({this.input, this.output, });

factory RealtimeSessionCreateResponseGaAudio.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateResponseGaAudio(
  input: json['input'] != null ? RealtimeSessionCreateResponseGaAudioInput.fromJson(json['input'] as Map<String, dynamic>) : null,
  output: json['output'] != null ? RealtimeSessionCreateResponseGaAudioOutput.fromJson(json['output'] as Map<String, dynamic>) : null,
); }

final RealtimeSessionCreateResponseGaAudioInput? input;

final RealtimeSessionCreateResponseGaAudioOutput? output;

Map<String, dynamic> toJson() { return {
  if (input != null) 'input': input?.toJson(),
  if (output != null) 'output': output?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'input', 'output'}.contains(key)); } 
RealtimeSessionCreateResponseGaAudio copyWith({RealtimeSessionCreateResponseGaAudioInput Function()? input, RealtimeSessionCreateResponseGaAudioOutput Function()? output, }) { return RealtimeSessionCreateResponseGaAudio(
  input: input != null ? input() : this.input,
  output: output != null ? output() : this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateResponseGaAudio &&
          input == other.input &&
          output == other.output; } 
@override int get hashCode { return Object.hash(input, output); } 
@override String toString() { return 'RealtimeSessionCreateResponseGaAudio(input: $input, output: $output)'; } 
 }
