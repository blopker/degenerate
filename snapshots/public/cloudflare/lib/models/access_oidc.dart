// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_oidc_config.dart';import 'access_oidc_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOidcType {const AccessOidcType._(this.value);

factory AccessOidcType.fromJson(String json) { return switch (json) {
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
  _ => AccessOidcType._(json),
}; }

static const AccessOidcType onetimepin = AccessOidcType._('onetimepin');

static const AccessOidcType azureAd = AccessOidcType._('azureAD');

static const AccessOidcType saml = AccessOidcType._('saml');

static const AccessOidcType centrify = AccessOidcType._('centrify');

static const AccessOidcType facebook = AccessOidcType._('facebook');

static const AccessOidcType github = AccessOidcType._('github');

static const AccessOidcType googleApps = AccessOidcType._('google-apps');

static const AccessOidcType google = AccessOidcType._('google');

static const AccessOidcType linkedin = AccessOidcType._('linkedin');

static const AccessOidcType oidc = AccessOidcType._('oidc');

static const AccessOidcType okta = AccessOidcType._('okta');

static const AccessOidcType onelogin = AccessOidcType._('onelogin');

static const AccessOidcType pingone = AccessOidcType._('pingone');

static const AccessOidcType yandex = AccessOidcType._('yandex');

static const List<AccessOidcType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessOidcType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessOidcType($value)'; } 
 }
@immutable final class AccessOidc {const AccessOidc({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOidc.fromJson(Map<String, dynamic> json) { return AccessOidc(
  config: AccessOidcConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOidcScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOidcType.fromJson(json['type'] as String),
); }

final AccessOidcConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOidcScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOidcType type;

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
AccessOidc copyWith({AccessOidcConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessOidcScimConfig Function()? scimConfig, AccessOidcType? type, }) { return AccessOidc(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOidc &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessOidc(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
