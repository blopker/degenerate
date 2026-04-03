// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_response_usage_input_token_details.dart';import 'realtime_response_usage_output_token_details.dart';/// Usage statistics for the Response, this will correspond to billing. A
/// Realtime API session will maintain a conversation context and append new
/// Items to the Conversation, thus output from previous turns (text and
/// audio tokens) will become the input for later turns.
/// 
@immutable final class RealtimeResponseUsage {const RealtimeResponseUsage({this.totalTokens, this.inputTokens, this.outputTokens, this.inputTokenDetails, this.outputTokenDetails, });

factory RealtimeResponseUsage.fromJson(Map<String, dynamic> json) { return RealtimeResponseUsage(
  totalTokens: json['total_tokens'] != null ? (json['total_tokens'] as num).toInt() : null,
  inputTokens: json['input_tokens'] != null ? (json['input_tokens'] as num).toInt() : null,
  outputTokens: json['output_tokens'] != null ? (json['output_tokens'] as num).toInt() : null,
  inputTokenDetails: json['input_token_details'] != null ? RealtimeResponseUsageInputTokenDetails.fromJson(json['input_token_details'] as Map<String, dynamic>) : null,
  outputTokenDetails: json['output_token_details'] != null ? RealtimeResponseUsageOutputTokenDetails.fromJson(json['output_token_details'] as Map<String, dynamic>) : null,
); }

/// The total number of tokens in the Response including input and output
/// text and audio tokens.
/// 
final int? totalTokens;

/// The number of input tokens used in the Response, including text and
/// audio tokens.
/// 
final int? inputTokens;

/// The number of output tokens sent in the Response, including text and
/// audio tokens.
/// 
final int? outputTokens;

/// Details about the input tokens used in the Response. Cached tokens are tokens from previous turns in the conversation that are included as context for the current response. Cached tokens here are counted as a subset of input tokens, meaning input tokens will include cached and uncached tokens.
final RealtimeResponseUsageInputTokenDetails? inputTokenDetails;

/// Details about the output tokens used in the Response.
final RealtimeResponseUsageOutputTokenDetails? outputTokenDetails;

Map<String, dynamic> toJson() { return {
  'total_tokens': ?totalTokens,
  'input_tokens': ?inputTokens,
  'output_tokens': ?outputTokens,
  if (inputTokenDetails != null) 'input_token_details': inputTokenDetails?.toJson(),
  if (outputTokenDetails != null) 'output_token_details': outputTokenDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_tokens', 'input_tokens', 'output_tokens', 'input_token_details', 'output_token_details'}.contains(key)); } 
RealtimeResponseUsage copyWith({int Function()? totalTokens, int Function()? inputTokens, int Function()? outputTokens, RealtimeResponseUsageInputTokenDetails Function()? inputTokenDetails, RealtimeResponseUsageOutputTokenDetails Function()? outputTokenDetails, }) { return RealtimeResponseUsage(
  totalTokens: totalTokens != null ? totalTokens() : this.totalTokens,
  inputTokens: inputTokens != null ? inputTokens() : this.inputTokens,
  outputTokens: outputTokens != null ? outputTokens() : this.outputTokens,
  inputTokenDetails: inputTokenDetails != null ? inputTokenDetails() : this.inputTokenDetails,
  outputTokenDetails: outputTokenDetails != null ? outputTokenDetails() : this.outputTokenDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeResponseUsage &&
          totalTokens == other.totalTokens &&
          inputTokens == other.inputTokens &&
          outputTokens == other.outputTokens &&
          inputTokenDetails == other.inputTokenDetails &&
          outputTokenDetails == other.outputTokenDetails; } 
@override int get hashCode { return Object.hash(totalTokens, inputTokens, outputTokens, inputTokenDetails, outputTokenDetails); } 
@override String toString() { return 'RealtimeResponseUsage(totalTokens: $totalTokens, inputTokens: $inputTokens, outputTokens: $outputTokens, inputTokenDetails: $inputTokenDetails, outputTokenDetails: $outputTokenDetails)'; } 
 }
