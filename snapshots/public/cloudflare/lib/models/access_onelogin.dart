// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_onelogin_config.dart';import 'access_onelogin_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOneloginType {const AccessOneloginType._(this.value);

factory AccessOneloginType.fromJson(String json) { return switch (json) {
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
  _ => AccessOneloginType._(json),
}; }

static const AccessOneloginType onetimepin = AccessOneloginType._('onetimepin');

static const AccessOneloginType azureAd = AccessOneloginType._('azureAD');

static const AccessOneloginType saml = AccessOneloginType._('saml');

static const AccessOneloginType centrify = AccessOneloginType._('centrify');

static const AccessOneloginType facebook = AccessOneloginType._('facebook');

static const AccessOneloginType github = AccessOneloginType._('github');

static const AccessOneloginType googleApps = AccessOneloginType._('google-apps');

static const AccessOneloginType google = AccessOneloginType._('google');

static const AccessOneloginType linkedin = AccessOneloginType._('linkedin');

static const AccessOneloginType oidc = AccessOneloginType._('oidc');

static const AccessOneloginType okta = AccessOneloginType._('okta');

static const AccessOneloginType onelogin = AccessOneloginType._('onelogin');

static const AccessOneloginType pingone = AccessOneloginType._('pingone');

static const AccessOneloginType yandex = AccessOneloginType._('yandex');

static const List<AccessOneloginType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessOneloginType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessOneloginType($value)'; } 
 }
@immutable final class AccessOnelogin {const AccessOnelogin({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOnelogin.fromJson(Map<String, dynamic> json) { return AccessOnelogin(
  config: AccessOneloginConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOneloginScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOneloginType.fromJson(json['type'] as String),
); }

final AccessOneloginConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOneloginScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOneloginType type;

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
AccessOnelogin copyWith({AccessOneloginConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOneloginScimConfig? Function()? scimConfig, AccessOneloginType? type, }) { return AccessOnelogin(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOnelogin &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessOnelogin(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
