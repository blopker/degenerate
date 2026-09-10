// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_pingone_response_config.dart';import 'access_schemas_pingone_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasPingoneResponseType {const AccessSchemasPingoneResponseType._(this.value);

factory AccessSchemasPingoneResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasPingoneResponseType._(json),
}; }

static const AccessSchemasPingoneResponseType onetimepin = AccessSchemasPingoneResponseType._('onetimepin');

static const AccessSchemasPingoneResponseType azureAd = AccessSchemasPingoneResponseType._('azureAD');

static const AccessSchemasPingoneResponseType saml = AccessSchemasPingoneResponseType._('saml');

static const AccessSchemasPingoneResponseType centrify = AccessSchemasPingoneResponseType._('centrify');

static const AccessSchemasPingoneResponseType facebook = AccessSchemasPingoneResponseType._('facebook');

static const AccessSchemasPingoneResponseType github = AccessSchemasPingoneResponseType._('github');

static const AccessSchemasPingoneResponseType googleApps = AccessSchemasPingoneResponseType._('google-apps');

static const AccessSchemasPingoneResponseType google = AccessSchemasPingoneResponseType._('google');

static const AccessSchemasPingoneResponseType linkedin = AccessSchemasPingoneResponseType._('linkedin');

static const AccessSchemasPingoneResponseType oidc = AccessSchemasPingoneResponseType._('oidc');

static const AccessSchemasPingoneResponseType okta = AccessSchemasPingoneResponseType._('okta');

static const AccessSchemasPingoneResponseType onelogin = AccessSchemasPingoneResponseType._('onelogin');

static const AccessSchemasPingoneResponseType pingone = AccessSchemasPingoneResponseType._('pingone');

static const AccessSchemasPingoneResponseType yandex = AccessSchemasPingoneResponseType._('yandex');

static const List<AccessSchemasPingoneResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasPingoneResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasPingoneResponseType($value)'; } 
 }
@immutable final class AccessSchemasPingoneResponse {const AccessSchemasPingoneResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasPingoneResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasPingoneResponse(
  config: AccessSchemasPingoneResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasPingoneResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasPingoneResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasPingoneResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasPingoneResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasPingoneResponseType type;

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
AccessSchemasPingoneResponse copyWith({AccessSchemasPingoneResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasPingoneResponseScimConfig? Function()? scimConfig, AccessSchemasPingoneResponseType? type, }) { return AccessSchemasPingoneResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPingoneResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasPingoneResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
