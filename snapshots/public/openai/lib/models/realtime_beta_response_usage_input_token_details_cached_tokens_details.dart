// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details about the cached tokens used as input for the Response.
final class RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails {const RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails({this.textTokens, this.imageTokens, this.audioTokens, });

factory RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails.fromJson(Map<String, dynamic> json) { return RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails(
  textTokens: json['text_tokens'] != null ? (json['text_tokens'] as num).toInt() : null,
  imageTokens: json['image_tokens'] != null ? (json['image_tokens'] as num).toInt() : null,
  audioTokens: json['audio_tokens'] != null ? (json['audio_tokens'] as num).toInt() : null,
); }

/// The number of cached text tokens used as input for the Response.
final int? textTokens;

/// The number of cached image tokens used as input for the Response.
final int? imageTokens;

/// The number of cached audio tokens used as input for the Response.
final int? audioTokens;

Map<String, dynamic> toJson() { return {
  'text_tokens': ?textTokens,
  'image_tokens': ?imageTokens,
  'audio_tokens': ?audioTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails copyWith({int Function()? textTokens, int Function()? imageTokens, int Function()? audioTokens, }) { return RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails(
  textTokens: textTokens != null ? textTokens() : this.textTokens,
  imageTokens: imageTokens != null ? imageTokens() : this.imageTokens,
  audioTokens: audioTokens != null ? audioTokens() : this.audioTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails &&
          textTokens == other.textTokens &&
          imageTokens == other.imageTokens &&
          audioTokens == other.audioTokens; } 
@override int get hashCode { return Object.hash(textTokens, imageTokens, audioTokens); } 
@override String toString() { return 'RealtimeBetaResponseUsageInputTokenDetailsCachedTokensDetails(textTokens: $textTokens, imageTokens: $imageTokens, audioTokens: $audioTokens)'; } 
 }
