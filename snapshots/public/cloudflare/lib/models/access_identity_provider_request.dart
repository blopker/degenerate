// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_identity_provider_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessIdentityProviderRequestType {const AccessIdentityProviderRequestType._(this.value);

factory AccessIdentityProviderRequestType.fromJson(String json) { return switch (json) {
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
  _ => AccessIdentityProviderRequestType._(json),
}; }

static const AccessIdentityProviderRequestType onetimepin = AccessIdentityProviderRequestType._('onetimepin');

static const AccessIdentityProviderRequestType azureAd = AccessIdentityProviderRequestType._('azureAD');

static const AccessIdentityProviderRequestType saml = AccessIdentityProviderRequestType._('saml');

static const AccessIdentityProviderRequestType centrify = AccessIdentityProviderRequestType._('centrify');

static const AccessIdentityProviderRequestType facebook = AccessIdentityProviderRequestType._('facebook');

static const AccessIdentityProviderRequestType github = AccessIdentityProviderRequestType._('github');

static const AccessIdentityProviderRequestType googleApps = AccessIdentityProviderRequestType._('google-apps');

static const AccessIdentityProviderRequestType google = AccessIdentityProviderRequestType._('google');

static const AccessIdentityProviderRequestType linkedin = AccessIdentityProviderRequestType._('linkedin');

static const AccessIdentityProviderRequestType oidc = AccessIdentityProviderRequestType._('oidc');

static const AccessIdentityProviderRequestType okta = AccessIdentityProviderRequestType._('okta');

static const AccessIdentityProviderRequestType onelogin = AccessIdentityProviderRequestType._('onelogin');

static const AccessIdentityProviderRequestType pingone = AccessIdentityProviderRequestType._('pingone');

static const AccessIdentityProviderRequestType yandex = AccessIdentityProviderRequestType._('yandex');

static const List<AccessIdentityProviderRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessIdentityProviderRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessIdentityProviderRequestType($value)'; } 
 }
@immutable final class AccessIdentityProviderRequest {const AccessIdentityProviderRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessIdentityProviderRequest.fromJson(Map<String, dynamic> json) { return AccessIdentityProviderRequest(
  config: json['config'] as Map<String, dynamic>,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessIdentityProviderRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessIdentityProviderRequestType.fromJson(json['type'] as String),
); }

/// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final Map<String,dynamic> config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessIdentityProviderRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessIdentityProviderRequestType type;

Map<String, dynamic> toJson() { return {
  'config': config,
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
AccessIdentityProviderRequest copyWith({Map<String,dynamic>? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessIdentityProviderRequestScimConfig? Function()? scimConfig, AccessIdentityProviderRequestType? type, }) { return AccessIdentityProviderRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIdentityProviderRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessIdentityProviderRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }
