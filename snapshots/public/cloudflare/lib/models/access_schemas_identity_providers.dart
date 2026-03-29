// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_identity_provider.dart';final class AccessSchemasIdentityProviders {const AccessSchemasIdentityProviders({this.accessSchemasIdentityProvider});

factory AccessSchemasIdentityProviders.fromJson(Map<String, dynamic> json) { return AccessSchemasIdentityProviders(
  accessSchemasIdentityProvider: AccessSchemasIdentityProvider.canParse(json) ? AccessSchemasIdentityProvider.fromJson(json) : null,
); }

final AccessSchemasIdentityProvider? accessSchemasIdentityProvider;

/// At least one variant must be present.
bool get isValid { return accessSchemasIdentityProvider != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessSchemasIdentityProvider?.toJson(),
}; } 
 }
