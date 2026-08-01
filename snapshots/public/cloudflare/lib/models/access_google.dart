// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_google_config.dart';import 'access_google_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGoogleType {const AccessGoogleType._(this.value);

factory AccessGoogleType.fromJson(String json) { return switch (json) {
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
  _ => AccessGoogleType._(json),
}; }

static const AccessGoogleType onetimepin = AccessGoogleType._('onetimepin');

static const AccessGoogleType azureAd = AccessGoogleType._('azureAD');

static const AccessGoogleType saml = AccessGoogleType._('saml');

static const AccessGoogleType centrify = AccessGoogleType._('centrify');

static const AccessGoogleType facebook = AccessGoogleType._('facebook');

static const AccessGoogleType github = AccessGoogleType._('github');

static const AccessGoogleType googleApps = AccessGoogleType._('google-apps');

static const AccessGoogleType google = AccessGoogleType._('google');

static const AccessGoogleType linkedin = AccessGoogleType._('linkedin');

static const AccessGoogleType oidc = AccessGoogleType._('oidc');

static const AccessGoogleType okta = AccessGoogleType._('okta');

static const AccessGoogleType onelogin = AccessGoogleType._('onelogin');

static const AccessGoogleType pingone = AccessGoogleType._('pingone');

static const AccessGoogleType yandex = AccessGoogleType._('yandex');

static const List<AccessGoogleType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessGoogleType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessGoogleType($value)'; } 
 }
@immutable final class AccessGoogle {const AccessGoogle({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGoogle.fromJson(Map<String, dynamic> json) { return AccessGoogle(
  config: AccessGoogleConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGoogleScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGoogleType.fromJson(json['type'] as String),
); }

final AccessGoogleConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGoogleScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGoogleType type;

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
AccessGoogle copyWith({AccessGoogleConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGoogleScimConfig? Function()? scimConfig, AccessGoogleType? type, }) { return AccessGoogle(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGoogle &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessGoogle(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
