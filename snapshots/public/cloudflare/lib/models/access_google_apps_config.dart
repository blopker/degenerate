// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessGoogleAppsConfig {const AccessGoogleAppsConfig({this.clientId, this.clientSecret, this.claims, this.emailClaimName, this.appsDomain, });

factory AccessGoogleAppsConfig.fromJson(Map<String, dynamic> json) { return AccessGoogleAppsConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
  appsDomain: json['apps_domain'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

/// Your companies TLD
final String? appsDomain;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
  'apps_domain': ?appsDomain,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'claims', 'email_claim_name', 'apps_domain'}.contains(key)); } 
AccessGoogleAppsConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, List<String>? Function()? claims, String? Function()? emailClaimName, String? Function()? appsDomain, }) { return AccessGoogleAppsConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
  appsDomain: appsDomain != null ? appsDomain() : this.appsDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGoogleAppsConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName &&
          appsDomain == other.appsDomain; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, Object.hashAll(claims ?? const []), emailClaimName, appsDomain); } 
@override String toString() { return 'AccessGoogleAppsConfig(clientId: $clientId, clientSecret: $clientSecret, claims: $claims, emailClaimName: $emailClaimName, appsDomain: $appsDomain)'; } 
 }
