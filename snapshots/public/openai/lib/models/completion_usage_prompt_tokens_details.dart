// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Breakdown of tokens used in the prompt.
@immutable final class CompletionUsagePromptTokensDetails {const CompletionUsagePromptTokensDetails({this.audioTokens, this.cachedTokens, });

factory CompletionUsagePromptTokensDetails.fromJson(Map<String, dynamic> json) {return CompletionUsagePromptTokensDetails(
  audioTokens: json['audio_tokens'] != null ? (json['audio_tokens'] as num).toInt() : null,
  cachedTokens: json['cached_tokens'] != null ? (json['cached_tokens'] as num).toInt() : null,
);}

/// Audio input tokens present in the prompt.
final int? audioTokens;

/// Cached tokens present in the prompt.
final int? cachedTokens;

/// The value with the schema default applied when absent.
int get audioTokensOrDefault {return audioTokens ?? 0;}
/// The value with the schema default applied when absent.
int get cachedTokensOrDefault {return cachedTokens ?? 0;}
Map<String, dynamic> toJson() {return {
  'audio_tokens': ?audioTokens,
  'cached_tokens': ?cachedTokens,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'audio_tokens', 'cached_tokens'}.contains(key));}
CompletionUsagePromptTokensDetails copyWith({int? Function()? audioTokens, int? Function()? cachedTokens, }) {return CompletionUsagePromptTokensDetails(
  audioTokens: audioTokens != null ? audioTokens() : this.audioTokens,
  cachedTokens: cachedTokens != null ? cachedTokens() : this.cachedTokens,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CompletionUsagePromptTokensDetails &&
          audioTokens == other.audioTokens &&
          cachedTokens == other.cachedTokens;}
@override int get hashCode {return Object.hash(audioTokens, cachedTokens);}
@override String toString() {return 'CompletionUsagePromptTokensDetails(audioTokens: $audioTokens, cachedTokens: $cachedTokens)';}
}
