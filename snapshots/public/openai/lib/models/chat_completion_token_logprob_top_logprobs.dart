// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ChatCompletionTokenLogprobTopLogprobs {const ChatCompletionTokenLogprobTopLogprobs({required this.token, required this.logprob, required this.bytes, });

factory ChatCompletionTokenLogprobTopLogprobs.fromJson(Map<String, dynamic> json) { return ChatCompletionTokenLogprobTopLogprobs(
  token: json['token'] as String,
  logprob: (json['logprob'] as num).toDouble(),
  bytes: (json['bytes'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// The token.
final String token;

/// The log probability of this token, if it is within the top 20 most likely tokens. Otherwise, the value `-9999.0` is used to signify that the token is very unlikely.
final double logprob;

/// A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be `null` if there is no bytes representation for the token.
final List<int>? bytes;

Map<String, dynamic> toJson() { return {
  'token': token,
  'logprob': logprob,
  'bytes': ?bytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('logprob') && json['logprob'] is num &&
      json.containsKey('bytes'); } 
ChatCompletionTokenLogprobTopLogprobs copyWith({String? token, double? logprob, List<int>? Function()? bytes, }) { return ChatCompletionTokenLogprobTopLogprobs(
  token: token ?? this.token,
  logprob: logprob ?? this.logprob,
  bytes: bytes != null ? bytes() : this.bytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionTokenLogprobTopLogprobs &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(bytes, other.bytes); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(bytes ?? const [])); } 
@override String toString() { return 'ChatCompletionTokenLogprobTopLogprobs(token: $token, logprob: $logprob, bytes: $bytes)'; } 
 }
