// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_github_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessGithubRequestType {const AccessGithubRequestType._(this.value);

factory AccessGithubRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessGithubRequestType._(json),
};}

static const AccessGithubRequestType onetimepin = AccessGithubRequestType._('onetimepin');

static const AccessGithubRequestType azureAd = AccessGithubRequestType._('azureAD');

static const AccessGithubRequestType saml = AccessGithubRequestType._('saml');

static const AccessGithubRequestType centrify = AccessGithubRequestType._('centrify');

static const AccessGithubRequestType facebook = AccessGithubRequestType._('facebook');

static const AccessGithubRequestType github = AccessGithubRequestType._('github');

static const AccessGithubRequestType googleApps = AccessGithubRequestType._('google-apps');

static const AccessGithubRequestType google = AccessGithubRequestType._('google');

static const AccessGithubRequestType linkedin = AccessGithubRequestType._('linkedin');

static const AccessGithubRequestType oidc = AccessGithubRequestType._('oidc');

static const AccessGithubRequestType okta = AccessGithubRequestType._('okta');

static const AccessGithubRequestType onelogin = AccessGithubRequestType._('onelogin');

static const AccessGithubRequestType pingone = AccessGithubRequestType._('pingone');

static const AccessGithubRequestType yandex = AccessGithubRequestType._('yandex');

static const List<AccessGithubRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessGithubRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessGithubRequestType($value)';}
}
@immutable final class AccessGithubRequest {const AccessGithubRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessGithubRequest.fromJson(Map<String, dynamic> json) {return AccessGithubRequest(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessGithubRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessGithubRequestType.fromJson(json['type'] as String),
);}

final AccessGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessGithubRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessGithubRequestType type;

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
AccessGithubRequest copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessGithubRequestScimConfig? Function()? scimConfig, AccessGithubRequestType? type, }) {return AccessGithubRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessGithubRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessGithubRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
