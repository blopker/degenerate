// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_oidc_response_config.dart';import 'access_schemas_oidc_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOidcResponseType {const AccessSchemasOidcResponseType._(this.value);

factory AccessSchemasOidcResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasOidcResponseType._(json),
}; }

static const AccessSchemasOidcResponseType onetimepin = AccessSchemasOidcResponseType._('onetimepin');

static const AccessSchemasOidcResponseType azureAd = AccessSchemasOidcResponseType._('azureAD');

static const AccessSchemasOidcResponseType saml = AccessSchemasOidcResponseType._('saml');

static const AccessSchemasOidcResponseType centrify = AccessSchemasOidcResponseType._('centrify');

static const AccessSchemasOidcResponseType facebook = AccessSchemasOidcResponseType._('facebook');

static const AccessSchemasOidcResponseType github = AccessSchemasOidcResponseType._('github');

static const AccessSchemasOidcResponseType googleApps = AccessSchemasOidcResponseType._('google-apps');

static const AccessSchemasOidcResponseType google = AccessSchemasOidcResponseType._('google');

static const AccessSchemasOidcResponseType linkedin = AccessSchemasOidcResponseType._('linkedin');

static const AccessSchemasOidcResponseType oidc = AccessSchemasOidcResponseType._('oidc');

static const AccessSchemasOidcResponseType okta = AccessSchemasOidcResponseType._('okta');

static const AccessSchemasOidcResponseType onelogin = AccessSchemasOidcResponseType._('onelogin');

static const AccessSchemasOidcResponseType pingone = AccessSchemasOidcResponseType._('pingone');

static const AccessSchemasOidcResponseType yandex = AccessSchemasOidcResponseType._('yandex');

static const List<AccessSchemasOidcResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOidcResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOidcResponseType($value)'; } 
 }
@immutable final class AccessSchemasOidcResponse {const AccessSchemasOidcResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOidcResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcResponse(
  config: AccessSchemasOidcResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOidcResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOidcResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasOidcResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOidcResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOidcResponseType type;

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
AccessSchemasOidcResponse copyWith({AccessSchemasOidcResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOidcResponseScimConfig? Function()? scimConfig, AccessSchemasOidcResponseType? type, }) { return AccessSchemasOidcResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOidcResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
