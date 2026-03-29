// GENERATED CODE - DO NOT MODIFY BY HAND

final class ResponseLogProbTopLogprobs {const ResponseLogProbTopLogprobs({this.token, this.logprob, });

factory ResponseLogProbTopLogprobs.fromJson(Map<String, dynamic> json) { return ResponseLogProbTopLogprobs(
  token: json['token'] as String?,
  logprob: json['logprob'] != null ? (json['logprob'] as num).toDouble() : null,
); }

/// A possible text token.
final String? token;

/// The log probability of this token.
final double? logprob;

Map<String, dynamic> toJson() { return {
  'token': ?token,
  'logprob': ?logprob,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'token', 'logprob'}.contains(key)); } 
ResponseLogProbTopLogprobs copyWith({String Function()? token, double Function()? logprob, }) { return ResponseLogProbTopLogprobs(
  token: token != null ? token() : this.token,
  logprob: logprob != null ? logprob() : this.logprob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseLogProbTopLogprobs &&
          token == other.token &&
          logprob == other.logprob; } 
@override int get hashCode { return Object.hash(token, logprob); } 
@override String toString() { return 'ResponseLogProbTopLogprobs(token: $token, logprob: $logprob)'; } 
 }
