// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_session_create_response_audio_input.dart';import 'realtime_session_create_response_audio_output.dart';/// Configuration for input and output audio for the session.
/// 
@immutable final class RealtimeSessionCreateResponseAudio {const RealtimeSessionCreateResponseAudio({this.input, this.output, });

factory RealtimeSessionCreateResponseAudio.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateResponseAudio(
  input: json['input'] != null ? RealtimeSessionCreateResponseAudioInput.fromJson(json['input'] as Map<String, dynamic>) : null,
  output: json['output'] != null ? RealtimeSessionCreateResponseAudioOutput.fromJson(json['output'] as Map<String, dynamic>) : null,
); }

final RealtimeSessionCreateResponseAudioInput? input;

final RealtimeSessionCreateResponseAudioOutput? output;

Map<String, dynamic> toJson() { return {
  if (input != null) 'input': input?.toJson(),
  if (output != null) 'output': output?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'input', 'output'}.contains(key)); } 
RealtimeSessionCreateResponseAudio copyWith({RealtimeSessionCreateResponseAudioInput Function()? input, RealtimeSessionCreateResponseAudioOutput Function()? output, }) { return RealtimeSessionCreateResponseAudio(
  input: input != null ? input() : this.input,
  output: output != null ? output() : this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateResponseAudio &&
          input == other.input &&
          output == other.output; } 
@override int get hashCode { return Object.hash(input, output); } 
@override String toString() { return 'RealtimeSessionCreateResponseAudio(input: $input, output: $output)'; } 
 }
