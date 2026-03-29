// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessGsuiteGroupRuleGsuite {const AccessGsuiteGroupRuleGsuite({required this.email, required this.identityProviderId, });

factory AccessGsuiteGroupRuleGsuite.fromJson(Map<String, dynamic> json) { return AccessGsuiteGroupRuleGsuite(
  email: json['email'] as String,
  identityProviderId: json['identity_provider_id'] as String,
); }

/// The email of the Google Workspace group.
final String email;

/// The ID of your Google Workspace identity provider.
final String identityProviderId;

Map<String, dynamic> toJson() { return {
  'email': email,
  'identity_provider_id': identityProviderId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('identity_provider_id') && json['identity_provider_id'] is String; } 
AccessGsuiteGroupRuleGsuite copyWith({String? email, String? identityProviderId, }) { return AccessGsuiteGroupRuleGsuite(
  email: email ?? this.email,
  identityProviderId: identityProviderId ?? this.identityProviderId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGsuiteGroupRuleGsuite &&
          email == other.email &&
          identityProviderId == other.identityProviderId; } 
@override int get hashCode { return Object.hash(email, identityProviderId); } 
@override String toString() { return 'AccessGsuiteGroupRuleGsuite(email: $email, identityProviderId: $identityProviderId)'; } 
 }
