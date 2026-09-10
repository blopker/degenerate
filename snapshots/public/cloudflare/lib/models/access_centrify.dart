// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_centrify_config.dart';import 'access_centrify_scim_config.dart';import 'access_components_schemas_name.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessCentrifyType {const AccessCentrifyType._(this.value);

factory AccessCentrifyType.fromJson(String json) { return switch (json) {
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
  _ => AccessCentrifyType._(json),
}; }

static const AccessCentrifyType onetimepin = AccessCentrifyType._('onetimepin');

static const AccessCentrifyType azureAd = AccessCentrifyType._('azureAD');

static const AccessCentrifyType saml = AccessCentrifyType._('saml');

static const AccessCentrifyType centrify = AccessCentrifyType._('centrify');

static const AccessCentrifyType facebook = AccessCentrifyType._('facebook');

static const AccessCentrifyType github = AccessCentrifyType._('github');

static const AccessCentrifyType googleApps = AccessCentrifyType._('google-apps');

static const AccessCentrifyType google = AccessCentrifyType._('google');

static const AccessCentrifyType linkedin = AccessCentrifyType._('linkedin');

static const AccessCentrifyType oidc = AccessCentrifyType._('oidc');

static const AccessCentrifyType okta = AccessCentrifyType._('okta');

static const AccessCentrifyType onelogin = AccessCentrifyType._('onelogin');

static const AccessCentrifyType pingone = AccessCentrifyType._('pingone');

static const AccessCentrifyType yandex = AccessCentrifyType._('yandex');

static const List<AccessCentrifyType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessCentrifyType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessCentrifyType($value)'; } 
 }
@immutable final class AccessCentrify {const AccessCentrify({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessCentrify.fromJson(Map<String, dynamic> json) { return AccessCentrify(
  config: AccessCentrifyConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessCentrifyScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessCentrifyType.fromJson(json['type'] as String),
); }

final AccessCentrifyConfig config;

final AccessUuid? id;

final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessCentrifyScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessCentrifyType type;

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
AccessCentrify copyWith({AccessCentrifyConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessCentrifyScimConfig? Function()? scimConfig, AccessCentrifyType? type, }) { return AccessCentrify(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCentrify &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessCentrify(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
