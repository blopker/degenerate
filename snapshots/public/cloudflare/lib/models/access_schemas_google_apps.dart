// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_google_apps_config.dart';import 'access_schemas_google_apps_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleAppsType {const AccessSchemasGoogleAppsType._(this.value);

factory AccessSchemasGoogleAppsType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasGoogleAppsType._(json),
}; }

static const AccessSchemasGoogleAppsType onetimepin = AccessSchemasGoogleAppsType._('onetimepin');

static const AccessSchemasGoogleAppsType azureAd = AccessSchemasGoogleAppsType._('azureAD');

static const AccessSchemasGoogleAppsType saml = AccessSchemasGoogleAppsType._('saml');

static const AccessSchemasGoogleAppsType centrify = AccessSchemasGoogleAppsType._('centrify');

static const AccessSchemasGoogleAppsType facebook = AccessSchemasGoogleAppsType._('facebook');

static const AccessSchemasGoogleAppsType github = AccessSchemasGoogleAppsType._('github');

static const AccessSchemasGoogleAppsType googleApps = AccessSchemasGoogleAppsType._('google-apps');

static const AccessSchemasGoogleAppsType google = AccessSchemasGoogleAppsType._('google');

static const AccessSchemasGoogleAppsType linkedin = AccessSchemasGoogleAppsType._('linkedin');

static const AccessSchemasGoogleAppsType oidc = AccessSchemasGoogleAppsType._('oidc');

static const AccessSchemasGoogleAppsType okta = AccessSchemasGoogleAppsType._('okta');

static const AccessSchemasGoogleAppsType onelogin = AccessSchemasGoogleAppsType._('onelogin');

static const AccessSchemasGoogleAppsType pingone = AccessSchemasGoogleAppsType._('pingone');

static const AccessSchemasGoogleAppsType yandex = AccessSchemasGoogleAppsType._('yandex');

static const List<AccessSchemasGoogleAppsType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasGoogleAppsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasGoogleAppsType($value)'; } 
 }
@immutable final class AccessSchemasGoogleApps {const AccessSchemasGoogleApps({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogleApps.fromJson(Map<String, dynamic> json) { return AccessSchemasGoogleApps(
  config: AccessSchemasGoogleAppsConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleAppsScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleAppsType.fromJson(json['type'] as String),
); }

final AccessSchemasGoogleAppsConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleAppsScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleAppsType type;

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
AccessSchemasGoogleApps copyWith({AccessSchemasGoogleAppsConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleAppsScimConfig Function()? scimConfig, AccessSchemasGoogleAppsType? type, }) { return AccessSchemasGoogleApps(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasGoogleApps &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasGoogleApps(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
