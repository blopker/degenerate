// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_azure_ad_config.dart';import 'access_azure_ad_scim_config.dart';import 'access_components_schemas_name.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessAzureAdType {const AccessAzureAdType._(this.value);

factory AccessAzureAdType.fromJson(String json) { return switch (json) {
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
  _ => AccessAzureAdType._(json),
}; }

static const AccessAzureAdType onetimepin = AccessAzureAdType._('onetimepin');

static const AccessAzureAdType azureAd = AccessAzureAdType._('azureAD');

static const AccessAzureAdType saml = AccessAzureAdType._('saml');

static const AccessAzureAdType centrify = AccessAzureAdType._('centrify');

static const AccessAzureAdType facebook = AccessAzureAdType._('facebook');

static const AccessAzureAdType github = AccessAzureAdType._('github');

static const AccessAzureAdType googleApps = AccessAzureAdType._('google-apps');

static const AccessAzureAdType google = AccessAzureAdType._('google');

static const AccessAzureAdType linkedin = AccessAzureAdType._('linkedin');

static const AccessAzureAdType oidc = AccessAzureAdType._('oidc');

static const AccessAzureAdType okta = AccessAzureAdType._('okta');

static const AccessAzureAdType onelogin = AccessAzureAdType._('onelogin');

static const AccessAzureAdType pingone = AccessAzureAdType._('pingone');

static const AccessAzureAdType yandex = AccessAzureAdType._('yandex');

static const List<AccessAzureAdType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessAzureAdType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessAzureAdType($value)'; } 
 }
@immutable final class AccessAzureAd {const AccessAzureAd({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessAzureAd.fromJson(Map<String, dynamic> json) { return AccessAzureAd(
  config: AccessAzureAdConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessAzureAdScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessAzureAdType.fromJson(json['type'] as String),
); }

final AccessAzureAdConfig config;

final AccessUuid? id;

final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessAzureAdScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessAzureAdType type;

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
AccessAzureAd copyWith({AccessAzureAdConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessAzureAdScimConfig? Function()? scimConfig, AccessAzureAdType? type, }) { return AccessAzureAd(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAzureAd &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessAzureAd(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
