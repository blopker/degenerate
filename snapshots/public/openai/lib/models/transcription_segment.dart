// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TranscriptionSegment {const TranscriptionSegment({required this.id, required this.seek, required this.start, required this.end, required this.text, required this.tokens, required this.temperature, required this.avgLogprob, required this.compressionRatio, required this.noSpeechProb, });

factory TranscriptionSegment.fromJson(Map<String, dynamic> json) { return TranscriptionSegment(
  id: (json['id'] as num).toInt(),
  seek: (json['seek'] as num).toInt(),
  start: (json['start'] as num).toDouble(),
  end: (json['end'] as num).toDouble(),
  text: json['text'] as String,
  tokens: (json['tokens'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  temperature: (json['temperature'] as num).toDouble(),
  avgLogprob: (json['avg_logprob'] as num).toDouble(),
  compressionRatio: (json['compression_ratio'] as num).toDouble(),
  noSpeechProb: (json['no_speech_prob'] as num).toDouble(),
); }

/// Unique identifier of the segment.
final int id;

/// Seek offset of the segment.
final int seek;

/// Start time of the segment in seconds.
final double start;

/// End time of the segment in seconds.
final double end;

/// Text content of the segment.
final String text;

/// Array of token IDs for the text content.
final List<int> tokens;

/// Temperature parameter used for generating the segment.
final double temperature;

/// Average logprob of the segment. If the value is lower than -1, consider the logprobs failed.
final double avgLogprob;

/// Compression ratio of the segment. If the value is greater than 2.4, consider the compression failed.
final double compressionRatio;

/// Probability of no speech in the segment. If the value is higher than 1.0 and the `avg_logprob` is below -1, consider this segment silent.
final double noSpeechProb;

Map<String, dynamic> toJson() { return {
  'id': id,
  'seek': seek,
  'start': start,
  'end': end,
  'text': text,
  'tokens': tokens,
  'temperature': temperature,
  'avg_logprob': avgLogprob,
  'compression_ratio': compressionRatio,
  'no_speech_prob': noSpeechProb,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('seek') && json['seek'] is num &&
      json.containsKey('start') && json['start'] is num &&
      json.containsKey('end') && json['end'] is num &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('tokens') &&
      json.containsKey('temperature') && json['temperature'] is num &&
      json.containsKey('avg_logprob') && json['avg_logprob'] is num &&
      json.containsKey('compression_ratio') && json['compression_ratio'] is num &&
      json.containsKey('no_speech_prob') && json['no_speech_prob'] is num; } 
TranscriptionSegment copyWith({int? id, int? seek, double? start, double? end, String? text, List<int>? tokens, double? temperature, double? avgLogprob, double? compressionRatio, double? noSpeechProb, }) { return TranscriptionSegment(
  id: id ?? this.id,
  seek: seek ?? this.seek,
  start: start ?? this.start,
  end: end ?? this.end,
  text: text ?? this.text,
  tokens: tokens ?? this.tokens,
  temperature: temperature ?? this.temperature,
  avgLogprob: avgLogprob ?? this.avgLogprob,
  compressionRatio: compressionRatio ?? this.compressionRatio,
  noSpeechProb: noSpeechProb ?? this.noSpeechProb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TranscriptionSegment &&
          id == other.id &&
          seek == other.seek &&
          start == other.start &&
          end == other.end &&
          text == other.text &&
          listEquals(tokens, other.tokens) &&
          temperature == other.temperature &&
          avgLogprob == other.avgLogprob &&
          compressionRatio == other.compressionRatio &&
          noSpeechProb == other.noSpeechProb; } 
@override int get hashCode { return Object.hash(id, seek, start, end, text, Object.hashAll(tokens), temperature, avgLogprob, compressionRatio, noSpeechProb); } 
@override String toString() { return 'TranscriptionSegment(id: $id, seek: $seek, start: $start, end: $end, text: $text, tokens: $tokens, temperature: $temperature, avgLogprob: $avgLogprob, compressionRatio: $compressionRatio, noSpeechProb: $noSpeechProb)'; } 
 }
