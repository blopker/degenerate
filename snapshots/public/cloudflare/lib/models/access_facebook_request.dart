// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_facebook_request_scim_config.dart';import 'access_generic_oauth_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessFacebookRequestType {const AccessFacebookRequestType._(this.value);

factory AccessFacebookRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessFacebookRequestType._(json),
}; }

static const AccessFacebookRequestType onetimepin = AccessFacebookRequestType._('onetimepin');

static const AccessFacebookRequestType azureAd = AccessFacebookRequestType._('azureAD');

static const AccessFacebookRequestType saml = AccessFacebookRequestType._('saml');

static const AccessFacebookRequestType centrify = AccessFacebookRequestType._('centrify');

static const AccessFacebookRequestType facebook = AccessFacebookRequestType._('facebook');

static const AccessFacebookRequestType github = AccessFacebookRequestType._('github');

static const AccessFacebookRequestType googleApps = AccessFacebookRequestType._('google-apps');

static const AccessFacebookRequestType google = AccessFacebookRequestType._('google');

static const AccessFacebookRequestType linkedin = AccessFacebookRequestType._('linkedin');

static const AccessFacebookRequestType oidc = AccessFacebookRequestType._('oidc');

static const AccessFacebookRequestType okta = AccessFacebookRequestType._('okta');

static const AccessFacebookRequestType onelogin = AccessFacebookRequestType._('onelogin');

static const AccessFacebookRequestType pingone = AccessFacebookRequestType._('pingone');

static const AccessFacebookRequestType yandex = AccessFacebookRequestType._('yandex');

static const List<AccessFacebookRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessFacebookRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessFacebookRequestType($value)'; } 
 }
@immutable final class AccessFacebookRequest {const AccessFacebookRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessFacebookRequest.fromJson(Map<String, dynamic> json) { return AccessFacebookRequest(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessFacebookRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessFacebookRequestType.fromJson(json['type'] as String),
); }

final AccessGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessFacebookRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessFacebookRequestType type;

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
AccessFacebookRequest copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessFacebookRequestScimConfig? Function()? scimConfig, AccessFacebookRequestType? type, }) { return AccessFacebookRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessFacebookRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessFacebookRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
