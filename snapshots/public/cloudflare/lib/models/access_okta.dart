// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_okta_config.dart';import 'access_okta_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOktaType {const AccessOktaType._(this.value);

factory AccessOktaType.fromJson(String json) { return switch (json) {
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
  _ => AccessOktaType._(json),
}; }

static const AccessOktaType onetimepin = AccessOktaType._('onetimepin');

static const AccessOktaType azureAd = AccessOktaType._('azureAD');

static const AccessOktaType saml = AccessOktaType._('saml');

static const AccessOktaType centrify = AccessOktaType._('centrify');

static const AccessOktaType facebook = AccessOktaType._('facebook');

static const AccessOktaType github = AccessOktaType._('github');

static const AccessOktaType googleApps = AccessOktaType._('google-apps');

static const AccessOktaType google = AccessOktaType._('google');

static const AccessOktaType linkedin = AccessOktaType._('linkedin');

static const AccessOktaType oidc = AccessOktaType._('oidc');

static const AccessOktaType okta = AccessOktaType._('okta');

static const AccessOktaType onelogin = AccessOktaType._('onelogin');

static const AccessOktaType pingone = AccessOktaType._('pingone');

static const AccessOktaType yandex = AccessOktaType._('yandex');

static const List<AccessOktaType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessOktaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessOktaType($value)'; } 
 }
@immutable final class AccessOkta {const AccessOkta({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOkta.fromJson(Map<String, dynamic> json) { return AccessOkta(
  config: AccessOktaConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOktaScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOktaType.fromJson(json['type'] as String),
); }

final AccessOktaConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOktaScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOktaType type;

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
AccessOkta copyWith({AccessOktaConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOktaScimConfig? Function()? scimConfig, AccessOktaType? type, }) { return AccessOkta(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOkta &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessOkta(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
