// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_saml_config.dart';import 'access_schemas_saml_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasSamlType {const AccessSchemasSamlType._(this.value);

factory AccessSchemasSamlType.fromJson(String json) { return switch (json) {
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
  _ => AccessSchemasSamlType._(json),
}; }

static const AccessSchemasSamlType onetimepin = AccessSchemasSamlType._('onetimepin');

static const AccessSchemasSamlType azureAd = AccessSchemasSamlType._('azureAD');

static const AccessSchemasSamlType saml = AccessSchemasSamlType._('saml');

static const AccessSchemasSamlType centrify = AccessSchemasSamlType._('centrify');

static const AccessSchemasSamlType facebook = AccessSchemasSamlType._('facebook');

static const AccessSchemasSamlType github = AccessSchemasSamlType._('github');

static const AccessSchemasSamlType googleApps = AccessSchemasSamlType._('google-apps');

static const AccessSchemasSamlType google = AccessSchemasSamlType._('google');

static const AccessSchemasSamlType linkedin = AccessSchemasSamlType._('linkedin');

static const AccessSchemasSamlType oidc = AccessSchemasSamlType._('oidc');

static const AccessSchemasSamlType okta = AccessSchemasSamlType._('okta');

static const AccessSchemasSamlType onelogin = AccessSchemasSamlType._('onelogin');

static const AccessSchemasSamlType pingone = AccessSchemasSamlType._('pingone');

static const AccessSchemasSamlType yandex = AccessSchemasSamlType._('yandex');

static const List<AccessSchemasSamlType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasSamlType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasSamlType($value)'; } 
 }
@immutable final class AccessSchemasSaml {const AccessSchemasSaml({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasSaml.fromJson(Map<String, dynamic> json) { return AccessSchemasSaml(
  config: AccessSchemasSamlConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasSamlScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasSamlType.fromJson(json['type'] as String),
); }

final AccessSchemasSamlConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasSamlScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasSamlType type;

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
AccessSchemasSaml copyWith({AccessSchemasSamlConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasSamlScimConfig? Function()? scimConfig, AccessSchemasSamlType? type, }) { return AccessSchemasSaml(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSaml &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasSaml(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
