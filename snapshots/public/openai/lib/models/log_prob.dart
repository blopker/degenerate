// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'top_log_prob.dart';/// The log probability of a token.
final class LogProb {const LogProb({required this.token, required this.logprob, required this.bytes, required this.topLogprobs, });

factory LogProb.fromJson(Map<String, dynamic> json) { return LogProb(
  token: json['token'] as String,
  logprob: (json['logprob'] as num).toDouble(),
  bytes: (json['bytes'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  topLogprobs: (json['top_logprobs'] as List<dynamic>).map((e) => TopLogProb.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String token;

final double logprob;

final List<int> bytes;

final List<TopLogProb> topLogprobs;

Map<String, dynamic> toJson() { return {
  'token': token,
  'logprob': logprob,
  'bytes': bytes,
  'top_logprobs': topLogprobs.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('logprob') && json['logprob'] is num &&
      json.containsKey('bytes') &&
      json.containsKey('top_logprobs'); } 
LogProb copyWith({String? token, double? logprob, List<int>? bytes, List<TopLogProb>? topLogprobs, }) { return LogProb(
  token: token ?? this.token,
  logprob: logprob ?? this.logprob,
  bytes: bytes ?? this.bytes,
  topLogprobs: topLogprobs ?? this.topLogprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogProb &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(bytes, other.bytes) &&
          listEquals(topLogprobs, other.topLogprobs); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(bytes), Object.hashAll(topLogprobs)); } 
@override String toString() { return 'LogProb(token: $token, logprob: $logprob, bytes: $bytes, topLogprobs: $topLogprobs)'; } 
 }
