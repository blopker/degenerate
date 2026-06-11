// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessOneloginConfig {const AccessOneloginConfig({this.clientId, this.clientSecret, this.claims, this.emailClaimName, this.oneloginAccount, });

factory AccessOneloginConfig.fromJson(Map<String, dynamic> json) { return AccessOneloginConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
  oneloginAccount: json['onelogin_account'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

/// Your OneLogin account url
final String? oneloginAccount;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
  'onelogin_account': ?oneloginAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'claims', 'email_claim_name', 'onelogin_account'}.contains(key)); } 
AccessOneloginConfig copyWith({String Function()? clientId, String Function()? clientSecret, List<String> Function()? claims, String Function()? emailClaimName, String Function()? oneloginAccount, }) { return AccessOneloginConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
  oneloginAccount: oneloginAccount != null ? oneloginAccount() : this.oneloginAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOneloginConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName &&
          oneloginAccount == other.oneloginAccount; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, Object.hashAll(claims ?? const []), emailClaimName, oneloginAccount); } 
@override String toString() { return 'AccessOneloginConfig(clientId: $clientId, clientSecret: $clientSecret, claims: $claims, emailClaimName: $emailClaimName, oneloginAccount: $oneloginAccount)'; } 
 }
