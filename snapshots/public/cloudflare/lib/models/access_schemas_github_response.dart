// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config_response.dart';import 'access_schemas_github_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGithubResponseType {const AccessSchemasGithubResponseType._(this.value);

factory AccessSchemasGithubResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGithubResponseType._(json),
};}

static const AccessSchemasGithubResponseType onetimepin = AccessSchemasGithubResponseType._('onetimepin');

static const AccessSchemasGithubResponseType azureAd = AccessSchemasGithubResponseType._('azureAD');

static const AccessSchemasGithubResponseType saml = AccessSchemasGithubResponseType._('saml');

static const AccessSchemasGithubResponseType centrify = AccessSchemasGithubResponseType._('centrify');

static const AccessSchemasGithubResponseType facebook = AccessSchemasGithubResponseType._('facebook');

static const AccessSchemasGithubResponseType github = AccessSchemasGithubResponseType._('github');

static const AccessSchemasGithubResponseType googleApps = AccessSchemasGithubResponseType._('google-apps');

static const AccessSchemasGithubResponseType google = AccessSchemasGithubResponseType._('google');

static const AccessSchemasGithubResponseType linkedin = AccessSchemasGithubResponseType._('linkedin');

static const AccessSchemasGithubResponseType oidc = AccessSchemasGithubResponseType._('oidc');

static const AccessSchemasGithubResponseType okta = AccessSchemasGithubResponseType._('okta');

static const AccessSchemasGithubResponseType onelogin = AccessSchemasGithubResponseType._('onelogin');

static const AccessSchemasGithubResponseType pingone = AccessSchemasGithubResponseType._('pingone');

static const AccessSchemasGithubResponseType yandex = AccessSchemasGithubResponseType._('yandex');

static const List<AccessSchemasGithubResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGithubResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGithubResponseType($value)';}
}
@immutable final class AccessSchemasGithubResponse {const AccessSchemasGithubResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGithubResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasGithubResponse(
  config: AccessSchemasGenericOauthConfigResponse.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGithubResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGithubResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfigResponse config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGithubResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGithubResponseType type;

Map<String, dynamic> toJson() {return {
  'config': config.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': type.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type');}
AccessSchemasGithubResponse copyWith({AccessSchemasGenericOauthConfigResponse? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGithubResponseScimConfig? Function()? scimConfig, AccessSchemasGithubResponseType? type, }) {return AccessSchemasGithubResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGithubResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGithubResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
