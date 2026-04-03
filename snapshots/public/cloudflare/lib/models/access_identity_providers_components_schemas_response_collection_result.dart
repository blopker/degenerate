// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_identity_provider.dart';final class AccessIdentityProvidersComponentsSchemasResponseCollectionResult {const AccessIdentityProvidersComponentsSchemasResponseCollectionResult({this.accessSchemasIdentityProvider});

factory AccessIdentityProvidersComponentsSchemasResponseCollectionResult.fromJson(Map<String, dynamic> json) { return AccessIdentityProvidersComponentsSchemasResponseCollectionResult(
  accessSchemasIdentityProvider: AccessSchemasIdentityProvider.canParse(json) ? AccessSchemasIdentityProvider.fromJson(json) : null,
); }

final AccessSchemasIdentityProvider? accessSchemasIdentityProvider;

/// At least one variant must be present.
bool get isValid { return accessSchemasIdentityProvider != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessSchemasIdentityProvider?.toJson(),
}; } 
 }
