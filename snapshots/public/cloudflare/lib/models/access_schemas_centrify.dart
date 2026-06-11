// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_centrify_config.dart';import 'access_schemas_centrify_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasCentrifyType {const AccessSchemasCentrifyType._(this.value);

factory AccessSchemasCentrifyType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasCentrifyType._(json),
}; }

static const AccessSchemasCentrifyType onetimepin = AccessSchemasCentrifyType._('onetimepin');

static const AccessSchemasCentrifyType azureAd = AccessSchemasCentrifyType._('azureAD');

static const AccessSchemasCentrifyType saml = AccessSchemasCentrifyType._('saml');

static const AccessSchemasCentrifyType centrify = AccessSchemasCentrifyType._('centrify');

static const AccessSchemasCentrifyType facebook = AccessSchemasCentrifyType._('facebook');

static const AccessSchemasCentrifyType github = AccessSchemasCentrifyType._('github');

static const AccessSchemasCentrifyType googleApps = AccessSchemasCentrifyType._('google-apps');

static const AccessSchemasCentrifyType google = AccessSchemasCentrifyType._('google');

static const AccessSchemasCentrifyType linkedin = AccessSchemasCentrifyType._('linkedin');

static const AccessSchemasCentrifyType oidc = AccessSchemasCentrifyType._('oidc');

static const AccessSchemasCentrifyType okta = AccessSchemasCentrifyType._('okta');

static const AccessSchemasCentrifyType onelogin = AccessSchemasCentrifyType._('onelogin');

static const AccessSchemasCentrifyType pingone = AccessSchemasCentrifyType._('pingone');

static const AccessSchemasCentrifyType yandex = AccessSchemasCentrifyType._('yandex');

static const List<AccessSchemasCentrifyType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasCentrifyType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasCentrifyType($value)'; } 
 }
@immutable final class AccessSchemasCentrify {const AccessSchemasCentrify({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasCentrify.fromJson(Map<String, dynamic> json) { return AccessSchemasCentrify(
  config: AccessSchemasCentrifyConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasCentrifyScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasCentrifyType.fromJson(json['type'] as String),
); }

final AccessSchemasCentrifyConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasCentrifyScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasCentrifyType type;

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
AccessSchemasCentrify copyWith({AccessSchemasCentrifyConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasCentrifyScimConfig Function()? scimConfig, AccessSchemasCentrifyType? type, }) { return AccessSchemasCentrify(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasCentrify &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasCentrify(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
