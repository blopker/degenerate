// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasOktaConfig {const AccessSchemasOktaConfig({this.clientId, this.clientSecret, this.oktaAccount, });

factory AccessSchemasOktaConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasOktaConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  oktaAccount: json['okta_account'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Your okta account url
final String? oktaAccount;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'okta_account': ?oktaAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'okta_account'}.contains(key)); } 
AccessSchemasOktaConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, String? Function()? oktaAccount, }) { return AccessSchemasOktaConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  oktaAccount: oktaAccount != null ? oktaAccount() : this.oktaAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOktaConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          oktaAccount == other.oktaAccount; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, oktaAccount); } 
@override String toString() { return 'AccessSchemasOktaConfig(clientId: $clientId, clientSecret: $clientSecret, oktaAccount: $oktaAccount)'; } 
 }
