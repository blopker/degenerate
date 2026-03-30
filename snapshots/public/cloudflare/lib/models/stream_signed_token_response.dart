// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_signed_token_response_result.dart';final class StreamSignedTokenResponse {const StreamSignedTokenResponse({this.result});

factory StreamSignedTokenResponse.fromJson(Map<String, dynamic> json) { return StreamSignedTokenResponse(
  result: json['result'] != null ? StreamSignedTokenResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamSignedTokenResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamSignedTokenResponse copyWith({StreamSignedTokenResponseResult Function()? result}) { return StreamSignedTokenResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamSignedTokenResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamSignedTokenResponse(result: $result)'; } 
 }
