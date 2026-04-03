// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'batch_usage_input_tokens_details.dart';import 'batch_usage_output_tokens_details.dart';/// Represents token usage details including input tokens, output tokens, a
/// breakdown of output tokens, and the total tokens used. Only populated on
/// batches created after September 7, 2025.
/// 
@immutable final class BatchUsage {const BatchUsage({required this.inputTokens, required this.inputTokensDetails, required this.outputTokens, required this.outputTokensDetails, required this.totalTokens, });

factory BatchUsage.fromJson(Map<String, dynamic> json) { return BatchUsage(
  inputTokens: (json['input_tokens'] as num).toInt(),
  inputTokensDetails: BatchUsageInputTokensDetails.fromJson(json['input_tokens_details'] as Map<String, dynamic>),
  outputTokens: (json['output_tokens'] as num).toInt(),
  outputTokensDetails: BatchUsageOutputTokensDetails.fromJson(json['output_tokens_details'] as Map<String, dynamic>),
  totalTokens: (json['total_tokens'] as num).toInt(),
); }

/// The number of input tokens.
final int inputTokens;

/// A detailed breakdown of the input tokens.
final BatchUsageInputTokensDetails inputTokensDetails;

/// The number of output tokens.
final int outputTokens;

/// A detailed breakdown of the output tokens.
final BatchUsageOutputTokensDetails outputTokensDetails;

/// The total number of tokens used.
final int totalTokens;

Map<String, dynamic> toJson() { return {
  'input_tokens': inputTokens,
  'input_tokens_details': inputTokensDetails.toJson(),
  'output_tokens': outputTokens,
  'output_tokens_details': outputTokensDetails.toJson(),
  'total_tokens': totalTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('input_tokens') && json['input_tokens'] is num &&
      json.containsKey('input_tokens_details') &&
      json.containsKey('output_tokens') && json['output_tokens'] is num &&
      json.containsKey('output_tokens_details') &&
      json.containsKey('total_tokens') && json['total_tokens'] is num; } 
BatchUsage copyWith({int? inputTokens, BatchUsageInputTokensDetails? inputTokensDetails, int? outputTokens, BatchUsageOutputTokensDetails? outputTokensDetails, int? totalTokens, }) { return BatchUsage(
  inputTokens: inputTokens ?? this.inputTokens,
  inputTokensDetails: inputTokensDetails ?? this.inputTokensDetails,
  outputTokens: outputTokens ?? this.outputTokens,
  outputTokensDetails: outputTokensDetails ?? this.outputTokensDetails,
  totalTokens: totalTokens ?? this.totalTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BatchUsage &&
          inputTokens == other.inputTokens &&
          inputTokensDetails == other.inputTokensDetails &&
          outputTokens == other.outputTokens &&
          outputTokensDetails == other.outputTokensDetails &&
          totalTokens == other.totalTokens; } 
@override int get hashCode { return Object.hash(inputTokens, inputTokensDetails, outputTokens, outputTokensDetails, totalTokens); } 
@override String toString() { return 'BatchUsage(inputTokens: $inputTokens, inputTokensDetails: $inputTokensDetails, outputTokens: $outputTokens, outputTokensDetails: $outputTokensDetails, totalTokens: $totalTokens)'; } 
 }
