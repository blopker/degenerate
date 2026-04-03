// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TranscriptTextDoneEventLogprobs {const TranscriptTextDoneEventLogprobs({this.token, this.logprob, this.bytes, });

factory TranscriptTextDoneEventLogprobs.fromJson(Map<String, dynamic> json) { return TranscriptTextDoneEventLogprobs(
  token: json['token'] as String?,
  logprob: json['logprob'] != null ? (json['logprob'] as num).toDouble() : null,
  bytes: (json['bytes'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// The token that was used to generate the log probability.
/// 
final String? token;

/// The log probability of the token.
/// 
final double? logprob;

/// The bytes that were used to generate the log probability.
/// 
final List<int>? bytes;

Map<String, dynamic> toJson() { return {
  'token': ?token,
  'logprob': ?logprob,
  'bytes': ?bytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'token', 'logprob', 'bytes'}.contains(key)); } 
TranscriptTextDoneEventLogprobs copyWith({String Function()? token, double Function()? logprob, List<int> Function()? bytes, }) { return TranscriptTextDoneEventLogprobs(
  token: token != null ? token() : this.token,
  logprob: logprob != null ? logprob() : this.logprob,
  bytes: bytes != null ? bytes() : this.bytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TranscriptTextDoneEventLogprobs &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(bytes, other.bytes); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(bytes ?? const [])); } 
@override String toString() { return 'TranscriptTextDoneEventLogprobs(token: $token, logprob: $logprob, bytes: $bytes)'; } 
 }
