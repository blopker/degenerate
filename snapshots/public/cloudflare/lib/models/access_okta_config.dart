// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessOktaConfig {const AccessOktaConfig({this.clientId, this.clientSecret, this.claims, this.emailClaimName, this.authorizationServerId, this.oktaAccount, });

factory AccessOktaConfig.fromJson(Map<String, dynamic> json) { return AccessOktaConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
  authorizationServerId: json['authorization_server_id'] as String?,
  oktaAccount: json['okta_account'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

/// Your okta authorization server id
final String? authorizationServerId;

/// Your okta account url
final String? oktaAccount;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
  'authorization_server_id': ?authorizationServerId,
  'okta_account': ?oktaAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'claims', 'email_claim_name', 'authorization_server_id', 'okta_account'}.contains(key)); } 
AccessOktaConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, List<String>? Function()? claims, String? Function()? emailClaimName, String? Function()? authorizationServerId, String? Function()? oktaAccount, }) { return AccessOktaConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
  authorizationServerId: authorizationServerId != null ? authorizationServerId() : this.authorizationServerId,
  oktaAccount: oktaAccount != null ? oktaAccount() : this.oktaAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOktaConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName &&
          authorizationServerId == other.authorizationServerId &&
          oktaAccount == other.oktaAccount; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, Object.hashAll(claims ?? const []), emailClaimName, authorizationServerId, oktaAccount); } 
@override String toString() { return 'AccessOktaConfig(clientId: $clientId, clientSecret: $clientSecret, claims: $claims, emailClaimName: $emailClaimName, authorizationServerId: $authorizationServerId, oktaAccount: $oktaAccount)'; } 
 }
