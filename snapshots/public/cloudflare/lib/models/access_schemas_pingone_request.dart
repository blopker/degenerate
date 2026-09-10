// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_pingone_request_config.dart';import 'access_schemas_pingone_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasPingoneRequestType {const AccessSchemasPingoneRequestType._(this.value);

factory AccessSchemasPingoneRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasPingoneRequestType._(json),
};}

static const AccessSchemasPingoneRequestType onetimepin = AccessSchemasPingoneRequestType._('onetimepin');

static const AccessSchemasPingoneRequestType azureAd = AccessSchemasPingoneRequestType._('azureAD');

static const AccessSchemasPingoneRequestType saml = AccessSchemasPingoneRequestType._('saml');

static const AccessSchemasPingoneRequestType centrify = AccessSchemasPingoneRequestType._('centrify');

static const AccessSchemasPingoneRequestType facebook = AccessSchemasPingoneRequestType._('facebook');

static const AccessSchemasPingoneRequestType github = AccessSchemasPingoneRequestType._('github');

static const AccessSchemasPingoneRequestType googleApps = AccessSchemasPingoneRequestType._('google-apps');

static const AccessSchemasPingoneRequestType google = AccessSchemasPingoneRequestType._('google');

static const AccessSchemasPingoneRequestType linkedin = AccessSchemasPingoneRequestType._('linkedin');

static const AccessSchemasPingoneRequestType oidc = AccessSchemasPingoneRequestType._('oidc');

static const AccessSchemasPingoneRequestType okta = AccessSchemasPingoneRequestType._('okta');

static const AccessSchemasPingoneRequestType onelogin = AccessSchemasPingoneRequestType._('onelogin');

static const AccessSchemasPingoneRequestType pingone = AccessSchemasPingoneRequestType._('pingone');

static const AccessSchemasPingoneRequestType yandex = AccessSchemasPingoneRequestType._('yandex');

static const List<AccessSchemasPingoneRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasPingoneRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasPingoneRequestType($value)';}
}
@immutable final class AccessSchemasPingoneRequest {const AccessSchemasPingoneRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasPingoneRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasPingoneRequest(
  config: AccessSchemasPingoneRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasPingoneRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasPingoneRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasPingoneRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasPingoneRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasPingoneRequestType type;

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
AccessSchemasPingoneRequest copyWith({AccessSchemasPingoneRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasPingoneRequestScimConfig? Function()? scimConfig, AccessSchemasPingoneRequestType? type, }) {return AccessSchemasPingoneRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasPingoneRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasPingoneRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
