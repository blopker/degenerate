// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration for input audio transcription, defaults to off and can be
/// set to `null` to turn off once on. Input audio transcription is not native
/// to the model, since the model consumes audio directly. Transcription runs
/// asynchronously and should be treated as rough guidance
/// rather than the representation understood by the model.
/// 
@immutable final class RealtimeSessionCreateRequestInputAudioTranscription {const RealtimeSessionCreateRequestInputAudioTranscription({this.model});

factory RealtimeSessionCreateRequestInputAudioTranscription.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateRequestInputAudioTranscription(
  model: json['model'] as String?,
); }

/// The model to use for transcription.
/// 
final String? model;

Map<String, dynamic> toJson() { return {
  'model': ?model,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'model'}.contains(key)); } 
RealtimeSessionCreateRequestInputAudioTranscription copyWith({String Function()? model}) { return RealtimeSessionCreateRequestInputAudioTranscription(
  model: model != null ? model() : this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateRequestInputAudioTranscription &&
          model == other.model; } 
@override int get hashCode { return model.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateRequestInputAudioTranscription(model: $model)'; } 
 }
