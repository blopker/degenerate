// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CredentialsRevokeRequest {const CredentialsRevokeRequest({required this.credentials});

factory CredentialsRevokeRequest.fromJson(Map<String, dynamic> json) { return CredentialsRevokeRequest(
  credentials: (json['credentials'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// A list of credentials to be revoked, up to 1000 per request.
final List<String> credentials;

Map<String, dynamic> toJson() { return {
  'credentials': credentials,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('credentials'); } 
CredentialsRevokeRequest copyWith({List<String>? credentials}) { return CredentialsRevokeRequest(
  credentials: credentials ?? this.credentials,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CredentialsRevokeRequest &&
          listEquals(credentials, other.credentials); } 
@override int get hashCode { return Object.hashAll(credentials).hashCode; } 
@override String toString() { return 'CredentialsRevokeRequest(credentials: $credentials)'; } 
 }
