// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_oidc_saas_app_custom_claims_source.dart';/// The scope of the claim.
@immutable final class AccessSchemasOidcSaasAppCustomClaimsScope {const AccessSchemasOidcSaasAppCustomClaimsScope._(this.value);

factory AccessSchemasOidcSaasAppCustomClaimsScope.fromJson(String json) { return switch (json) {
  'groups' => groups,
  'profile' => profile,
  'email' => email,
  'openid' => openid,
  _ => AccessSchemasOidcSaasAppCustomClaimsScope._(json),
}; }

static const AccessSchemasOidcSaasAppCustomClaimsScope groups = AccessSchemasOidcSaasAppCustomClaimsScope._('groups');

static const AccessSchemasOidcSaasAppCustomClaimsScope profile = AccessSchemasOidcSaasAppCustomClaimsScope._('profile');

static const AccessSchemasOidcSaasAppCustomClaimsScope email = AccessSchemasOidcSaasAppCustomClaimsScope._('email');

static const AccessSchemasOidcSaasAppCustomClaimsScope openid = AccessSchemasOidcSaasAppCustomClaimsScope._('openid');

static const List<AccessSchemasOidcSaasAppCustomClaimsScope> values = [groups, profile, email, openid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOidcSaasAppCustomClaimsScope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOidcSaasAppCustomClaimsScope($value)'; } 
 }
@immutable final class AccessSchemasOidcSaasAppCustomClaims {const AccessSchemasOidcSaasAppCustomClaims({this.name, this.$required, this.scope, this.source, });

factory AccessSchemasOidcSaasAppCustomClaims.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcSaasAppCustomClaims(
  name: json['name'] as String?,
  $required: json['required'] as bool?,
  scope: json['scope'] != null ? AccessSchemasOidcSaasAppCustomClaimsScope.fromJson(json['scope'] as String) : null,
  source: json['source'] != null ? AccessSchemasOidcSaasAppCustomClaimsSource.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

/// The name of the claim.
final String? name;

/// If the claim is required when building an OIDC token.
final bool? $required;

/// The scope of the claim.
final AccessSchemasOidcSaasAppCustomClaimsScope? scope;

final AccessSchemasOidcSaasAppCustomClaimsSource? source;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'required': ?$required,
  if (scope != null) 'scope': scope?.toJson(),
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'required', 'scope', 'source'}.contains(key)); } 
AccessSchemasOidcSaasAppCustomClaims copyWith({String Function()? name, bool Function()? $required, AccessSchemasOidcSaasAppCustomClaimsScope Function()? scope, AccessSchemasOidcSaasAppCustomClaimsSource Function()? source, }) { return AccessSchemasOidcSaasAppCustomClaims(
  name: name != null ? name() : this.name,
  $required: $required != null ? $required() : this.$required,
  scope: scope != null ? scope() : this.scope,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcSaasAppCustomClaims &&
          name == other.name &&
          $required == other.$required &&
          scope == other.scope &&
          source == other.source; } 
@override int get hashCode { return Object.hash(name, $required, scope, source); } 
@override String toString() { return 'AccessSchemasOidcSaasAppCustomClaims(name: $name, \$required: ${$required}, scope: $scope, source: $source)'; } 
 }
