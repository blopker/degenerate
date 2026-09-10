// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_uuid.dart';import 'access_yandex_request_scim_config.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessYandexRequestType {const AccessYandexRequestType._(this.value);

factory AccessYandexRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessYandexRequestType._(json),
}; }

static const AccessYandexRequestType onetimepin = AccessYandexRequestType._('onetimepin');

static const AccessYandexRequestType azureAd = AccessYandexRequestType._('azureAD');

static const AccessYandexRequestType saml = AccessYandexRequestType._('saml');

static const AccessYandexRequestType centrify = AccessYandexRequestType._('centrify');

static const AccessYandexRequestType facebook = AccessYandexRequestType._('facebook');

static const AccessYandexRequestType github = AccessYandexRequestType._('github');

static const AccessYandexRequestType googleApps = AccessYandexRequestType._('google-apps');

static const AccessYandexRequestType google = AccessYandexRequestType._('google');

static const AccessYandexRequestType linkedin = AccessYandexRequestType._('linkedin');

static const AccessYandexRequestType oidc = AccessYandexRequestType._('oidc');

static const AccessYandexRequestType okta = AccessYandexRequestType._('okta');

static const AccessYandexRequestType onelogin = AccessYandexRequestType._('onelogin');

static const AccessYandexRequestType pingone = AccessYandexRequestType._('pingone');

static const AccessYandexRequestType yandex = AccessYandexRequestType._('yandex');

static const List<AccessYandexRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessYandexRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessYandexRequestType($value)'; } 
 }
@immutable final class AccessYandexRequest {const AccessYandexRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessYandexRequest.fromJson(Map<String, dynamic> json) { return AccessYandexRequest(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessYandexRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessYandexRequestType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessYandexRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessYandexRequestType type;

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
AccessYandexRequest copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessYandexRequestScimConfig? Function()? scimConfig, AccessYandexRequestType? type, }) { return AccessYandexRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessYandexRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessYandexRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
