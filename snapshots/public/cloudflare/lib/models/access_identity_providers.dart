// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_identity_provider.dart';final class AccessIdentityProviders {const AccessIdentityProviders({this.accessIdentityProvider});

factory AccessIdentityProviders.fromJson(Map<String, dynamic> json) { return AccessIdentityProviders(
  accessIdentityProvider: AccessIdentityProvider.canParse(json) ? AccessIdentityProvider.fromJson(json) : null,
); }

final AccessIdentityProvider? accessIdentityProvider;

/// At least one variant must be present.
bool get isValid { return accessIdentityProvider != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessIdentityProvider?.toJson(),
}; } 
 }
