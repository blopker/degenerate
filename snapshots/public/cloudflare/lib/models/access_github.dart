// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_github_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGithubType {const AccessGithubType._(this.value);

factory AccessGithubType.fromJson(String json) { return switch (json) {
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
  _ => AccessGithubType._(json),
}; }

static const AccessGithubType onetimepin = AccessGithubType._('onetimepin');

static const AccessGithubType azureAd = AccessGithubType._('azureAD');

static const AccessGithubType saml = AccessGithubType._('saml');

static const AccessGithubType centrify = AccessGithubType._('centrify');

static const AccessGithubType facebook = AccessGithubType._('facebook');

static const AccessGithubType github = AccessGithubType._('github');

static const AccessGithubType googleApps = AccessGithubType._('google-apps');

static const AccessGithubType google = AccessGithubType._('google');

static const AccessGithubType linkedin = AccessGithubType._('linkedin');

static const AccessGithubType oidc = AccessGithubType._('oidc');

static const AccessGithubType okta = AccessGithubType._('okta');

static const AccessGithubType onelogin = AccessGithubType._('onelogin');

static const AccessGithubType pingone = AccessGithubType._('pingone');

static const AccessGithubType yandex = AccessGithubType._('yandex');

static const List<AccessGithubType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessGithubType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessGithubType($value)'; } 
 }
@immutable final class AccessGithub {const AccessGithub({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGithub.fromJson(Map<String, dynamic> json) { return AccessGithub(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGithubScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGithubType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGithubScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGithubType type;

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
AccessGithub copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGithubScimConfig? Function()? scimConfig, AccessGithubType? type, }) { return AccessGithub(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGithub &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessGithub(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
