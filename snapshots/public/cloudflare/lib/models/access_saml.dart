// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_saml_config.dart';import 'access_saml_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSamlType {const AccessSamlType._(this.value);

factory AccessSamlType.fromJson(String json) { return switch (json) {
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
  _ => AccessSamlType._(json),
}; }

static const AccessSamlType onetimepin = AccessSamlType._('onetimepin');

static const AccessSamlType azureAd = AccessSamlType._('azureAD');

static const AccessSamlType saml = AccessSamlType._('saml');

static const AccessSamlType centrify = AccessSamlType._('centrify');

static const AccessSamlType facebook = AccessSamlType._('facebook');

static const AccessSamlType github = AccessSamlType._('github');

static const AccessSamlType googleApps = AccessSamlType._('google-apps');

static const AccessSamlType google = AccessSamlType._('google');

static const AccessSamlType linkedin = AccessSamlType._('linkedin');

static const AccessSamlType oidc = AccessSamlType._('oidc');

static const AccessSamlType okta = AccessSamlType._('okta');

static const AccessSamlType onelogin = AccessSamlType._('onelogin');

static const AccessSamlType pingone = AccessSamlType._('pingone');

static const AccessSamlType yandex = AccessSamlType._('yandex');

static const List<AccessSamlType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSamlType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSamlType($value)'; } 
 }
@immutable final class AccessSaml {const AccessSaml({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSaml.fromJson(Map<String, dynamic> json) { return AccessSaml(
  config: AccessSamlConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSamlScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSamlType.fromJson(json['type'] as String),
); }

final AccessSamlConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSamlScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSamlType type;

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
AccessSaml copyWith({AccessSamlConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSamlScimConfig? Function()? scimConfig, AccessSamlType? type, }) { return AccessSaml(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSaml &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSaml(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
