// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtime_response_audio_output.dart';/// Configuration for audio output.
final class RealtimeResponseAudio {const RealtimeResponseAudio({this.output});

factory RealtimeResponseAudio.fromJson(Map<String, dynamic> json) { return RealtimeResponseAudio(
  output: json['output'] != null ? RealtimeResponseAudioOutput.fromJson(json['output'] as Map<String, dynamic>) : null,
); }

final RealtimeResponseAudioOutput? output;

Map<String, dynamic> toJson() { return {
  if (output != null) 'output': output?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'output'}.contains(key)); } 
RealtimeResponseAudio copyWith({RealtimeResponseAudioOutput Function()? output}) { return RealtimeResponseAudio(
  output: output != null ? output() : this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeResponseAudio &&
          output == other.output; } 
@override int get hashCode { return output.hashCode; } 
@override String toString() { return 'RealtimeResponseAudio(output: $output)'; } 
 }
