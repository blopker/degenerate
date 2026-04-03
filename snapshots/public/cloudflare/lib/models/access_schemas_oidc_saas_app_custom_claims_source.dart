// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_oidc_saas_app_custom_claims_source_name_by_idp.dart';@immutable final class AccessSchemasOidcSaasAppCustomClaimsSource {const AccessSchemasOidcSaasAppCustomClaimsSource({this.name, this.nameByIdp, });

factory AccessSchemasOidcSaasAppCustomClaimsSource.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcSaasAppCustomClaimsSource(
  name: json['name'] as String?,
  nameByIdp: (json['name_by_idp'] as List<dynamic>?)?.map((e) => AccessSchemasOidcSaasAppCustomClaimsSourceNameByIdp.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The name of the IdP claim.
final String? name;

/// A mapping from IdP ID to attribute name.
final List<AccessSchemasOidcSaasAppCustomClaimsSourceNameByIdp>? nameByIdp;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (nameByIdp != null) 'name_by_idp': nameByIdp?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'name_by_idp'}.contains(key)); } 
AccessSchemasOidcSaasAppCustomClaimsSource copyWith({String Function()? name, List<AccessSchemasOidcSaasAppCustomClaimsSourceNameByIdp> Function()? nameByIdp, }) { return AccessSchemasOidcSaasAppCustomClaimsSource(
  name: name != null ? name() : this.name,
  nameByIdp: nameByIdp != null ? nameByIdp() : this.nameByIdp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcSaasAppCustomClaimsSource &&
          name == other.name &&
          listEquals(nameByIdp, other.nameByIdp); } 
@override int get hashCode { return Object.hash(name, Object.hashAll(nameByIdp ?? const [])); } 
@override String toString() { return 'AccessSchemasOidcSaasAppCustomClaimsSource(name: $name, nameByIdp: $nameByIdp)'; } 
 }
