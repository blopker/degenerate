// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_azure_ad_request_config.dart';import 'access_schemas_azure_ad_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasAzureAdRequestType {const AccessSchemasAzureAdRequestType._(this.value);

factory AccessSchemasAzureAdRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasAzureAdRequestType._(json),
}; }

static const AccessSchemasAzureAdRequestType onetimepin = AccessSchemasAzureAdRequestType._('onetimepin');

static const AccessSchemasAzureAdRequestType azureAd = AccessSchemasAzureAdRequestType._('azureAD');

static const AccessSchemasAzureAdRequestType saml = AccessSchemasAzureAdRequestType._('saml');

static const AccessSchemasAzureAdRequestType centrify = AccessSchemasAzureAdRequestType._('centrify');

static const AccessSchemasAzureAdRequestType facebook = AccessSchemasAzureAdRequestType._('facebook');

static const AccessSchemasAzureAdRequestType github = AccessSchemasAzureAdRequestType._('github');

static const AccessSchemasAzureAdRequestType googleApps = AccessSchemasAzureAdRequestType._('google-apps');

static const AccessSchemasAzureAdRequestType google = AccessSchemasAzureAdRequestType._('google');

static const AccessSchemasAzureAdRequestType linkedin = AccessSchemasAzureAdRequestType._('linkedin');

static const AccessSchemasAzureAdRequestType oidc = AccessSchemasAzureAdRequestType._('oidc');

static const AccessSchemasAzureAdRequestType okta = AccessSchemasAzureAdRequestType._('okta');

static const AccessSchemasAzureAdRequestType onelogin = AccessSchemasAzureAdRequestType._('onelogin');

static const AccessSchemasAzureAdRequestType pingone = AccessSchemasAzureAdRequestType._('pingone');

static const AccessSchemasAzureAdRequestType yandex = AccessSchemasAzureAdRequestType._('yandex');

static const List<AccessSchemasAzureAdRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasAzureAdRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasAzureAdRequestType($value)'; } 
 }
@immutable final class AccessSchemasAzureAdRequest {const AccessSchemasAzureAdRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasAzureAdRequest.fromJson(Map<String, dynamic> json) { return AccessSchemasAzureAdRequest(
  config: AccessSchemasAzureAdRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasAzureAdRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasAzureAdRequestType.fromJson(json['type'] as String),
); }

final AccessSchemasAzureAdRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasAzureAdRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasAzureAdRequestType type;

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
AccessSchemasAzureAdRequest copyWith({AccessSchemasAzureAdRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasAzureAdRequestScimConfig? Function()? scimConfig, AccessSchemasAzureAdRequestType? type, }) { return AccessSchemasAzureAdRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasAzureAdRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasAzureAdRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
