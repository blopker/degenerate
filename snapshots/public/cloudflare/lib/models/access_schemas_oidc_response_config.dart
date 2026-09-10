// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasOidcResponseConfig {const AccessSchemasOidcResponseConfig({this.clientId, this.authUrl, this.certsUrl, this.claims, this.scopes, this.tokenUrl, });

factory AccessSchemasOidcResponseConfig.fromJson(Map<String, dynamic> json) {return AccessSchemasOidcResponseConfig(
  clientId: json['client_id'] as String?,
  authUrl: json['auth_url'] as String?,
  certsUrl: json['certs_url'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  scopes: (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tokenUrl: json['token_url'] as String?,
);}

/// Your OAuth Client ID
final String? clientId;

/// The authorization_endpoint URL of your IdP
final String? authUrl;

/// The jwks_uri endpoint of your IdP to allow the IdP keys to sign the tokens
final String? certsUrl;

/// List of custom claims that will be pulled from your id_token and added to your signed Access JWT token.
final List<String>? claims;

/// OAuth scopes
final List<String>? scopes;

/// The token_endpoint URL of your IdP
final String? tokenUrl;

Map<String, dynamic> toJson() {return {
  'client_id': ?clientId,
  'auth_url': ?authUrl,
  'certs_url': ?certsUrl,
  'claims': ?claims,
  'scopes': ?scopes,
  'token_url': ?tokenUrl,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'client_id', 'auth_url', 'certs_url', 'claims', 'scopes', 'token_url'}.contains(key));}
AccessSchemasOidcResponseConfig copyWith({String? Function()? clientId, String? Function()? authUrl, String? Function()? certsUrl, List<String>? Function()? claims, List<String>? Function()? scopes, String? Function()? tokenUrl, }) {return AccessSchemasOidcResponseConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  authUrl: authUrl != null ? authUrl() : this.authUrl,
  certsUrl: certsUrl != null ? certsUrl() : this.certsUrl,
  claims: claims != null ? claims() : this.claims,
  scopes: scopes != null ? scopes() : this.scopes,
  tokenUrl: tokenUrl != null ? tokenUrl() : this.tokenUrl,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasOidcResponseConfig &&
          clientId == other.clientId &&
          authUrl == other.authUrl &&
          certsUrl == other.certsUrl &&
          listEquals(claims, other.claims) &&
          listEquals(scopes, other.scopes) &&
          tokenUrl == other.tokenUrl;}
@override int get hashCode {return Object.hash(clientId, authUrl, certsUrl, Object.hashAll(claims ?? const []), Object.hashAll(scopes ?? const []), tokenUrl);}
@override String toString() {return 'AccessSchemasOidcResponseConfig(clientId: $clientId, authUrl: $authUrl, certsUrl: $certsUrl, claims: $claims, scopes: $scopes, tokenUrl: $tokenUrl)';}
}
