// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_google_request_config.dart';import 'access_google_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGoogleRequestType {const AccessGoogleRequestType._(this.value);

factory AccessGoogleRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessGoogleRequestType._(json),
}; }

static const AccessGoogleRequestType onetimepin = AccessGoogleRequestType._('onetimepin');

static const AccessGoogleRequestType azureAd = AccessGoogleRequestType._('azureAD');

static const AccessGoogleRequestType saml = AccessGoogleRequestType._('saml');

static const AccessGoogleRequestType centrify = AccessGoogleRequestType._('centrify');

static const AccessGoogleRequestType facebook = AccessGoogleRequestType._('facebook');

static const AccessGoogleRequestType github = AccessGoogleRequestType._('github');

static const AccessGoogleRequestType googleApps = AccessGoogleRequestType._('google-apps');

static const AccessGoogleRequestType google = AccessGoogleRequestType._('google');

static const AccessGoogleRequestType linkedin = AccessGoogleRequestType._('linkedin');

static const AccessGoogleRequestType oidc = AccessGoogleRequestType._('oidc');

static const AccessGoogleRequestType okta = AccessGoogleRequestType._('okta');

static const AccessGoogleRequestType onelogin = AccessGoogleRequestType._('onelogin');

static const AccessGoogleRequestType pingone = AccessGoogleRequestType._('pingone');

static const AccessGoogleRequestType yandex = AccessGoogleRequestType._('yandex');

static const List<AccessGoogleRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessGoogleRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessGoogleRequestType($value)'; } 
 }
@immutable final class AccessGoogleRequest {const AccessGoogleRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGoogleRequest.fromJson(Map<String, dynamic> json) { return AccessGoogleRequest(
  config: AccessGoogleRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGoogleRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGoogleRequestType.fromJson(json['type'] as String),
); }

final AccessGoogleRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGoogleRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGoogleRequestType type;

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
AccessGoogleRequest copyWith({AccessGoogleRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGoogleRequestScimConfig? Function()? scimConfig, AccessGoogleRequestType? type, }) { return AccessGoogleRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGoogleRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessGoogleRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
