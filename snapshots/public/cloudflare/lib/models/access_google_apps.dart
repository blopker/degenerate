// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_google_apps_config.dart';import 'access_google_apps_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGoogleAppsType {const AccessGoogleAppsType._(this.value);

factory AccessGoogleAppsType.fromJson(String json) { return switch (json) {
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
  _ => AccessGoogleAppsType._(json),
}; }

static const AccessGoogleAppsType onetimepin = AccessGoogleAppsType._('onetimepin');

static const AccessGoogleAppsType azureAd = AccessGoogleAppsType._('azureAD');

static const AccessGoogleAppsType saml = AccessGoogleAppsType._('saml');

static const AccessGoogleAppsType centrify = AccessGoogleAppsType._('centrify');

static const AccessGoogleAppsType facebook = AccessGoogleAppsType._('facebook');

static const AccessGoogleAppsType github = AccessGoogleAppsType._('github');

static const AccessGoogleAppsType googleApps = AccessGoogleAppsType._('google-apps');

static const AccessGoogleAppsType google = AccessGoogleAppsType._('google');

static const AccessGoogleAppsType linkedin = AccessGoogleAppsType._('linkedin');

static const AccessGoogleAppsType oidc = AccessGoogleAppsType._('oidc');

static const AccessGoogleAppsType okta = AccessGoogleAppsType._('okta');

static const AccessGoogleAppsType onelogin = AccessGoogleAppsType._('onelogin');

static const AccessGoogleAppsType pingone = AccessGoogleAppsType._('pingone');

static const AccessGoogleAppsType yandex = AccessGoogleAppsType._('yandex');

static const List<AccessGoogleAppsType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessGoogleAppsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessGoogleAppsType($value)'; } 
 }
@immutable final class AccessGoogleApps {const AccessGoogleApps({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGoogleApps.fromJson(Map<String, dynamic> json) { return AccessGoogleApps(
  config: AccessGoogleAppsConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGoogleAppsScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGoogleAppsType.fromJson(json['type'] as String),
); }

final AccessGoogleAppsConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGoogleAppsScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGoogleAppsType type;

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
AccessGoogleApps copyWith({AccessGoogleAppsConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGoogleAppsScimConfig? Function()? scimConfig, AccessGoogleAppsType? type, }) { return AccessGoogleApps(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGoogleApps &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessGoogleApps(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
