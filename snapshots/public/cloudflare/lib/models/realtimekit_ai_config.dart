// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_summarization_config.dart';import 'realtimekit_transcription_config.dart';/// The AI Config allows you to customize the behavior of meeting transcriptions and summaries
@immutable final class RealtimekitAiConfig {const RealtimekitAiConfig({this.summarization, this.transcription, });

factory RealtimekitAiConfig.fromJson(Map<String, dynamic> json) { return RealtimekitAiConfig(
  summarization: json['summarization'] != null ? RealtimekitSummarizationConfig.fromJson(json['summarization'] as Map<String, dynamic>) : null,
  transcription: json['transcription'] != null ? RealtimekitTranscriptionConfig.fromJson(json['transcription'] as Map<String, dynamic>) : null,
); }

final RealtimekitSummarizationConfig? summarization;

final RealtimekitTranscriptionConfig? transcription;

Map<String, dynamic> toJson() { return {
  if (summarization != null) 'summarization': summarization?.toJson(),
  if (transcription != null) 'transcription': transcription?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'summarization', 'transcription'}.contains(key)); } 
RealtimekitAiConfig copyWith({RealtimekitSummarizationConfig Function()? summarization, RealtimekitTranscriptionConfig Function()? transcription, }) { return RealtimekitAiConfig(
  summarization: summarization != null ? summarization() : this.summarization,
  transcription: transcription != null ? transcription() : this.transcription,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitAiConfig &&
          summarization == other.summarization &&
          transcription == other.transcription; } 
@override int get hashCode { return Object.hash(summarization, transcription); } 
@override String toString() { return 'RealtimekitAiConfig(summarization: $summarization, transcription: $transcription)'; } 
 }
