// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_pingone_config.dart';import 'access_schemas_pingone_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasPingoneType {const AccessSchemasPingoneType._(this.value);

factory AccessSchemasPingoneType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasPingoneType._(json),
}; }

static const AccessSchemasPingoneType onetimepin = AccessSchemasPingoneType._('onetimepin');

static const AccessSchemasPingoneType azureAd = AccessSchemasPingoneType._('azureAD');

static const AccessSchemasPingoneType saml = AccessSchemasPingoneType._('saml');

static const AccessSchemasPingoneType centrify = AccessSchemasPingoneType._('centrify');

static const AccessSchemasPingoneType facebook = AccessSchemasPingoneType._('facebook');

static const AccessSchemasPingoneType github = AccessSchemasPingoneType._('github');

static const AccessSchemasPingoneType googleApps = AccessSchemasPingoneType._('google-apps');

static const AccessSchemasPingoneType google = AccessSchemasPingoneType._('google');

static const AccessSchemasPingoneType linkedin = AccessSchemasPingoneType._('linkedin');

static const AccessSchemasPingoneType oidc = AccessSchemasPingoneType._('oidc');

static const AccessSchemasPingoneType okta = AccessSchemasPingoneType._('okta');

static const AccessSchemasPingoneType onelogin = AccessSchemasPingoneType._('onelogin');

static const AccessSchemasPingoneType pingone = AccessSchemasPingoneType._('pingone');

static const AccessSchemasPingoneType yandex = AccessSchemasPingoneType._('yandex');

static const List<AccessSchemasPingoneType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasPingoneType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasPingoneType($value)'; } 
 }
@immutable final class AccessSchemasPingone {const AccessSchemasPingone({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasPingone.fromJson(Map<String, dynamic> json) { return AccessSchemasPingone(
  config: AccessSchemasPingoneConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasPingoneScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasPingoneType.fromJson(json['type'] as String),
); }

final AccessSchemasPingoneConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasPingoneScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasPingoneType type;

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
AccessSchemasPingone copyWith({AccessSchemasPingoneConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasPingoneScimConfig Function()? scimConfig, AccessSchemasPingoneType? type, }) { return AccessSchemasPingone(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPingone &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasPingone(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
