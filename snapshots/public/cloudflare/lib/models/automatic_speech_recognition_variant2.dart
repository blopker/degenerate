// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AutomaticSpeechRecognitionVariant2 {const AutomaticSpeechRecognitionVariant2({required this.audio, this.sourceLang, this.targetLang, });

factory AutomaticSpeechRecognitionVariant2.fromJson(Map<String, dynamic> json) { return AutomaticSpeechRecognitionVariant2(
  audio: (json['audio'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
  sourceLang: json['source_lang'] as String?,
  targetLang: json['target_lang'] as String?,
); }

/// An array of integers that represent the audio data constrained to 8-bit unsigned integer values
final List<double> audio;

/// The language of the recorded audio
final String? sourceLang;

/// The language to translate the transcription into. Currently only English is supported.
final String? targetLang;

Map<String, dynamic> toJson() { return {
  'audio': audio,
  'source_lang': ?sourceLang,
  'target_lang': ?targetLang,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio'); } 
AutomaticSpeechRecognitionVariant2 copyWith({List<double>? audio, String Function()? sourceLang, String Function()? targetLang, }) { return AutomaticSpeechRecognitionVariant2(
  audio: audio ?? this.audio,
  sourceLang: sourceLang != null ? sourceLang() : this.sourceLang,
  targetLang: targetLang != null ? targetLang() : this.targetLang,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutomaticSpeechRecognitionVariant2 &&
          listEquals(audio, other.audio) &&
          sourceLang == other.sourceLang &&
          targetLang == other.targetLang; } 
@override int get hashCode { return Object.hash(Object.hashAll(audio), sourceLang, targetLang); } 
@override String toString() { return 'AutomaticSpeechRecognitionVariant2(audio: $audio, sourceLang: $sourceLang, targetLang: $targetLang)'; } 
 }
