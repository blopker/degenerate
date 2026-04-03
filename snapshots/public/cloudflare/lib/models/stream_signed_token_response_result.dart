// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StreamSignedTokenResponseResult {const StreamSignedTokenResponseResult({this.token});

factory StreamSignedTokenResponseResult.fromJson(Map<String, dynamic> json) { return StreamSignedTokenResponseResult(
  token: json['token'] as String?,
); }

/// The signed token used with the signed URLs feature.
final String? token;

Map<String, dynamic> toJson() { return {
  'token': ?token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'token'}.contains(key)); } 
StreamSignedTokenResponseResult copyWith({String Function()? token}) { return StreamSignedTokenResponseResult(
  token: token != null ? token() : this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamSignedTokenResponseResult &&
          token == other.token; } 
@override int get hashCode { return token.hashCode; } 
@override String toString() { return 'StreamSignedTokenResponseResult(token: $token)'; } 
 }
