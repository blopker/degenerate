// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_pingone_config.dart';import 'access_pingone_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessPingoneType {const AccessPingoneType._(this.value);

factory AccessPingoneType.fromJson(String json) { return switch (json) {
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
  _ => AccessPingoneType._(json),
}; }

static const AccessPingoneType onetimepin = AccessPingoneType._('onetimepin');

static const AccessPingoneType azureAd = AccessPingoneType._('azureAD');

static const AccessPingoneType saml = AccessPingoneType._('saml');

static const AccessPingoneType centrify = AccessPingoneType._('centrify');

static const AccessPingoneType facebook = AccessPingoneType._('facebook');

static const AccessPingoneType github = AccessPingoneType._('github');

static const AccessPingoneType googleApps = AccessPingoneType._('google-apps');

static const AccessPingoneType google = AccessPingoneType._('google');

static const AccessPingoneType linkedin = AccessPingoneType._('linkedin');

static const AccessPingoneType oidc = AccessPingoneType._('oidc');

static const AccessPingoneType okta = AccessPingoneType._('okta');

static const AccessPingoneType onelogin = AccessPingoneType._('onelogin');

static const AccessPingoneType pingone = AccessPingoneType._('pingone');

static const AccessPingoneType yandex = AccessPingoneType._('yandex');

static const List<AccessPingoneType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessPingoneType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessPingoneType($value)'; } 
 }
@immutable final class AccessPingone {const AccessPingone({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessPingone.fromJson(Map<String, dynamic> json) { return AccessPingone(
  config: AccessPingoneConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessPingoneScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessPingoneType.fromJson(json['type'] as String),
); }

final AccessPingoneConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessPingoneScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessPingoneType type;

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
AccessPingone copyWith({AccessPingoneConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessPingoneScimConfig? Function()? scimConfig, AccessPingoneType? type, }) { return AccessPingone(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPingone &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessPingone(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
