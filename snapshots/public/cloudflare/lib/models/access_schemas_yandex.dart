// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_yandex_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasYandexType {const AccessSchemasYandexType._(this.value);

factory AccessSchemasYandexType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasYandexType._(json),
}; }

static const AccessSchemasYandexType onetimepin = AccessSchemasYandexType._('onetimepin');

static const AccessSchemasYandexType azureAd = AccessSchemasYandexType._('azureAD');

static const AccessSchemasYandexType saml = AccessSchemasYandexType._('saml');

static const AccessSchemasYandexType centrify = AccessSchemasYandexType._('centrify');

static const AccessSchemasYandexType facebook = AccessSchemasYandexType._('facebook');

static const AccessSchemasYandexType github = AccessSchemasYandexType._('github');

static const AccessSchemasYandexType googleApps = AccessSchemasYandexType._('google-apps');

static const AccessSchemasYandexType google = AccessSchemasYandexType._('google');

static const AccessSchemasYandexType linkedin = AccessSchemasYandexType._('linkedin');

static const AccessSchemasYandexType oidc = AccessSchemasYandexType._('oidc');

static const AccessSchemasYandexType okta = AccessSchemasYandexType._('okta');

static const AccessSchemasYandexType onelogin = AccessSchemasYandexType._('onelogin');

static const AccessSchemasYandexType pingone = AccessSchemasYandexType._('pingone');

static const AccessSchemasYandexType yandex = AccessSchemasYandexType._('yandex');

static const List<AccessSchemasYandexType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasYandexType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasYandexType($value)'; } 
 }
@immutable final class AccessSchemasYandex {const AccessSchemasYandex({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasYandex.fromJson(Map<String, dynamic> json) { return AccessSchemasYandex(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasYandexScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasYandexType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasYandexScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasYandexType type;

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
AccessSchemasYandex copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasYandexScimConfig? Function()? scimConfig, AccessSchemasYandexType? type, }) { return AccessSchemasYandex(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasYandex &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasYandex(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
