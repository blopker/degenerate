// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config_response.dart';import 'access_schemas_linkedin_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasLinkedinResponseType {const AccessSchemasLinkedinResponseType._(this.value);

factory AccessSchemasLinkedinResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasLinkedinResponseType._(json),
}; }

static const AccessSchemasLinkedinResponseType onetimepin = AccessSchemasLinkedinResponseType._('onetimepin');

static const AccessSchemasLinkedinResponseType azureAd = AccessSchemasLinkedinResponseType._('azureAD');

static const AccessSchemasLinkedinResponseType saml = AccessSchemasLinkedinResponseType._('saml');

static const AccessSchemasLinkedinResponseType centrify = AccessSchemasLinkedinResponseType._('centrify');

static const AccessSchemasLinkedinResponseType facebook = AccessSchemasLinkedinResponseType._('facebook');

static const AccessSchemasLinkedinResponseType github = AccessSchemasLinkedinResponseType._('github');

static const AccessSchemasLinkedinResponseType googleApps = AccessSchemasLinkedinResponseType._('google-apps');

static const AccessSchemasLinkedinResponseType google = AccessSchemasLinkedinResponseType._('google');

static const AccessSchemasLinkedinResponseType linkedin = AccessSchemasLinkedinResponseType._('linkedin');

static const AccessSchemasLinkedinResponseType oidc = AccessSchemasLinkedinResponseType._('oidc');

static const AccessSchemasLinkedinResponseType okta = AccessSchemasLinkedinResponseType._('okta');

static const AccessSchemasLinkedinResponseType onelogin = AccessSchemasLinkedinResponseType._('onelogin');

static const AccessSchemasLinkedinResponseType pingone = AccessSchemasLinkedinResponseType._('pingone');

static const AccessSchemasLinkedinResponseType yandex = AccessSchemasLinkedinResponseType._('yandex');

static const List<AccessSchemasLinkedinResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasLinkedinResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasLinkedinResponseType($value)'; } 
 }
@immutable final class AccessSchemasLinkedinResponse {const AccessSchemasLinkedinResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasLinkedinResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasLinkedinResponse(
  config: AccessSchemasGenericOauthConfigResponse.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasLinkedinResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasLinkedinResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfigResponse config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasLinkedinResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasLinkedinResponseType type;

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
AccessSchemasLinkedinResponse copyWith({AccessSchemasGenericOauthConfigResponse? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasLinkedinResponseScimConfig? Function()? scimConfig, AccessSchemasLinkedinResponseType? type, }) { return AccessSchemasLinkedinResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasLinkedinResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasLinkedinResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
