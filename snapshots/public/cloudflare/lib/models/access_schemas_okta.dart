// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_okta_config.dart';import 'access_schemas_okta_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOktaType {const AccessSchemasOktaType._(this.value);

factory AccessSchemasOktaType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasOktaType._(json),
}; }

static const AccessSchemasOktaType onetimepin = AccessSchemasOktaType._('onetimepin');

static const AccessSchemasOktaType azureAd = AccessSchemasOktaType._('azureAD');

static const AccessSchemasOktaType saml = AccessSchemasOktaType._('saml');

static const AccessSchemasOktaType centrify = AccessSchemasOktaType._('centrify');

static const AccessSchemasOktaType facebook = AccessSchemasOktaType._('facebook');

static const AccessSchemasOktaType github = AccessSchemasOktaType._('github');

static const AccessSchemasOktaType googleApps = AccessSchemasOktaType._('google-apps');

static const AccessSchemasOktaType google = AccessSchemasOktaType._('google');

static const AccessSchemasOktaType linkedin = AccessSchemasOktaType._('linkedin');

static const AccessSchemasOktaType oidc = AccessSchemasOktaType._('oidc');

static const AccessSchemasOktaType okta = AccessSchemasOktaType._('okta');

static const AccessSchemasOktaType onelogin = AccessSchemasOktaType._('onelogin');

static const AccessSchemasOktaType pingone = AccessSchemasOktaType._('pingone');

static const AccessSchemasOktaType yandex = AccessSchemasOktaType._('yandex');

static const List<AccessSchemasOktaType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasOktaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasOktaType($value)'; } 
 }
@immutable final class AccessSchemasOkta {const AccessSchemasOkta({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOkta.fromJson(Map<String, dynamic> json) { return AccessSchemasOkta(
  config: AccessSchemasOktaConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOktaScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOktaType.fromJson(json['type'] as String),
); }

final AccessSchemasOktaConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOktaScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOktaType type;

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
AccessSchemasOkta copyWith({AccessSchemasOktaConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasOktaScimConfig Function()? scimConfig, AccessSchemasOktaType? type, }) { return AccessSchemasOkta(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOkta &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOkta(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
