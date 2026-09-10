// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_centrify_request_config.dart';import 'access_schemas_centrify_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasCentrifyRequestType {const AccessSchemasCentrifyRequestType._(this.value);

factory AccessSchemasCentrifyRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasCentrifyRequestType._(json),
}; }

static const AccessSchemasCentrifyRequestType onetimepin = AccessSchemasCentrifyRequestType._('onetimepin');

static const AccessSchemasCentrifyRequestType azureAd = AccessSchemasCentrifyRequestType._('azureAD');

static const AccessSchemasCentrifyRequestType saml = AccessSchemasCentrifyRequestType._('saml');

static const AccessSchemasCentrifyRequestType centrify = AccessSchemasCentrifyRequestType._('centrify');

static const AccessSchemasCentrifyRequestType facebook = AccessSchemasCentrifyRequestType._('facebook');

static const AccessSchemasCentrifyRequestType github = AccessSchemasCentrifyRequestType._('github');

static const AccessSchemasCentrifyRequestType googleApps = AccessSchemasCentrifyRequestType._('google-apps');

static const AccessSchemasCentrifyRequestType google = AccessSchemasCentrifyRequestType._('google');

static const AccessSchemasCentrifyRequestType linkedin = AccessSchemasCentrifyRequestType._('linkedin');

static const AccessSchemasCentrifyRequestType oidc = AccessSchemasCentrifyRequestType._('oidc');

static const AccessSchemasCentrifyRequestType okta = AccessSchemasCentrifyRequestType._('okta');

static const AccessSchemasCentrifyRequestType onelogin = AccessSchemasCentrifyRequestType._('onelogin');

static const AccessSchemasCentrifyRequestType pingone = AccessSchemasCentrifyRequestType._('pingone');

static const AccessSchemasCentrifyRequestType yandex = AccessSchemasCentrifyRequestType._('yandex');

static const List<AccessSchemasCentrifyRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasCentrifyRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasCentrifyRequestType($value)'; } 
 }
@immutable final class AccessSchemasCentrifyRequest {const AccessSchemasCentrifyRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasCentrifyRequest.fromJson(Map<String, dynamic> json) { return AccessSchemasCentrifyRequest(
  config: AccessSchemasCentrifyRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasCentrifyRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasCentrifyRequestType.fromJson(json['type'] as String),
); }

final AccessSchemasCentrifyRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasCentrifyRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasCentrifyRequestType type;

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
AccessSchemasCentrifyRequest copyWith({AccessSchemasCentrifyRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasCentrifyRequestScimConfig? Function()? scimConfig, AccessSchemasCentrifyRequestType? type, }) { return AccessSchemasCentrifyRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasCentrifyRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasCentrifyRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
