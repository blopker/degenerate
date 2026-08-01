// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_facebook_scim_config.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasFacebookType {const AccessSchemasFacebookType._(this.value);

factory AccessSchemasFacebookType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasFacebookType._(json),
}; }

static const AccessSchemasFacebookType onetimepin = AccessSchemasFacebookType._('onetimepin');

static const AccessSchemasFacebookType azureAd = AccessSchemasFacebookType._('azureAD');

static const AccessSchemasFacebookType saml = AccessSchemasFacebookType._('saml');

static const AccessSchemasFacebookType centrify = AccessSchemasFacebookType._('centrify');

static const AccessSchemasFacebookType facebook = AccessSchemasFacebookType._('facebook');

static const AccessSchemasFacebookType github = AccessSchemasFacebookType._('github');

static const AccessSchemasFacebookType googleApps = AccessSchemasFacebookType._('google-apps');

static const AccessSchemasFacebookType google = AccessSchemasFacebookType._('google');

static const AccessSchemasFacebookType linkedin = AccessSchemasFacebookType._('linkedin');

static const AccessSchemasFacebookType oidc = AccessSchemasFacebookType._('oidc');

static const AccessSchemasFacebookType okta = AccessSchemasFacebookType._('okta');

static const AccessSchemasFacebookType onelogin = AccessSchemasFacebookType._('onelogin');

static const AccessSchemasFacebookType pingone = AccessSchemasFacebookType._('pingone');

static const AccessSchemasFacebookType yandex = AccessSchemasFacebookType._('yandex');

static const List<AccessSchemasFacebookType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasFacebookType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasFacebookType($value)'; } 
 }
@immutable final class AccessSchemasFacebook {const AccessSchemasFacebook({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasFacebook.fromJson(Map<String, dynamic> json) { return AccessSchemasFacebook(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasFacebookScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasFacebookType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasFacebookScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasFacebookType type;

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
AccessSchemasFacebook copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasFacebookScimConfig? Function()? scimConfig, AccessSchemasFacebookType? type, }) { return AccessSchemasFacebook(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasFacebook &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasFacebook(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
