// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_facebook_response_scim_config.dart';import 'access_schemas_generic_oauth_config_response.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasFacebookResponseType {const AccessSchemasFacebookResponseType._(this.value);

factory AccessSchemasFacebookResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasFacebookResponseType._(json),
}; }

static const AccessSchemasFacebookResponseType onetimepin = AccessSchemasFacebookResponseType._('onetimepin');

static const AccessSchemasFacebookResponseType azureAd = AccessSchemasFacebookResponseType._('azureAD');

static const AccessSchemasFacebookResponseType saml = AccessSchemasFacebookResponseType._('saml');

static const AccessSchemasFacebookResponseType centrify = AccessSchemasFacebookResponseType._('centrify');

static const AccessSchemasFacebookResponseType facebook = AccessSchemasFacebookResponseType._('facebook');

static const AccessSchemasFacebookResponseType github = AccessSchemasFacebookResponseType._('github');

static const AccessSchemasFacebookResponseType googleApps = AccessSchemasFacebookResponseType._('google-apps');

static const AccessSchemasFacebookResponseType google = AccessSchemasFacebookResponseType._('google');

static const AccessSchemasFacebookResponseType linkedin = AccessSchemasFacebookResponseType._('linkedin');

static const AccessSchemasFacebookResponseType oidc = AccessSchemasFacebookResponseType._('oidc');

static const AccessSchemasFacebookResponseType okta = AccessSchemasFacebookResponseType._('okta');

static const AccessSchemasFacebookResponseType onelogin = AccessSchemasFacebookResponseType._('onelogin');

static const AccessSchemasFacebookResponseType pingone = AccessSchemasFacebookResponseType._('pingone');

static const AccessSchemasFacebookResponseType yandex = AccessSchemasFacebookResponseType._('yandex');

static const List<AccessSchemasFacebookResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasFacebookResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasFacebookResponseType($value)'; } 
 }
@immutable final class AccessSchemasFacebookResponse {const AccessSchemasFacebookResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasFacebookResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasFacebookResponse(
  config: AccessSchemasGenericOauthConfigResponse.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasFacebookResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasFacebookResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfigResponse config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasFacebookResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasFacebookResponseType type;

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
AccessSchemasFacebookResponse copyWith({AccessSchemasGenericOauthConfigResponse? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasFacebookResponseScimConfig? Function()? scimConfig, AccessSchemasFacebookResponseType? type, }) { return AccessSchemasFacebookResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasFacebookResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasFacebookResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
