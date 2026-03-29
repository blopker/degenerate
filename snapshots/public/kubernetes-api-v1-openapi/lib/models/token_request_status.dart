// GENERATED CODE - DO NOT MODIFY BY HAND

import 'time.dart';/// TokenRequestStatus is the result of a token request.
final class TokenRequestStatus {const TokenRequestStatus({this.expirationTimestamp, this.token = '', });

factory TokenRequestStatus.fromJson(Map<String, dynamic> json) { return TokenRequestStatus(
  expirationTimestamp: json['expirationTimestamp'] != null ? Time.fromJson(json['expirationTimestamp'] as String) : null,
  token: json.containsKey('token') ? json['token'] as String : '',
); }

/// expirationTimestamp is the time of expiration of the returned token.
final Time? expirationTimestamp;

/// token is the opaque bearer token.
final String token;

Map<String, dynamic> toJson() { return {
  if (expirationTimestamp != null) 'expirationTimestamp': expirationTimestamp?.toJson(),
  'token': token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expirationTimestamp', 'token'}.contains(key)); } 
TokenRequestStatus copyWith({Time Function()? expirationTimestamp, String Function()? token, }) { return TokenRequestStatus(
  expirationTimestamp: expirationTimestamp != null ? expirationTimestamp() : this.expirationTimestamp,
  token: token != null ? token() : this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenRequestStatus &&
          expirationTimestamp == other.expirationTimestamp &&
          token == other.token; } 
@override int get hashCode { return Object.hash(expirationTimestamp, token); } 
@override String toString() { return 'TokenRequestStatus(expirationTimestamp: $expirationTimestamp, token: $token)'; } 
 }
