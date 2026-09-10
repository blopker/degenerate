// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_onelogin_request_config.dart';import 'access_schemas_onelogin_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOneloginRequestType {const AccessSchemasOneloginRequestType._(this.value);

factory AccessSchemasOneloginRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasOneloginRequestType._(json),
};}

static const AccessSchemasOneloginRequestType onetimepin = AccessSchemasOneloginRequestType._('onetimepin');

static const AccessSchemasOneloginRequestType azureAd = AccessSchemasOneloginRequestType._('azureAD');

static const AccessSchemasOneloginRequestType saml = AccessSchemasOneloginRequestType._('saml');

static const AccessSchemasOneloginRequestType centrify = AccessSchemasOneloginRequestType._('centrify');

static const AccessSchemasOneloginRequestType facebook = AccessSchemasOneloginRequestType._('facebook');

static const AccessSchemasOneloginRequestType github = AccessSchemasOneloginRequestType._('github');

static const AccessSchemasOneloginRequestType googleApps = AccessSchemasOneloginRequestType._('google-apps');

static const AccessSchemasOneloginRequestType google = AccessSchemasOneloginRequestType._('google');

static const AccessSchemasOneloginRequestType linkedin = AccessSchemasOneloginRequestType._('linkedin');

static const AccessSchemasOneloginRequestType oidc = AccessSchemasOneloginRequestType._('oidc');

static const AccessSchemasOneloginRequestType okta = AccessSchemasOneloginRequestType._('okta');

static const AccessSchemasOneloginRequestType onelogin = AccessSchemasOneloginRequestType._('onelogin');

static const AccessSchemasOneloginRequestType pingone = AccessSchemasOneloginRequestType._('pingone');

static const AccessSchemasOneloginRequestType yandex = AccessSchemasOneloginRequestType._('yandex');

static const List<AccessSchemasOneloginRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasOneloginRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasOneloginRequestType($value)';}
}
@immutable final class AccessSchemasOneloginRequest {const AccessSchemasOneloginRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOneloginRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasOneloginRequest(
  config: AccessSchemasOneloginRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOneloginRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOneloginRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasOneloginRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOneloginRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOneloginRequestType type;

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
AccessSchemasOneloginRequest copyWith({AccessSchemasOneloginRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOneloginRequestScimConfig? Function()? scimConfig, AccessSchemasOneloginRequestType? type, }) {return AccessSchemasOneloginRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasOneloginRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasOneloginRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
