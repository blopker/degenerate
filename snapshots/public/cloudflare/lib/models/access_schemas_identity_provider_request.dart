// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_identity_provider_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasIdentityProviderRequestType {const AccessSchemasIdentityProviderRequestType._(this.value);

factory AccessSchemasIdentityProviderRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasIdentityProviderRequestType._(json),
};}

static const AccessSchemasIdentityProviderRequestType onetimepin = AccessSchemasIdentityProviderRequestType._('onetimepin');

static const AccessSchemasIdentityProviderRequestType azureAd = AccessSchemasIdentityProviderRequestType._('azureAD');

static const AccessSchemasIdentityProviderRequestType saml = AccessSchemasIdentityProviderRequestType._('saml');

static const AccessSchemasIdentityProviderRequestType centrify = AccessSchemasIdentityProviderRequestType._('centrify');

static const AccessSchemasIdentityProviderRequestType facebook = AccessSchemasIdentityProviderRequestType._('facebook');

static const AccessSchemasIdentityProviderRequestType github = AccessSchemasIdentityProviderRequestType._('github');

static const AccessSchemasIdentityProviderRequestType googleApps = AccessSchemasIdentityProviderRequestType._('google-apps');

static const AccessSchemasIdentityProviderRequestType google = AccessSchemasIdentityProviderRequestType._('google');

static const AccessSchemasIdentityProviderRequestType linkedin = AccessSchemasIdentityProviderRequestType._('linkedin');

static const AccessSchemasIdentityProviderRequestType oidc = AccessSchemasIdentityProviderRequestType._('oidc');

static const AccessSchemasIdentityProviderRequestType okta = AccessSchemasIdentityProviderRequestType._('okta');

static const AccessSchemasIdentityProviderRequestType onelogin = AccessSchemasIdentityProviderRequestType._('onelogin');

static const AccessSchemasIdentityProviderRequestType pingone = AccessSchemasIdentityProviderRequestType._('pingone');

static const AccessSchemasIdentityProviderRequestType yandex = AccessSchemasIdentityProviderRequestType._('yandex');

static const List<AccessSchemasIdentityProviderRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasIdentityProviderRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasIdentityProviderRequestType($value)';}
}
@immutable final class AccessSchemasIdentityProviderRequest {const AccessSchemasIdentityProviderRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasIdentityProviderRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasIdentityProviderRequest(
  config: json['config'] as Map<String, dynamic>,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasIdentityProviderRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasIdentityProviderRequestType.fromJson(json['type'] as String),
);}

/// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final Map<String,dynamic> config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasIdentityProviderRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasIdentityProviderRequestType type;

Map<String, dynamic> toJson() {return {
  'config': config,
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': type.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type');}
AccessSchemasIdentityProviderRequest copyWith({Map<String,dynamic>? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasIdentityProviderRequestScimConfig? Function()? scimConfig, AccessSchemasIdentityProviderRequestType? type, }) {return AccessSchemasIdentityProviderRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasIdentityProviderRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasIdentityProviderRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
