// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasOneloginRequestConfig {const AccessSchemasOneloginRequestConfig({this.clientId, this.clientSecret, this.oneloginAccount, });

factory AccessSchemasOneloginRequestConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasOneloginRequestConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  oneloginAccount: json['onelogin_account'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Your OneLogin account url
final String? oneloginAccount;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'onelogin_account': ?oneloginAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'onelogin_account'}.contains(key)); } 
AccessSchemasOneloginRequestConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, String? Function()? oneloginAccount, }) { return AccessSchemasOneloginRequestConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  oneloginAccount: oneloginAccount != null ? oneloginAccount() : this.oneloginAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOneloginRequestConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          oneloginAccount == other.oneloginAccount; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, oneloginAccount); } 
@override String toString() { return 'AccessSchemasOneloginRequestConfig(clientId: $clientId, clientSecret: $clientSecret, oneloginAccount: $oneloginAccount)'; } 
 }
