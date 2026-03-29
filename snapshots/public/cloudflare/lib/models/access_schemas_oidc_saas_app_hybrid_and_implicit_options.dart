// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessSchemasOidcSaasAppHybridAndImplicitOptions {const AccessSchemasOidcSaasAppHybridAndImplicitOptions({this.returnAccessTokenFromAuthorizationEndpoint, this.returnIdTokenFromAuthorizationEndpoint, });

factory AccessSchemasOidcSaasAppHybridAndImplicitOptions.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcSaasAppHybridAndImplicitOptions(
  returnAccessTokenFromAuthorizationEndpoint: json['return_access_token_from_authorization_endpoint'] as bool?,
  returnIdTokenFromAuthorizationEndpoint: json['return_id_token_from_authorization_endpoint'] as bool?,
); }

/// If an Access Token should be returned from the OIDC Authorization endpoint
final bool? returnAccessTokenFromAuthorizationEndpoint;

/// If an ID Token should be returned from the OIDC Authorization endpoint
final bool? returnIdTokenFromAuthorizationEndpoint;

Map<String, dynamic> toJson() { return {
  'return_access_token_from_authorization_endpoint': ?returnAccessTokenFromAuthorizationEndpoint,
  'return_id_token_from_authorization_endpoint': ?returnIdTokenFromAuthorizationEndpoint,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'return_access_token_from_authorization_endpoint', 'return_id_token_from_authorization_endpoint'}.contains(key)); } 
AccessSchemasOidcSaasAppHybridAndImplicitOptions copyWith({bool Function()? returnAccessTokenFromAuthorizationEndpoint, bool Function()? returnIdTokenFromAuthorizationEndpoint, }) { return AccessSchemasOidcSaasAppHybridAndImplicitOptions(
  returnAccessTokenFromAuthorizationEndpoint: returnAccessTokenFromAuthorizationEndpoint != null ? returnAccessTokenFromAuthorizationEndpoint() : this.returnAccessTokenFromAuthorizationEndpoint,
  returnIdTokenFromAuthorizationEndpoint: returnIdTokenFromAuthorizationEndpoint != null ? returnIdTokenFromAuthorizationEndpoint() : this.returnIdTokenFromAuthorizationEndpoint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcSaasAppHybridAndImplicitOptions &&
          returnAccessTokenFromAuthorizationEndpoint == other.returnAccessTokenFromAuthorizationEndpoint &&
          returnIdTokenFromAuthorizationEndpoint == other.returnIdTokenFromAuthorizationEndpoint; } 
@override int get hashCode { return Object.hash(returnAccessTokenFromAuthorizationEndpoint, returnIdTokenFromAuthorizationEndpoint); } 
@override String toString() { return 'AccessSchemasOidcSaasAppHybridAndImplicitOptions(returnAccessTokenFromAuthorizationEndpoint: $returnAccessTokenFromAuthorizationEndpoint, returnIdTokenFromAuthorizationEndpoint: $returnIdTokenFromAuthorizationEndpoint)'; } 
 }
