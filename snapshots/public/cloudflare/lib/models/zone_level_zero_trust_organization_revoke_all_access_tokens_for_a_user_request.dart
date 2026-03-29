// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest {const ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest({required this.email});

factory ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest.fromJson(Map<String, dynamic> json) { return ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest(
  email: json['email'] as String,
); }

/// The email of the user to revoke.
final String email;

Map<String, dynamic> toJson() { return {
  'email': email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String; } 
ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest copyWith({String? email}) { return ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest(
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest &&
          email == other.email; } 
@override int get hashCode { return email.hashCode; } 
@override String toString() { return 'ZoneLevelZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest(email: $email)'; } 
 }
