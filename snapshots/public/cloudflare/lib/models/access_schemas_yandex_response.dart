// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config_response.dart';import 'access_schemas_yandex_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasYandexResponseType {const AccessSchemasYandexResponseType._(this.value);

factory AccessSchemasYandexResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasYandexResponseType._(json),
}; }

static const AccessSchemasYandexResponseType onetimepin = AccessSchemasYandexResponseType._('onetimepin');

static const AccessSchemasYandexResponseType azureAd = AccessSchemasYandexResponseType._('azureAD');

static const AccessSchemasYandexResponseType saml = AccessSchemasYandexResponseType._('saml');

static const AccessSchemasYandexResponseType centrify = AccessSchemasYandexResponseType._('centrify');

static const AccessSchemasYandexResponseType facebook = AccessSchemasYandexResponseType._('facebook');

static const AccessSchemasYandexResponseType github = AccessSchemasYandexResponseType._('github');

static const AccessSchemasYandexResponseType googleApps = AccessSchemasYandexResponseType._('google-apps');

static const AccessSchemasYandexResponseType google = AccessSchemasYandexResponseType._('google');

static const AccessSchemasYandexResponseType linkedin = AccessSchemasYandexResponseType._('linkedin');

static const AccessSchemasYandexResponseType oidc = AccessSchemasYandexResponseType._('oidc');

static const AccessSchemasYandexResponseType okta = AccessSchemasYandexResponseType._('okta');

static const AccessSchemasYandexResponseType onelogin = AccessSchemasYandexResponseType._('onelogin');

static const AccessSchemasYandexResponseType pingone = AccessSchemasYandexResponseType._('pingone');

static const AccessSchemasYandexResponseType yandex = AccessSchemasYandexResponseType._('yandex');

static const List<AccessSchemasYandexResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasYandexResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasYandexResponseType($value)'; } 
 }
@immutable final class AccessSchemasYandexResponse {const AccessSchemasYandexResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasYandexResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasYandexResponse(
  config: AccessSchemasGenericOauthConfigResponse.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasYandexResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasYandexResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfigResponse config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasYandexResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasYandexResponseType type;

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
AccessSchemasYandexResponse copyWith({AccessSchemasGenericOauthConfigResponse? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasYandexResponseScimConfig? Function()? scimConfig, AccessSchemasYandexResponseType? type, }) { return AccessSchemasYandexResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasYandexResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasYandexResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
