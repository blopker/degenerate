// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_oidc_request_config.dart';import 'access_schemas_oidc_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOidcRequestType {const AccessSchemasOidcRequestType._(this.value);

factory AccessSchemasOidcRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasOidcRequestType._(json),
}; }

static const AccessSchemasOidcRequestType onetimepin = AccessSchemasOidcRequestType._('onetimepin');

static const AccessSchemasOidcRequestType azureAd = AccessSchemasOidcRequestType._('azureAD');

static const AccessSchemasOidcRequestType saml = AccessSchemasOidcRequestType._('saml');

static const AccessSchemasOidcRequestType centrify = AccessSchemasOidcRequestType._('centrify');

static const AccessSchemasOidcRequestType facebook = AccessSchemasOidcRequestType._('facebook');

static const AccessSchemasOidcRequestType github = AccessSchemasOidcRequestType._('github');

static const AccessSchemasOidcRequestType googleApps = AccessSchemasOidcRequestType._('google-apps');

static const AccessSchemasOidcRequestType google = AccessSchemasOidcRequestType._('google');

static const AccessSchemasOidcRequestType linkedin = AccessSchemasOidcRequestType._('linkedin');

static const AccessSchemasOidcRequestType oidc = AccessSchemasOidcRequestType._('oidc');

static const AccessSchemasOidcRequestType okta = AccessSchemasOidcRequestType._('okta');

static const AccessSchemasOidcRequestType onelogin = AccessSchemasOidcRequestType._('onelogin');

static const AccessSchemasOidcRequestType pingone = AccessSchemasOidcRequestType._('pingone');

static const AccessSchemasOidcRequestType yandex = AccessSchemasOidcRequestType._('yandex');

static const List<AccessSchemasOidcRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOidcRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOidcRequestType($value)'; } 
 }
@immutable final class AccessSchemasOidcRequest {const AccessSchemasOidcRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOidcRequest.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcRequest(
  config: AccessSchemasOidcRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOidcRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOidcRequestType.fromJson(json['type'] as String),
); }

final AccessSchemasOidcRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOidcRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOidcRequestType type;

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
AccessSchemasOidcRequest copyWith({AccessSchemasOidcRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOidcRequestScimConfig? Function()? scimConfig, AccessSchemasOidcRequestType? type, }) { return AccessSchemasOidcRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOidcRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
