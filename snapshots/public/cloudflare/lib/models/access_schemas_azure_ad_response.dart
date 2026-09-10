// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_azure_ad_response_config.dart';import 'access_schemas_azure_ad_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasAzureAdResponseType {const AccessSchemasAzureAdResponseType._(this.value);

factory AccessSchemasAzureAdResponseType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasAzureAdResponseType._(json),
}; }

static const AccessSchemasAzureAdResponseType onetimepin = AccessSchemasAzureAdResponseType._('onetimepin');

static const AccessSchemasAzureAdResponseType azureAd = AccessSchemasAzureAdResponseType._('azureAD');

static const AccessSchemasAzureAdResponseType saml = AccessSchemasAzureAdResponseType._('saml');

static const AccessSchemasAzureAdResponseType centrify = AccessSchemasAzureAdResponseType._('centrify');

static const AccessSchemasAzureAdResponseType facebook = AccessSchemasAzureAdResponseType._('facebook');

static const AccessSchemasAzureAdResponseType github = AccessSchemasAzureAdResponseType._('github');

static const AccessSchemasAzureAdResponseType googleApps = AccessSchemasAzureAdResponseType._('google-apps');

static const AccessSchemasAzureAdResponseType google = AccessSchemasAzureAdResponseType._('google');

static const AccessSchemasAzureAdResponseType linkedin = AccessSchemasAzureAdResponseType._('linkedin');

static const AccessSchemasAzureAdResponseType oidc = AccessSchemasAzureAdResponseType._('oidc');

static const AccessSchemasAzureAdResponseType okta = AccessSchemasAzureAdResponseType._('okta');

static const AccessSchemasAzureAdResponseType onelogin = AccessSchemasAzureAdResponseType._('onelogin');

static const AccessSchemasAzureAdResponseType pingone = AccessSchemasAzureAdResponseType._('pingone');

static const AccessSchemasAzureAdResponseType yandex = AccessSchemasAzureAdResponseType._('yandex');

static const List<AccessSchemasAzureAdResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasAzureAdResponseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasAzureAdResponseType($value)'; } 
 }
@immutable final class AccessSchemasAzureAdResponse {const AccessSchemasAzureAdResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasAzureAdResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasAzureAdResponse(
  config: AccessSchemasAzureAdResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasAzureAdResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasAzureAdResponseType.fromJson(json['type'] as String),
); }

final AccessSchemasAzureAdResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasAzureAdResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasAzureAdResponseType type;

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
AccessSchemasAzureAdResponse copyWith({AccessSchemasAzureAdResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasAzureAdResponseScimConfig? Function()? scimConfig, AccessSchemasAzureAdResponseType? type, }) { return AccessSchemasAzureAdResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasAzureAdResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasAzureAdResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
