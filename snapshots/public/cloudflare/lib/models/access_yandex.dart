// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_uuid.dart';import 'access_yandex_scim_config.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessYandexType {const AccessYandexType._(this.value);

factory AccessYandexType.fromJson(String json) { return switch (json) {
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
  _ => AccessYandexType._(json),
}; }

static const AccessYandexType onetimepin = AccessYandexType._('onetimepin');

static const AccessYandexType azureAd = AccessYandexType._('azureAD');

static const AccessYandexType saml = AccessYandexType._('saml');

static const AccessYandexType centrify = AccessYandexType._('centrify');

static const AccessYandexType facebook = AccessYandexType._('facebook');

static const AccessYandexType github = AccessYandexType._('github');

static const AccessYandexType googleApps = AccessYandexType._('google-apps');

static const AccessYandexType google = AccessYandexType._('google');

static const AccessYandexType linkedin = AccessYandexType._('linkedin');

static const AccessYandexType oidc = AccessYandexType._('oidc');

static const AccessYandexType okta = AccessYandexType._('okta');

static const AccessYandexType onelogin = AccessYandexType._('onelogin');

static const AccessYandexType pingone = AccessYandexType._('pingone');

static const AccessYandexType yandex = AccessYandexType._('yandex');

static const List<AccessYandexType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessYandexType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessYandexType($value)'; } 
 }
@immutable final class AccessYandex {const AccessYandex({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessYandex.fromJson(Map<String, dynamic> json) { return AccessYandex(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessYandexScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessYandexType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessYandexScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessYandexType type;

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
AccessYandex copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessYandexScimConfig? Function()? scimConfig, AccessYandexType? type, }) { return AccessYandex(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessYandex &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessYandex(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
