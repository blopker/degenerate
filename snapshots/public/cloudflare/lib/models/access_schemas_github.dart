// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_github_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGithubType {const AccessSchemasGithubType._(this.value);

factory AccessSchemasGithubType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasGithubType._(json),
}; }

static const AccessSchemasGithubType onetimepin = AccessSchemasGithubType._('onetimepin');

static const AccessSchemasGithubType azureAd = AccessSchemasGithubType._('azureAD');

static const AccessSchemasGithubType saml = AccessSchemasGithubType._('saml');

static const AccessSchemasGithubType centrify = AccessSchemasGithubType._('centrify');

static const AccessSchemasGithubType facebook = AccessSchemasGithubType._('facebook');

static const AccessSchemasGithubType github = AccessSchemasGithubType._('github');

static const AccessSchemasGithubType googleApps = AccessSchemasGithubType._('google-apps');

static const AccessSchemasGithubType google = AccessSchemasGithubType._('google');

static const AccessSchemasGithubType linkedin = AccessSchemasGithubType._('linkedin');

static const AccessSchemasGithubType oidc = AccessSchemasGithubType._('oidc');

static const AccessSchemasGithubType okta = AccessSchemasGithubType._('okta');

static const AccessSchemasGithubType onelogin = AccessSchemasGithubType._('onelogin');

static const AccessSchemasGithubType pingone = AccessSchemasGithubType._('pingone');

static const AccessSchemasGithubType yandex = AccessSchemasGithubType._('yandex');

static const List<AccessSchemasGithubType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasGithubType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasGithubType($value)'; } 
 }
@immutable final class AccessSchemasGithub {const AccessSchemasGithub({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGithub.fromJson(Map<String, dynamic> json) { return AccessSchemasGithub(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGithubScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGithubType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGithubScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGithubType type;

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
AccessSchemasGithub copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasGithubScimConfig Function()? scimConfig, AccessSchemasGithubType? type, }) { return AccessSchemasGithub(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasGithub &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasGithub(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
