// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_identity_provider.dart';final class AccessResponseCollectionResult {const AccessResponseCollectionResult({this.accessIdentityProvider});

factory AccessResponseCollectionResult.fromJson(Map<String, dynamic> json) { return AccessResponseCollectionResult(
  accessIdentityProvider: AccessIdentityProvider.canParse(json) ? AccessIdentityProvider.fromJson(json) : null,
); }

final AccessIdentityProvider? accessIdentityProvider;

/// At least one variant must be present.
bool get isValid { return accessIdentityProvider != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessIdentityProvider?.toJson(),
}; } 
 }
