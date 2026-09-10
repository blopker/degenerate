// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_google_apps_request_config.dart';import 'access_google_apps_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGoogleAppsRequestType {const AccessGoogleAppsRequestType._(this.value);

factory AccessGoogleAppsRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessGoogleAppsRequestType._(json),
}; }

static const AccessGoogleAppsRequestType onetimepin = AccessGoogleAppsRequestType._('onetimepin');

static const AccessGoogleAppsRequestType azureAd = AccessGoogleAppsRequestType._('azureAD');

static const AccessGoogleAppsRequestType saml = AccessGoogleAppsRequestType._('saml');

static const AccessGoogleAppsRequestType centrify = AccessGoogleAppsRequestType._('centrify');

static const AccessGoogleAppsRequestType facebook = AccessGoogleAppsRequestType._('facebook');

static const AccessGoogleAppsRequestType github = AccessGoogleAppsRequestType._('github');

static const AccessGoogleAppsRequestType googleApps = AccessGoogleAppsRequestType._('google-apps');

static const AccessGoogleAppsRequestType google = AccessGoogleAppsRequestType._('google');

static const AccessGoogleAppsRequestType linkedin = AccessGoogleAppsRequestType._('linkedin');

static const AccessGoogleAppsRequestType oidc = AccessGoogleAppsRequestType._('oidc');

static const AccessGoogleAppsRequestType okta = AccessGoogleAppsRequestType._('okta');

static const AccessGoogleAppsRequestType onelogin = AccessGoogleAppsRequestType._('onelogin');

static const AccessGoogleAppsRequestType pingone = AccessGoogleAppsRequestType._('pingone');

static const AccessGoogleAppsRequestType yandex = AccessGoogleAppsRequestType._('yandex');

static const List<AccessGoogleAppsRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessGoogleAppsRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessGoogleAppsRequestType($value)'; } 
 }
@immutable final class AccessGoogleAppsRequest {const AccessGoogleAppsRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGoogleAppsRequest.fromJson(Map<String, dynamic> json) { return AccessGoogleAppsRequest(
  config: AccessGoogleAppsRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGoogleAppsRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGoogleAppsRequestType.fromJson(json['type'] as String),
); }

final AccessGoogleAppsRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGoogleAppsRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGoogleAppsRequestType type;

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
AccessGoogleAppsRequest copyWith({AccessGoogleAppsRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGoogleAppsRequestScimConfig? Function()? scimConfig, AccessGoogleAppsRequestType? type, }) { return AccessGoogleAppsRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGoogleAppsRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessGoogleAppsRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
