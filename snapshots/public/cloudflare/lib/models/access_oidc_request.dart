// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_oidc_request_config.dart';import 'access_oidc_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOidcRequestType {const AccessOidcRequestType._(this.value);

factory AccessOidcRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessOidcRequestType._(json),
}; }

static const AccessOidcRequestType onetimepin = AccessOidcRequestType._('onetimepin');

static const AccessOidcRequestType azureAd = AccessOidcRequestType._('azureAD');

static const AccessOidcRequestType saml = AccessOidcRequestType._('saml');

static const AccessOidcRequestType centrify = AccessOidcRequestType._('centrify');

static const AccessOidcRequestType facebook = AccessOidcRequestType._('facebook');

static const AccessOidcRequestType github = AccessOidcRequestType._('github');

static const AccessOidcRequestType googleApps = AccessOidcRequestType._('google-apps');

static const AccessOidcRequestType google = AccessOidcRequestType._('google');

static const AccessOidcRequestType linkedin = AccessOidcRequestType._('linkedin');

static const AccessOidcRequestType oidc = AccessOidcRequestType._('oidc');

static const AccessOidcRequestType okta = AccessOidcRequestType._('okta');

static const AccessOidcRequestType onelogin = AccessOidcRequestType._('onelogin');

static const AccessOidcRequestType pingone = AccessOidcRequestType._('pingone');

static const AccessOidcRequestType yandex = AccessOidcRequestType._('yandex');

static const List<AccessOidcRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessOidcRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessOidcRequestType($value)'; } 
 }
@immutable final class AccessOidcRequest {const AccessOidcRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOidcRequest.fromJson(Map<String, dynamic> json) { return AccessOidcRequest(
  config: AccessOidcRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOidcRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOidcRequestType.fromJson(json['type'] as String),
); }

final AccessOidcRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOidcRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOidcRequestType type;

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
AccessOidcRequest copyWith({AccessOidcRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOidcRequestScimConfig? Function()? scimConfig, AccessOidcRequestType? type, }) { return AccessOidcRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOidcRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessOidcRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
