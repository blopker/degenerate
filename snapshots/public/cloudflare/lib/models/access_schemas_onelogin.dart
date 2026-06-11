// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_onelogin_config.dart';import 'access_schemas_onelogin_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOneloginType {const AccessSchemasOneloginType._(this.value);

factory AccessSchemasOneloginType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasOneloginType._(json),
}; }

static const AccessSchemasOneloginType onetimepin = AccessSchemasOneloginType._('onetimepin');

static const AccessSchemasOneloginType azureAd = AccessSchemasOneloginType._('azureAD');

static const AccessSchemasOneloginType saml = AccessSchemasOneloginType._('saml');

static const AccessSchemasOneloginType centrify = AccessSchemasOneloginType._('centrify');

static const AccessSchemasOneloginType facebook = AccessSchemasOneloginType._('facebook');

static const AccessSchemasOneloginType github = AccessSchemasOneloginType._('github');

static const AccessSchemasOneloginType googleApps = AccessSchemasOneloginType._('google-apps');

static const AccessSchemasOneloginType google = AccessSchemasOneloginType._('google');

static const AccessSchemasOneloginType linkedin = AccessSchemasOneloginType._('linkedin');

static const AccessSchemasOneloginType oidc = AccessSchemasOneloginType._('oidc');

static const AccessSchemasOneloginType okta = AccessSchemasOneloginType._('okta');

static const AccessSchemasOneloginType onelogin = AccessSchemasOneloginType._('onelogin');

static const AccessSchemasOneloginType pingone = AccessSchemasOneloginType._('pingone');

static const AccessSchemasOneloginType yandex = AccessSchemasOneloginType._('yandex');

static const List<AccessSchemasOneloginType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOneloginType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOneloginType($value)'; } 
 }
@immutable final class AccessSchemasOnelogin {const AccessSchemasOnelogin({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOnelogin.fromJson(Map<String, dynamic> json) { return AccessSchemasOnelogin(
  config: AccessSchemasOneloginConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOneloginScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOneloginType.fromJson(json['type'] as String),
); }

final AccessSchemasOneloginConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOneloginScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOneloginType type;

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
AccessSchemasOnelogin copyWith({AccessSchemasOneloginConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasOneloginScimConfig Function()? scimConfig, AccessSchemasOneloginType? type, }) { return AccessSchemasOnelogin(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOnelogin &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOnelogin(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
