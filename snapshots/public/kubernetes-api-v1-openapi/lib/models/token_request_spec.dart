// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bound_object_reference.dart';/// TokenRequestSpec contains client provided parameters of a token request.
final class TokenRequestSpec {const TokenRequestSpec({this.audiences, this.boundObjectRef, this.expirationSeconds, });

factory TokenRequestSpec.fromJson(Map<String, dynamic> json) { return TokenRequestSpec(
  audiences: (json['audiences'] as List<dynamic>?)?.map((e) => e as String).toList(),
  boundObjectRef: json['boundObjectRef'] != null ? BoundObjectReference.fromJson(json['boundObjectRef'] as Map<String, dynamic>) : null,
  expirationSeconds: json['expirationSeconds'] != null ? (json['expirationSeconds'] as num).toInt() : null,
); }

/// audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
final List<String>? audiences;

/// boundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
final BoundObjectReference? boundObjectRef;

/// expirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
final int? expirationSeconds;

Map<String, dynamic> toJson() { return {
  'audiences': ?audiences,
  if (boundObjectRef != null) 'boundObjectRef': boundObjectRef?.toJson(),
  'expirationSeconds': ?expirationSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'audiences', 'boundObjectRef', 'expirationSeconds'}.contains(key)); } 
TokenRequestSpec copyWith({List<String> Function()? audiences, BoundObjectReference Function()? boundObjectRef, int Function()? expirationSeconds, }) { return TokenRequestSpec(
  audiences: audiences != null ? audiences() : this.audiences,
  boundObjectRef: boundObjectRef != null ? boundObjectRef() : this.boundObjectRef,
  expirationSeconds: expirationSeconds != null ? expirationSeconds() : this.expirationSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenRequestSpec &&
          listEquals(audiences, other.audiences) &&
          boundObjectRef == other.boundObjectRef &&
          expirationSeconds == other.expirationSeconds; } 
@override int get hashCode { return Object.hash(Object.hashAll(audiences ?? const []), boundObjectRef, expirationSeconds); } 
@override String toString() { return 'TokenRequestSpec(audiences: $audiences, boundObjectRef: $boundObjectRef, expirationSeconds: $expirationSeconds)'; } 
 }
