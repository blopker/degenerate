// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The top log probability of a token.
final class TopLogProb {const TopLogProb({required this.token, required this.logprob, required this.bytes, });

factory TopLogProb.fromJson(Map<String, dynamic> json) { return TopLogProb(
  token: json['token'] as String,
  logprob: (json['logprob'] as num).toDouble(),
  bytes: (json['bytes'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

final String token;

final double logprob;

final List<int> bytes;

Map<String, dynamic> toJson() { return {
  'token': token,
  'logprob': logprob,
  'bytes': bytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('logprob') && json['logprob'] is num &&
      json.containsKey('bytes'); } 
TopLogProb copyWith({String? token, double? logprob, List<int>? bytes, }) { return TopLogProb(
  token: token ?? this.token,
  logprob: logprob ?? this.logprob,
  bytes: bytes ?? this.bytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TopLogProb &&
          token == other.token &&
          logprob == other.logprob &&
          listEquals(bytes, other.bytes); } 
@override int get hashCode { return Object.hash(token, logprob, Object.hashAll(bytes)); } 
@override String toString() { return 'TopLogProb(token: $token, logprob: $logprob, bytes: $bytes)'; } 
 }
