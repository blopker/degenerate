// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_facebook_scim_config.dart';import 'access_generic_oauth_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessFacebookType {const AccessFacebookType._(this.value);

factory AccessFacebookType.fromJson(String json) { return switch (json) {
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
  _ => AccessFacebookType._(json),
}; }

static const AccessFacebookType onetimepin = AccessFacebookType._('onetimepin');

static const AccessFacebookType azureAd = AccessFacebookType._('azureAD');

static const AccessFacebookType saml = AccessFacebookType._('saml');

static const AccessFacebookType centrify = AccessFacebookType._('centrify');

static const AccessFacebookType facebook = AccessFacebookType._('facebook');

static const AccessFacebookType github = AccessFacebookType._('github');

static const AccessFacebookType googleApps = AccessFacebookType._('google-apps');

static const AccessFacebookType google = AccessFacebookType._('google');

static const AccessFacebookType linkedin = AccessFacebookType._('linkedin');

static const AccessFacebookType oidc = AccessFacebookType._('oidc');

static const AccessFacebookType okta = AccessFacebookType._('okta');

static const AccessFacebookType onelogin = AccessFacebookType._('onelogin');

static const AccessFacebookType pingone = AccessFacebookType._('pingone');

static const AccessFacebookType yandex = AccessFacebookType._('yandex');

static const List<AccessFacebookType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessFacebookType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessFacebookType($value)'; } 
 }
@immutable final class AccessFacebook {const AccessFacebook({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessFacebook.fromJson(Map<String, dynamic> json) { return AccessFacebook(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessFacebookScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessFacebookType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessFacebookScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessFacebookType type;

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
AccessFacebook copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessFacebookScimConfig? Function()? scimConfig, AccessFacebookType? type, }) { return AccessFacebook(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessFacebook &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessFacebook(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
