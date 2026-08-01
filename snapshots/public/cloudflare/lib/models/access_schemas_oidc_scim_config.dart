// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no_action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
@immutable final class AccessSchemasOidcScimConfigIdentityUpdateBehavior {const AccessSchemasOidcScimConfigIdentityUpdateBehavior._(this.value);

factory AccessSchemasOidcScimConfigIdentityUpdateBehavior.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'reauth' => reauth,
  'no_action' => noAction,
  _ => AccessSchemasOidcScimConfigIdentityUpdateBehavior._(json),
}; }

static const AccessSchemasOidcScimConfigIdentityUpdateBehavior automatic = AccessSchemasOidcScimConfigIdentityUpdateBehavior._('automatic');

static const AccessSchemasOidcScimConfigIdentityUpdateBehavior reauth = AccessSchemasOidcScimConfigIdentityUpdateBehavior._('reauth');

static const AccessSchemasOidcScimConfigIdentityUpdateBehavior noAction = AccessSchemasOidcScimConfigIdentityUpdateBehavior._('no_action');

static const List<AccessSchemasOidcScimConfigIdentityUpdateBehavior> values = [automatic, reauth, noAction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOidcScimConfigIdentityUpdateBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOidcScimConfigIdentityUpdateBehavior($value)'; } 
 }
/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
@immutable final class AccessSchemasOidcScimConfig {const AccessSchemasOidcScimConfig({this.enabled = false, this.identityUpdateBehavior = AccessSchemasOidcScimConfigIdentityUpdateBehavior.noAction, this.scimBaseUrl, this.seatDeprovision = false, this.secret, this.userDeprovision = false, });

factory AccessSchemasOidcScimConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcScimConfig(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
  identityUpdateBehavior: json.containsKey('identity_update_behavior') ? AccessSchemasOidcScimConfigIdentityUpdateBehavior.fromJson(json['identity_update_behavior'] as String) : AccessSchemasOidcScimConfigIdentityUpdateBehavior.noAction,
  scimBaseUrl: json['scim_base_url'] as String?,
  seatDeprovision: json.containsKey('seat_deprovision') ? json['seat_deprovision'] as bool : false,
  secret: json['secret'] as String?,
  userDeprovision: json.containsKey('user_deprovision') ? json['user_deprovision'] as bool : false,
); }

/// A flag to enable or disable SCIM for the identity provider.
final bool enabled;

/// Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no_action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
final AccessSchemasOidcScimConfigIdentityUpdateBehavior identityUpdateBehavior;

/// The base URL of Cloudflare's SCIM V2.0 API endpoint.
final String? scimBaseUrl;

/// A flag to remove a user's seat in Zero Trust when they have been deprovisioned in the Identity Provider.  This cannot be enabled unless user_deprovision is also enabled.
final bool seatDeprovision;

/// A read-only token generated when the SCIM integration is enabled for the first time.  It is redacted on subsequent requests. If you lose this you will need to refresh it at /access/identity_providers/:idpID/refresh_scim_secret.
final String? secret;

/// A flag to enable revoking a user's session in Access and Gateway when they have been deprovisioned in the Identity Provider.
final bool userDeprovision;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'identity_update_behavior': identityUpdateBehavior.toJson(),
  'scim_base_url': ?scimBaseUrl,
  'seat_deprovision': seatDeprovision,
  'secret': ?secret,
  'user_deprovision': userDeprovision,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'identity_update_behavior', 'scim_base_url', 'seat_deprovision', 'secret', 'user_deprovision'}.contains(key)); } 
AccessSchemasOidcScimConfig copyWith({bool Function()? enabled, AccessSchemasOidcScimConfigIdentityUpdateBehavior Function()? identityUpdateBehavior, String? Function()? scimBaseUrl, bool Function()? seatDeprovision, String? Function()? secret, bool Function()? userDeprovision, }) { return AccessSchemasOidcScimConfig(
  enabled: enabled != null ? enabled() : this.enabled,
  identityUpdateBehavior: identityUpdateBehavior != null ? identityUpdateBehavior() : this.identityUpdateBehavior,
  scimBaseUrl: scimBaseUrl != null ? scimBaseUrl() : this.scimBaseUrl,
  seatDeprovision: seatDeprovision != null ? seatDeprovision() : this.seatDeprovision,
  secret: secret != null ? secret() : this.secret,
  userDeprovision: userDeprovision != null ? userDeprovision() : this.userDeprovision,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcScimConfig &&
          enabled == other.enabled &&
          identityUpdateBehavior == other.identityUpdateBehavior &&
          scimBaseUrl == other.scimBaseUrl &&
          seatDeprovision == other.seatDeprovision &&
          secret == other.secret &&
          userDeprovision == other.userDeprovision; } 
@override int get hashCode { return Object.hash(enabled, identityUpdateBehavior, scimBaseUrl, seatDeprovision, secret, userDeprovision); } 
@override String toString() { return 'AccessSchemasOidcScimConfig(enabled: $enabled, identityUpdateBehavior: $identityUpdateBehavior, scimBaseUrl: $scimBaseUrl, seatDeprovision: $seatDeprovision, secret: $secret, userDeprovision: $userDeprovision)'; } 
 }
