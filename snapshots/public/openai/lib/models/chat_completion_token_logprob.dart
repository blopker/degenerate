// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_token_logprob_top_logprobs.dart';final class ChatCompletionTokenLogprob {const ChatCompletionTokenLogprob({required this.token, required this.logprob, required this.bytes, required this.topLogprobs, });

factory ChatCompletionTokenLogprob.fromJson(Map<String, dynamic> json) { return ChatCompletionTokenLogprob(
  token: json['token'] as String,
  logprob: (json['logprob'] as num).toDouble(),
  bytes: (json['bytes'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  topLogprobs: (json['top_logprobs'] as List<dynamic>).map((e) => ChatCompletionTokenLogprobTopLogprobs.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The token.
final String token;

/// The log probability of this token, if it is within the top 20 most likely tokens. Otherwise, the value `-9999.0` is used to signify that the token is very unlikely.
final double logprob;

/// A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be `null` if there is no bytes representation for the token.
final List<int>? bytes;

/// List of the most likely tokens and their log probability, at this token position. In rare cases, there may be fewer than the number of requested `top_logprobs` returned.
final List<ChatCompletionTokenLogprobTopLogprobs> topLogprobs;

Map<String, dynamic> toJson() { return {
  'token': token,
  'logprob': logprob,
  'bytes': ?bytes,
  'top_logprobs': topLogprobs.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('logprob') && json['logprob'] is num &&
      json.containsKey('bytes') &&
      json.containsKey('top_logprobs'); } 
ChatCompletionTokenLogprob copyWith({String? token, double? logprob, List<int>? Function()? bytes, List<ChatCompletionTokenLogprobTopLogprobs>? topLogprobs, }) { return ChatCompletionTokenLogprob(
  token: token ?? this.token,
  logprob: logprob ?? this.logprob,
  bytes: bytes != null ? bytes() : this.bytes,
  topLogprobs: topLogprobs ?? this.topLogprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionTokenLogprob &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(bytes, other.bytes) &&
          listEquals(topLogprobs, other.topLogprobs); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(bytes ?? const []), Object.hashAll(topLogprobs)); } 
@override String toString() { return 'ChatCompletionTokenLogprob(token: $token, logprob: $logprob, bytes: $bytes, topLogprobs: $topLogprobs)'; } 
 }
