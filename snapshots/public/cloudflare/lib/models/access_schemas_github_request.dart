// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_github_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGithubRequestType {const AccessSchemasGithubRequestType._(this.value);

factory AccessSchemasGithubRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGithubRequestType._(json),
};}

static const AccessSchemasGithubRequestType onetimepin = AccessSchemasGithubRequestType._('onetimepin');

static const AccessSchemasGithubRequestType azureAd = AccessSchemasGithubRequestType._('azureAD');

static const AccessSchemasGithubRequestType saml = AccessSchemasGithubRequestType._('saml');

static const AccessSchemasGithubRequestType centrify = AccessSchemasGithubRequestType._('centrify');

static const AccessSchemasGithubRequestType facebook = AccessSchemasGithubRequestType._('facebook');

static const AccessSchemasGithubRequestType github = AccessSchemasGithubRequestType._('github');

static const AccessSchemasGithubRequestType googleApps = AccessSchemasGithubRequestType._('google-apps');

static const AccessSchemasGithubRequestType google = AccessSchemasGithubRequestType._('google');

static const AccessSchemasGithubRequestType linkedin = AccessSchemasGithubRequestType._('linkedin');

static const AccessSchemasGithubRequestType oidc = AccessSchemasGithubRequestType._('oidc');

static const AccessSchemasGithubRequestType okta = AccessSchemasGithubRequestType._('okta');

static const AccessSchemasGithubRequestType onelogin = AccessSchemasGithubRequestType._('onelogin');

static const AccessSchemasGithubRequestType pingone = AccessSchemasGithubRequestType._('pingone');

static const AccessSchemasGithubRequestType yandex = AccessSchemasGithubRequestType._('yandex');

static const List<AccessSchemasGithubRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGithubRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGithubRequestType($value)';}
}
@immutable final class AccessSchemasGithubRequest {const AccessSchemasGithubRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGithubRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasGithubRequest(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGithubRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGithubRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGithubRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGithubRequestType type;

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
AccessSchemasGithubRequest copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGithubRequestScimConfig? Function()? scimConfig, AccessSchemasGithubRequestType? type, }) {return AccessSchemasGithubRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGithubRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGithubRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
