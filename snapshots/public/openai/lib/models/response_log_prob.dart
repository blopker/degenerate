// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_log_prob_top_logprobs.dart';/// A logprob is the logarithmic probability that the model assigns to producing
/// a particular token at a given position in the sequence. Less-negative (higher)
/// logprob values indicate greater model confidence in that token choice.
/// 
@immutable final class ResponseLogProb {const ResponseLogProb({required this.token, required this.logprob, this.topLogprobs, });

factory ResponseLogProb.fromJson(Map<String, dynamic> json) { return ResponseLogProb(
  token: json['token'] as String,
  logprob: (json['logprob'] as num).toDouble(),
  topLogprobs: (json['top_logprobs'] as List<dynamic>?)?.map((e) => ResponseLogProbTopLogprobs.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A possible text token.
final String token;

/// The log probability of this token.
/// 
final double logprob;

/// The log probability of the top 20 most likely tokens.
/// 
final List<ResponseLogProbTopLogprobs>? topLogprobs;

Map<String, dynamic> toJson() { return {
  'token': token,
  'logprob': logprob,
  if (topLogprobs != null) 'top_logprobs': topLogprobs?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('logprob') && json['logprob'] is num; } 
ResponseLogProb copyWith({String? token, double? logprob, List<ResponseLogProbTopLogprobs> Function()? topLogprobs, }) { return ResponseLogProb(
  token: token ?? this.token,
  logprob: logprob ?? this.logprob,
  topLogprobs: topLogprobs != null ? topLogprobs() : this.topLogprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseLogProb &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(topLogprobs, other.topLogprobs); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(topLogprobs ?? const [])); } 
@override String toString() { return 'ResponseLogProb(token: $token, logprob: $logprob, topLogprobs: $topLogprobs)'; } 
 }
