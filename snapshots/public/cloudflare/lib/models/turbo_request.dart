// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'turbo_request_audio.dart';@immutable final class TurboRequest {const TurboRequest({required this.audio, this.beamSize, this.compressionRatioThreshold, this.conditionOnPreviousText, this.hallucinationSilenceThreshold, this.initialPrompt, this.language, this.logProbThreshold, this.noSpeechThreshold, this.prefix, this.task, this.vadFilter, });

factory TurboRequest.fromJson(Map<String, dynamic> json) { return TurboRequest(
  audio: TurboRequestAudio.fromJson(json['audio']),
  beamSize: json['beam_size'] != null ? (json['beam_size'] as num).toInt() : null,
  compressionRatioThreshold: json['compression_ratio_threshold'] != null ? (json['compression_ratio_threshold'] as num).toDouble() : null,
  conditionOnPreviousText: json['condition_on_previous_text'] as bool?,
  hallucinationSilenceThreshold: json['hallucination_silence_threshold'] != null ? (json['hallucination_silence_threshold'] as num).toDouble() : null,
  initialPrompt: json['initial_prompt'] as String?,
  language: json['language'] as String?,
  logProbThreshold: json['log_prob_threshold'] != null ? (json['log_prob_threshold'] as num).toDouble() : null,
  noSpeechThreshold: json['no_speech_threshold'] != null ? (json['no_speech_threshold'] as num).toDouble() : null,
  prefix: json['prefix'] as String?,
  task: json['task'] as String?,
  vadFilter: json['vad_filter'] as bool?,
); }

final TurboRequestAudio audio;

/// The number of beams to use in beam search decoding. Higher values may improve accuracy at the cost of speed.
final int? beamSize;

/// Threshold for filtering out segments with high compression ratio, which often indicate repetitive or hallucinated text.
final double? compressionRatioThreshold;

/// Whether to condition on previous text during transcription. Setting to false may help prevent hallucination loops.
final bool? conditionOnPreviousText;

/// Optional threshold (in seconds) to skip silent periods that may cause hallucinations.
final double? hallucinationSilenceThreshold;

/// A text prompt to help provide context to the model on the contents of the audio.
final String? initialPrompt;

/// The language of the audio being transcribed or translated.
final String? language;

/// Threshold for filtering out segments with low average log probability, indicating low confidence.
final double? logProbThreshold;

/// Threshold for detecting no-speech segments. Segments with no-speech probability above this value are skipped.
final double? noSpeechThreshold;

/// The prefix appended to the beginning of the output of the transcription and can guide the transcription result.
final String? prefix;

/// Supported tasks are 'translate' or 'transcribe'.
final String? task;

/// Preprocess the audio with a voice activity detection model.
final bool? vadFilter;

/// The value with the schema default applied when absent.
int get beamSizeOrDefault { return beamSize ?? 5; } 
/// The value with the schema default applied when absent.
double get compressionRatioThresholdOrDefault { return compressionRatioThreshold ?? 2.4; } 
/// The value with the schema default applied when absent.
bool get conditionOnPreviousTextOrDefault { return conditionOnPreviousText ?? true; } 
/// The value with the schema default applied when absent.
double get logProbThresholdOrDefault { return logProbThreshold ?? -1.0; } 
/// The value with the schema default applied when absent.
double get noSpeechThresholdOrDefault { return noSpeechThreshold ?? 0.6; } 
/// The value with the schema default applied when absent.
String get taskOrDefault { return task ?? 'transcribe'; } 
/// The value with the schema default applied when absent.
bool get vadFilterOrDefault { return vadFilter ?? false; } 
Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'beam_size': ?beamSize,
  'compression_ratio_threshold': ?compressionRatioThreshold,
  'condition_on_previous_text': ?conditionOnPreviousText,
  'hallucination_silence_threshold': ?hallucinationSilenceThreshold,
  'initial_prompt': ?initialPrompt,
  'language': ?language,
  'log_prob_threshold': ?logProbThreshold,
  'no_speech_threshold': ?noSpeechThreshold,
  'prefix': ?prefix,
  'task': ?task,
  'vad_filter': ?vadFilter,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio'); } 
TurboRequest copyWith({TurboRequestAudio? audio, int? Function()? beamSize, double? Function()? compressionRatioThreshold, bool? Function()? conditionOnPreviousText, double? Function()? hallucinationSilenceThreshold, String? Function()? initialPrompt, String? Function()? language, double? Function()? logProbThreshold, double? Function()? noSpeechThreshold, String? Function()? prefix, String? Function()? task, bool? Function()? vadFilter, }) { return TurboRequest(
  audio: audio ?? this.audio,
  beamSize: beamSize != null ? beamSize() : this.beamSize,
  compressionRatioThreshold: compressionRatioThreshold != null ? compressionRatioThreshold() : this.compressionRatioThreshold,
  conditionOnPreviousText: conditionOnPreviousText != null ? conditionOnPreviousText() : this.conditionOnPreviousText,
  hallucinationSilenceThreshold: hallucinationSilenceThreshold != null ? hallucinationSilenceThreshold() : this.hallucinationSilenceThreshold,
  initialPrompt: initialPrompt != null ? initialPrompt() : this.initialPrompt,
  language: language != null ? language() : this.language,
  logProbThreshold: logProbThreshold != null ? logProbThreshold() : this.logProbThreshold,
  noSpeechThreshold: noSpeechThreshold != null ? noSpeechThreshold() : this.noSpeechThreshold,
  prefix: prefix != null ? prefix() : this.prefix,
  task: task != null ? task() : this.task,
  vadFilter: vadFilter != null ? vadFilter() : this.vadFilter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TurboRequest &&
          audio == other.audio &&
          beamSize == other.beamSize &&
          compressionRatioThreshold == other.compressionRatioThreshold &&
          conditionOnPreviousText == other.conditionOnPreviousText &&
          hallucinationSilenceThreshold == other.hallucinationSilenceThreshold &&
          initialPrompt == other.initialPrompt &&
          language == other.language &&
          logProbThreshold == other.logProbThreshold &&
          noSpeechThreshold == other.noSpeechThreshold &&
          prefix == other.prefix &&
          task == other.task &&
          vadFilter == other.vadFilter; } 
@override int get hashCode { return Object.hash(audio, beamSize, compressionRatioThreshold, conditionOnPreviousText, hallucinationSilenceThreshold, initialPrompt, language, logProbThreshold, noSpeechThreshold, prefix, task, vadFilter); } 
@override String toString() { return 'TurboRequest(audio: $audio, beamSize: $beamSize, compressionRatioThreshold: $compressionRatioThreshold, conditionOnPreviousText: $conditionOnPreviousText, hallucinationSilenceThreshold: $hallucinationSilenceThreshold, initialPrompt: $initialPrompt, language: $language, logProbThreshold: $logProbThreshold, noSpeechThreshold: $noSpeechThreshold, prefix: $prefix, task: $task, vadFilter: $vadFilter)'; } 
 }
