// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessOidcClaimRuleOidc {const AccessOidcClaimRuleOidc({required this.claimName, required this.claimValue, required this.identityProviderId, });

factory AccessOidcClaimRuleOidc.fromJson(Map<String, dynamic> json) { return AccessOidcClaimRuleOidc(
  claimName: json['claim_name'] as String,
  claimValue: json['claim_value'] as String,
  identityProviderId: json['identity_provider_id'] as String,
); }

/// The name of the OIDC claim.
final String claimName;

/// The OIDC claim value to look for.
final String claimValue;

/// The ID of your OIDC identity provider.
final String identityProviderId;

Map<String, dynamic> toJson() { return {
  'claim_name': claimName,
  'claim_value': claimValue,
  'identity_provider_id': identityProviderId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('claim_name') && json['claim_name'] is String &&
      json.containsKey('claim_value') && json['claim_value'] is String &&
      json.containsKey('identity_provider_id') && json['identity_provider_id'] is String; } 
AccessOidcClaimRuleOidc copyWith({String? claimName, String? claimValue, String? identityProviderId, }) { return AccessOidcClaimRuleOidc(
  claimName: claimName ?? this.claimName,
  claimValue: claimValue ?? this.claimValue,
  identityProviderId: identityProviderId ?? this.identityProviderId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOidcClaimRuleOidc &&
          claimName == other.claimName &&
          claimValue == other.claimValue &&
          identityProviderId == other.identityProviderId; } 
@override int get hashCode { return Object.hash(claimName, claimValue, identityProviderId); } 
@override String toString() { return 'AccessOidcClaimRuleOidc(claimName: $claimName, claimValue: $claimValue, identityProviderId: $identityProviderId)'; } 
 }
