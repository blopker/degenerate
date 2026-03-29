// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details about the input tokens billed for this request.
final class TranscriptTextUsageTokensInputTokenDetails {const TranscriptTextUsageTokensInputTokenDetails({this.textTokens, this.audioTokens, });

factory TranscriptTextUsageTokensInputTokenDetails.fromJson(Map<String, dynamic> json) { return TranscriptTextUsageTokensInputTokenDetails(
  textTokens: json['text_tokens'] != null ? (json['text_tokens'] as num).toInt() : null,
  audioTokens: json['audio_tokens'] != null ? (json['audio_tokens'] as num).toInt() : null,
); }

/// Number of text tokens billed for this request.
final int? textTokens;

/// Number of audio tokens billed for this request.
final int? audioTokens;

Map<String, dynamic> toJson() { return {
  'text_tokens': ?textTokens,
  'audio_tokens': ?audioTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text_tokens', 'audio_tokens'}.contains(key)); } 
TranscriptTextUsageTokensInputTokenDetails copyWith({int Function()? textTokens, int Function()? audioTokens, }) { return TranscriptTextUsageTokensInputTokenDetails(
  textTokens: textTokens != null ? textTokens() : this.textTokens,
  audioTokens: audioTokens != null ? audioTokens() : this.audioTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TranscriptTextUsageTokensInputTokenDetails &&
          textTokens == other.textTokens &&
          audioTokens == other.audioTokens; } 
@override int get hashCode { return Object.hash(textTokens, audioTokens); } 
@override String toString() { return 'TranscriptTextUsageTokensInputTokenDetails(textTokens: $textTokens, audioTokens: $audioTokens)'; } 
 }
