// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Optional custom token limits for this truncation strategy. If not provided, the model's default token limits will be used.
@immutable final class RetentionRatioTruncationTokenLimits {const RetentionRatioTruncationTokenLimits({this.postInstructions});

factory RetentionRatioTruncationTokenLimits.fromJson(Map<String, dynamic> json) { return RetentionRatioTruncationTokenLimits(
  postInstructions: json['post_instructions'] != null ? (json['post_instructions'] as num).toInt() : null,
); }

/// Maximum tokens allowed in the conversation after instructions (which including tool definitions). For example, setting this to 5,000 would mean that truncation would occur when the conversation exceeds 5,000 tokens after instructions. This cannot be higher than the model's context window size minus the maximum output tokens.
final int? postInstructions;

Map<String, dynamic> toJson() { return {
  'post_instructions': ?postInstructions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'post_instructions'}.contains(key)); } 
RetentionRatioTruncationTokenLimits copyWith({int Function()? postInstructions}) { return RetentionRatioTruncationTokenLimits(
  postInstructions: postInstructions != null ? postInstructions() : this.postInstructions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RetentionRatioTruncationTokenLimits &&
          postInstructions == other.postInstructions; } 
@override int get hashCode { return postInstructions.hashCode; } 
@override String toString() { return 'RetentionRatioTruncationTokenLimits(postInstructions: $postInstructions)'; } 
 }
