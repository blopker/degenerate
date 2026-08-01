// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_google_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleType {const AccessSchemasGoogleType._(this.value);

factory AccessSchemasGoogleType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasGoogleType._(json),
}; }

static const AccessSchemasGoogleType onetimepin = AccessSchemasGoogleType._('onetimepin');

static const AccessSchemasGoogleType azureAd = AccessSchemasGoogleType._('azureAD');

static const AccessSchemasGoogleType saml = AccessSchemasGoogleType._('saml');

static const AccessSchemasGoogleType centrify = AccessSchemasGoogleType._('centrify');

static const AccessSchemasGoogleType facebook = AccessSchemasGoogleType._('facebook');

static const AccessSchemasGoogleType github = AccessSchemasGoogleType._('github');

static const AccessSchemasGoogleType googleApps = AccessSchemasGoogleType._('google-apps');

static const AccessSchemasGoogleType google = AccessSchemasGoogleType._('google');

static const AccessSchemasGoogleType linkedin = AccessSchemasGoogleType._('linkedin');

static const AccessSchemasGoogleType oidc = AccessSchemasGoogleType._('oidc');

static const AccessSchemasGoogleType okta = AccessSchemasGoogleType._('okta');

static const AccessSchemasGoogleType onelogin = AccessSchemasGoogleType._('onelogin');

static const AccessSchemasGoogleType pingone = AccessSchemasGoogleType._('pingone');

static const AccessSchemasGoogleType yandex = AccessSchemasGoogleType._('yandex');

static const List<AccessSchemasGoogleType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasGoogleType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasGoogleType($value)'; } 
 }
@immutable final class AccessSchemasGoogle {const AccessSchemasGoogle({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogle.fromJson(Map<String, dynamic> json) { return AccessSchemasGoogle(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleType type;

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
AccessSchemasGoogle copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleScimConfig? Function()? scimConfig, AccessSchemasGoogleType? type, }) { return AccessSchemasGoogle(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasGoogle &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasGoogle(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
