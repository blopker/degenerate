// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Details about the cached tokens used as input for the Response.
@immutable final class RealtimeResponseUsageInputTokenDetailsCachedTokensDetails {const RealtimeResponseUsageInputTokenDetailsCachedTokensDetails({this.textTokens, this.imageTokens, this.audioTokens, });

factory RealtimeResponseUsageInputTokenDetailsCachedTokensDetails.fromJson(Map<String, dynamic> json) { return RealtimeResponseUsageInputTokenDetailsCachedTokensDetails(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'text_tokens', 'image_tokens', 'audio_tokens'}.contains(key)); } 
RealtimeResponseUsageInputTokenDetailsCachedTokensDetails copyWith({int Function()? textTokens, int Function()? imageTokens, int Function()? audioTokens, }) { return RealtimeResponseUsageInputTokenDetailsCachedTokensDetails(
  textTokens: textTokens != null ? textTokens() : this.textTokens,
  imageTokens: imageTokens != null ? imageTokens() : this.imageTokens,
  audioTokens: audioTokens != null ? audioTokens() : this.audioTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeResponseUsageInputTokenDetailsCachedTokensDetails &&
          textTokens == other.textTokens &&
          imageTokens == other.imageTokens &&
          audioTokens == other.audioTokens; } 
@override int get hashCode { return Object.hash(textTokens, imageTokens, audioTokens); } 
@override String toString() { return 'RealtimeResponseUsageInputTokenDetailsCachedTokensDetails(textTokens: $textTokens, imageTokens: $imageTokens, audioTokens: $audioTokens)'; } 
 }
