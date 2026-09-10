// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_onelogin_request_config.dart';import 'access_onelogin_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOneloginRequestType {const AccessOneloginRequestType._(this.value);

factory AccessOneloginRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessOneloginRequestType._(json),
};}

static const AccessOneloginRequestType onetimepin = AccessOneloginRequestType._('onetimepin');

static const AccessOneloginRequestType azureAd = AccessOneloginRequestType._('azureAD');

static const AccessOneloginRequestType saml = AccessOneloginRequestType._('saml');

static const AccessOneloginRequestType centrify = AccessOneloginRequestType._('centrify');

static const AccessOneloginRequestType facebook = AccessOneloginRequestType._('facebook');

static const AccessOneloginRequestType github = AccessOneloginRequestType._('github');

static const AccessOneloginRequestType googleApps = AccessOneloginRequestType._('google-apps');

static const AccessOneloginRequestType google = AccessOneloginRequestType._('google');

static const AccessOneloginRequestType linkedin = AccessOneloginRequestType._('linkedin');

static const AccessOneloginRequestType oidc = AccessOneloginRequestType._('oidc');

static const AccessOneloginRequestType okta = AccessOneloginRequestType._('okta');

static const AccessOneloginRequestType onelogin = AccessOneloginRequestType._('onelogin');

static const AccessOneloginRequestType pingone = AccessOneloginRequestType._('pingone');

static const AccessOneloginRequestType yandex = AccessOneloginRequestType._('yandex');

static const List<AccessOneloginRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessOneloginRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessOneloginRequestType($value)';}
}
@immutable final class AccessOneloginRequest {const AccessOneloginRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOneloginRequest.fromJson(Map<String, dynamic> json) {return AccessOneloginRequest(
  config: AccessOneloginRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOneloginRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOneloginRequestType.fromJson(json['type'] as String),
);}

final AccessOneloginRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOneloginRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOneloginRequestType type;

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
AccessOneloginRequest copyWith({AccessOneloginRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOneloginRequestScimConfig? Function()? scimConfig, AccessOneloginRequestType? type, }) {return AccessOneloginRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessOneloginRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessOneloginRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
