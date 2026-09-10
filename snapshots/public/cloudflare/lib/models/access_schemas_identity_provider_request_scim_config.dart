// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no_action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
@immutable final class AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior {const AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior._(this.value);

factory AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior.fromJson(String json) {return switch (json) {
  'automatic' => automatic,
  'reauth' => reauth,
  'no_action' => noAction,
  _ => AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior._(json),
};}

static const AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior automatic = AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior._('automatic');

static const AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior reauth = AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior._('reauth');

static const AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior noAction = AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior._('no_action');

static const List<AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior> values = [automatic, reauth, noAction];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior($value)';}
}
/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
@immutable final class AccessSchemasIdentityProviderRequestScimConfig {const AccessSchemasIdentityProviderRequestScimConfig({this.enabled, this.identityUpdateBehavior, this.seatDeprovision, this.userDeprovision, });

factory AccessSchemasIdentityProviderRequestScimConfig.fromJson(Map<String, dynamic> json) {return AccessSchemasIdentityProviderRequestScimConfig(
  enabled: json['enabled'] as bool?,
  identityUpdateBehavior: json['identity_update_behavior'] != null ? AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior.fromJson(json['identity_update_behavior'] as String) : null,
  seatDeprovision: json['seat_deprovision'] as bool?,
  userDeprovision: json['user_deprovision'] as bool?,
);}

/// A flag to enable or disable SCIM for the identity provider.
final bool? enabled;

/// Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no_action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
final AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior? identityUpdateBehavior;

/// A flag to remove a user's seat in Zero Trust when they have been deprovisioned in the Identity Provider.  This cannot be enabled unless user_deprovision is also enabled.
final bool? seatDeprovision;

/// A flag to enable revoking a user's session in Access and Gateway when they have been deprovisioned in the Identity Provider.
final bool? userDeprovision;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? false;}
/// The value with the schema default applied when absent.
AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior get identityUpdateBehaviorOrDefault {return identityUpdateBehavior ?? AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior.fromJson('no_action');}
/// The value with the schema default applied when absent.
bool get seatDeprovisionOrDefault {return seatDeprovision ?? false;}
/// The value with the schema default applied when absent.
bool get userDeprovisionOrDefault {return userDeprovision ?? false;}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  if (identityUpdateBehavior != null) 'identity_update_behavior': identityUpdateBehavior?.toJson(),
  'seat_deprovision': ?seatDeprovision,
  'user_deprovision': ?userDeprovision,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'identity_update_behavior', 'seat_deprovision', 'user_deprovision'}.contains(key));}
AccessSchemasIdentityProviderRequestScimConfig copyWith({bool? Function()? enabled, AccessSchemasIdentityProviderRequestScimConfigIdentityUpdateBehavior? Function()? identityUpdateBehavior, bool? Function()? seatDeprovision, bool? Function()? userDeprovision, }) {return AccessSchemasIdentityProviderRequestScimConfig(
  enabled: enabled != null ? enabled() : this.enabled,
  identityUpdateBehavior: identityUpdateBehavior != null ? identityUpdateBehavior() : this.identityUpdateBehavior,
  seatDeprovision: seatDeprovision != null ? seatDeprovision() : this.seatDeprovision,
  userDeprovision: userDeprovision != null ? userDeprovision() : this.userDeprovision,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasIdentityProviderRequestScimConfig &&
          enabled == other.enabled &&
          identityUpdateBehavior == other.identityUpdateBehavior &&
          seatDeprovision == other.seatDeprovision &&
          userDeprovision == other.userDeprovision;}
@override int get hashCode {return Object.hash(enabled, identityUpdateBehavior, seatDeprovision, userDeprovision);}
@override String toString() {return 'AccessSchemasIdentityProviderRequestScimConfig(enabled: $enabled, identityUpdateBehavior: $identityUpdateBehavior, seatDeprovision: $seatDeprovision, userDeprovision: $userDeprovision)';}
}
