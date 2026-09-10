// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_centrify_request_config.dart';import 'access_centrify_request_scim_config.dart';import 'access_components_schemas_name.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessCentrifyRequestType {const AccessCentrifyRequestType._(this.value);

factory AccessCentrifyRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessCentrifyRequestType._(json),
}; }

static const AccessCentrifyRequestType onetimepin = AccessCentrifyRequestType._('onetimepin');

static const AccessCentrifyRequestType azureAd = AccessCentrifyRequestType._('azureAD');

static const AccessCentrifyRequestType saml = AccessCentrifyRequestType._('saml');

static const AccessCentrifyRequestType centrify = AccessCentrifyRequestType._('centrify');

static const AccessCentrifyRequestType facebook = AccessCentrifyRequestType._('facebook');

static const AccessCentrifyRequestType github = AccessCentrifyRequestType._('github');

static const AccessCentrifyRequestType googleApps = AccessCentrifyRequestType._('google-apps');

static const AccessCentrifyRequestType google = AccessCentrifyRequestType._('google');

static const AccessCentrifyRequestType linkedin = AccessCentrifyRequestType._('linkedin');

static const AccessCentrifyRequestType oidc = AccessCentrifyRequestType._('oidc');

static const AccessCentrifyRequestType okta = AccessCentrifyRequestType._('okta');

static const AccessCentrifyRequestType onelogin = AccessCentrifyRequestType._('onelogin');

static const AccessCentrifyRequestType pingone = AccessCentrifyRequestType._('pingone');

static const AccessCentrifyRequestType yandex = AccessCentrifyRequestType._('yandex');

static const List<AccessCentrifyRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessCentrifyRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessCentrifyRequestType($value)'; } 
 }
@immutable final class AccessCentrifyRequest {const AccessCentrifyRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessCentrifyRequest.fromJson(Map<String, dynamic> json) { return AccessCentrifyRequest(
  config: AccessCentrifyRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessCentrifyRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessCentrifyRequestType.fromJson(json['type'] as String),
); }

final AccessCentrifyRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessCentrifyRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessCentrifyRequestType type;

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
AccessCentrifyRequest copyWith({AccessCentrifyRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessCentrifyRequestScimConfig? Function()? scimConfig, AccessCentrifyRequestType? type, }) { return AccessCentrifyRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCentrifyRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessCentrifyRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
