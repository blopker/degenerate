// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details about the output tokens used in the Response.
final class RealtimeBetaResponseUsageOutputTokenDetails {const RealtimeBetaResponseUsageOutputTokenDetails({this.textTokens, this.audioTokens, });

factory RealtimeBetaResponseUsageOutputTokenDetails.fromJson(Map<String, dynamic> json) { return RealtimeBetaResponseUsageOutputTokenDetails(
  textTokens: json['text_tokens'] != null ? (json['text_tokens'] as num).toInt() : null,
  audioTokens: json['audio_tokens'] != null ? (json['audio_tokens'] as num).toInt() : null,
); }

/// The number of text tokens used in the Response.
final int? textTokens;

/// The number of audio tokens used in the Response.
final int? audioTokens;

Map<String, dynamic> toJson() { return {
  'text_tokens': ?textTokens,
  'audio_tokens': ?audioTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text_tokens', 'audio_tokens'}.contains(key)); } 
RealtimeBetaResponseUsageOutputTokenDetails copyWith({int Function()? textTokens, int Function()? audioTokens, }) { return RealtimeBetaResponseUsageOutputTokenDetails(
  textTokens: textTokens != null ? textTokens() : this.textTokens,
  audioTokens: audioTokens != null ? audioTokens() : this.audioTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaResponseUsageOutputTokenDetails &&
          textTokens == other.textTokens &&
          audioTokens == other.audioTokens; } 
@override int get hashCode { return Object.hash(textTokens, audioTokens); } 
@override String toString() { return 'RealtimeBetaResponseUsageOutputTokenDetails(textTokens: $textTokens, audioTokens: $audioTokens)'; } 
 }
