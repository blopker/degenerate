// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_linkedin_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasLinkedinType {const AccessSchemasLinkedinType._(this.value);

factory AccessSchemasLinkedinType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasLinkedinType._(json),
}; }

static const AccessSchemasLinkedinType onetimepin = AccessSchemasLinkedinType._('onetimepin');

static const AccessSchemasLinkedinType azureAd = AccessSchemasLinkedinType._('azureAD');

static const AccessSchemasLinkedinType saml = AccessSchemasLinkedinType._('saml');

static const AccessSchemasLinkedinType centrify = AccessSchemasLinkedinType._('centrify');

static const AccessSchemasLinkedinType facebook = AccessSchemasLinkedinType._('facebook');

static const AccessSchemasLinkedinType github = AccessSchemasLinkedinType._('github');

static const AccessSchemasLinkedinType googleApps = AccessSchemasLinkedinType._('google-apps');

static const AccessSchemasLinkedinType google = AccessSchemasLinkedinType._('google');

static const AccessSchemasLinkedinType linkedin = AccessSchemasLinkedinType._('linkedin');

static const AccessSchemasLinkedinType oidc = AccessSchemasLinkedinType._('oidc');

static const AccessSchemasLinkedinType okta = AccessSchemasLinkedinType._('okta');

static const AccessSchemasLinkedinType onelogin = AccessSchemasLinkedinType._('onelogin');

static const AccessSchemasLinkedinType pingone = AccessSchemasLinkedinType._('pingone');

static const AccessSchemasLinkedinType yandex = AccessSchemasLinkedinType._('yandex');

static const List<AccessSchemasLinkedinType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasLinkedinType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasLinkedinType($value)'; } 
 }
@immutable final class AccessSchemasLinkedin {const AccessSchemasLinkedin({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasLinkedin.fromJson(Map<String, dynamic> json) { return AccessSchemasLinkedin(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasLinkedinScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasLinkedinType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasLinkedinScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasLinkedinType type;

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
AccessSchemasLinkedin copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasLinkedinScimConfig Function()? scimConfig, AccessSchemasLinkedinType? type, }) { return AccessSchemasLinkedin(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasLinkedin &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasLinkedin(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
