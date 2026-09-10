// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_linkedin_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessLinkedinType {const AccessLinkedinType._(this.value);

factory AccessLinkedinType.fromJson(String json) { return switch (json) {
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
  _ => AccessLinkedinType._(json),
}; }

static const AccessLinkedinType onetimepin = AccessLinkedinType._('onetimepin');

static const AccessLinkedinType azureAd = AccessLinkedinType._('azureAD');

static const AccessLinkedinType saml = AccessLinkedinType._('saml');

static const AccessLinkedinType centrify = AccessLinkedinType._('centrify');

static const AccessLinkedinType facebook = AccessLinkedinType._('facebook');

static const AccessLinkedinType github = AccessLinkedinType._('github');

static const AccessLinkedinType googleApps = AccessLinkedinType._('google-apps');

static const AccessLinkedinType google = AccessLinkedinType._('google');

static const AccessLinkedinType linkedin = AccessLinkedinType._('linkedin');

static const AccessLinkedinType oidc = AccessLinkedinType._('oidc');

static const AccessLinkedinType okta = AccessLinkedinType._('okta');

static const AccessLinkedinType onelogin = AccessLinkedinType._('onelogin');

static const AccessLinkedinType pingone = AccessLinkedinType._('pingone');

static const AccessLinkedinType yandex = AccessLinkedinType._('yandex');

static const List<AccessLinkedinType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessLinkedinType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessLinkedinType($value)'; } 
 }
@immutable final class AccessLinkedin {const AccessLinkedin({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessLinkedin.fromJson(Map<String, dynamic> json) { return AccessLinkedin(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessLinkedinScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessLinkedinType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessLinkedinScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessLinkedinType type;

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
AccessLinkedin copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessLinkedinScimConfig? Function()? scimConfig, AccessLinkedinType? type, }) { return AccessLinkedin(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessLinkedin &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessLinkedin(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
