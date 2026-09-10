// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasOktaResponseConfig {const AccessSchemasOktaResponseConfig({this.clientId, this.oktaAccount, });

factory AccessSchemasOktaResponseConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasOktaResponseConfig(
  clientId: json['client_id'] as String?,
  oktaAccount: json['okta_account'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your okta account url
final String? oktaAccount;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'okta_account': ?oktaAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'okta_account'}.contains(key)); } 
AccessSchemasOktaResponseConfig copyWith({String? Function()? clientId, String? Function()? oktaAccount, }) { return AccessSchemasOktaResponseConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  oktaAccount: oktaAccount != null ? oktaAccount() : this.oktaAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOktaResponseConfig &&
          clientId == other.clientId &&
          oktaAccount == other.oktaAccount; } 
@override int get hashCode { return Object.hash(clientId, oktaAccount); } 
@override String toString() { return 'AccessSchemasOktaResponseConfig(clientId: $clientId, oktaAccount: $oktaAccount)'; } 
 }
