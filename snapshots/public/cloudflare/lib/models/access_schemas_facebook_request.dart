// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_facebook_request_scim_config.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasFacebookRequestType {const AccessSchemasFacebookRequestType._(this.value);

factory AccessSchemasFacebookRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasFacebookRequestType._(json),
}; }

static const AccessSchemasFacebookRequestType onetimepin = AccessSchemasFacebookRequestType._('onetimepin');

static const AccessSchemasFacebookRequestType azureAd = AccessSchemasFacebookRequestType._('azureAD');

static const AccessSchemasFacebookRequestType saml = AccessSchemasFacebookRequestType._('saml');

static const AccessSchemasFacebookRequestType centrify = AccessSchemasFacebookRequestType._('centrify');

static const AccessSchemasFacebookRequestType facebook = AccessSchemasFacebookRequestType._('facebook');

static const AccessSchemasFacebookRequestType github = AccessSchemasFacebookRequestType._('github');

static const AccessSchemasFacebookRequestType googleApps = AccessSchemasFacebookRequestType._('google-apps');

static const AccessSchemasFacebookRequestType google = AccessSchemasFacebookRequestType._('google');

static const AccessSchemasFacebookRequestType linkedin = AccessSchemasFacebookRequestType._('linkedin');

static const AccessSchemasFacebookRequestType oidc = AccessSchemasFacebookRequestType._('oidc');

static const AccessSchemasFacebookRequestType okta = AccessSchemasFacebookRequestType._('okta');

static const AccessSchemasFacebookRequestType onelogin = AccessSchemasFacebookRequestType._('onelogin');

static const AccessSchemasFacebookRequestType pingone = AccessSchemasFacebookRequestType._('pingone');

static const AccessSchemasFacebookRequestType yandex = AccessSchemasFacebookRequestType._('yandex');

static const List<AccessSchemasFacebookRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasFacebookRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasFacebookRequestType($value)'; } 
 }
@immutable final class AccessSchemasFacebookRequest {const AccessSchemasFacebookRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasFacebookRequest.fromJson(Map<String, dynamic> json) { return AccessSchemasFacebookRequest(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasFacebookRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasFacebookRequestType.fromJson(json['type'] as String),
); }

final AccessSchemasGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasFacebookRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasFacebookRequestType type;

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
AccessSchemasFacebookRequest copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasFacebookRequestScimConfig? Function()? scimConfig, AccessSchemasFacebookRequestType? type, }) { return AccessSchemasFacebookRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasFacebookRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasFacebookRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
