// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_oidc_config.dart';import 'access_schemas_oidc_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOidcType {const AccessSchemasOidcType._(this.value);

factory AccessSchemasOidcType.fromJson(String json) { return switch (json) {
  'onetimepin' => onetimepin,
  'azureAD' => azureAd,
  'saml' => saml,
  'centrify' => centrify,
  'facebook' => facebook,
  'github' => github,
  'google-apps' => googleApps,
  'google' => google,
  'linkedin' => linkedin,
  'oidc' => oidc,
  'okta' => okta,
  'onelogin' => onelogin,
  'pingone' => pingone,
  'yandex' => yandex,
  _ => AccessSchemasOidcType._(json),
}; }

static const AccessSchemasOidcType onetimepin = AccessSchemasOidcType._('onetimepin');

static const AccessSchemasOidcType azureAd = AccessSchemasOidcType._('azureAD');

static const AccessSchemasOidcType saml = AccessSchemasOidcType._('saml');

static const AccessSchemasOidcType centrify = AccessSchemasOidcType._('centrify');

static const AccessSchemasOidcType facebook = AccessSchemasOidcType._('facebook');

static const AccessSchemasOidcType github = AccessSchemasOidcType._('github');

static const AccessSchemasOidcType googleApps = AccessSchemasOidcType._('google-apps');

static const AccessSchemasOidcType google = AccessSchemasOidcType._('google');

static const AccessSchemasOidcType linkedin = AccessSchemasOidcType._('linkedin');

static const AccessSchemasOidcType oidc = AccessSchemasOidcType._('oidc');

static const AccessSchemasOidcType okta = AccessSchemasOidcType._('okta');

static const AccessSchemasOidcType onelogin = AccessSchemasOidcType._('onelogin');

static const AccessSchemasOidcType pingone = AccessSchemasOidcType._('pingone');

static const AccessSchemasOidcType yandex = AccessSchemasOidcType._('yandex');

static const List<AccessSchemasOidcType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOidcType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOidcType($value)'; } 
 }
@immutable final class AccessSchemasOidc {const AccessSchemasOidc({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOidc.fromJson(Map<String, dynamic> json) { return AccessSchemasOidc(
  config: AccessSchemasOidcConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOidcScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOidcType.fromJson(json['type'] as String),
); }

final AccessSchemasOidcConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOidcScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOidcType type;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
AccessSchemasOidc copyWith({AccessSchemasOidcConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOidcScimConfig? Function()? scimConfig, AccessSchemasOidcType? type, }) { return AccessSchemasOidc(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidc &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOidc(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
