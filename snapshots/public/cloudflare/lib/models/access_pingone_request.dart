// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_pingone_request_config.dart';import 'access_pingone_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessPingoneRequestType {const AccessPingoneRequestType._(this.value);

factory AccessPingoneRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessPingoneRequestType._(json),
};}

static const AccessPingoneRequestType onetimepin = AccessPingoneRequestType._('onetimepin');

static const AccessPingoneRequestType azureAd = AccessPingoneRequestType._('azureAD');

static const AccessPingoneRequestType saml = AccessPingoneRequestType._('saml');

static const AccessPingoneRequestType centrify = AccessPingoneRequestType._('centrify');

static const AccessPingoneRequestType facebook = AccessPingoneRequestType._('facebook');

static const AccessPingoneRequestType github = AccessPingoneRequestType._('github');

static const AccessPingoneRequestType googleApps = AccessPingoneRequestType._('google-apps');

static const AccessPingoneRequestType google = AccessPingoneRequestType._('google');

static const AccessPingoneRequestType linkedin = AccessPingoneRequestType._('linkedin');

static const AccessPingoneRequestType oidc = AccessPingoneRequestType._('oidc');

static const AccessPingoneRequestType okta = AccessPingoneRequestType._('okta');

static const AccessPingoneRequestType onelogin = AccessPingoneRequestType._('onelogin');

static const AccessPingoneRequestType pingone = AccessPingoneRequestType._('pingone');

static const AccessPingoneRequestType yandex = AccessPingoneRequestType._('yandex');

static const List<AccessPingoneRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessPingoneRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessPingoneRequestType($value)';}
}
@immutable final class AccessPingoneRequest {const AccessPingoneRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessPingoneRequest.fromJson(Map<String, dynamic> json) {return AccessPingoneRequest(
  config: AccessPingoneRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessPingoneRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessPingoneRequestType.fromJson(json['type'] as String),
);}

final AccessPingoneRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessPingoneRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessPingoneRequestType type;

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
AccessPingoneRequest copyWith({AccessPingoneRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessPingoneRequestScimConfig? Function()? scimConfig, AccessPingoneRequestType? type, }) {return AccessPingoneRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessPingoneRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessPingoneRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
