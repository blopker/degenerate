// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_yandex_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasYandexRequestType {const AccessSchemasYandexRequestType._(this.value);

factory AccessSchemasYandexRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasYandexRequestType._(json),
};}

static const AccessSchemasYandexRequestType onetimepin = AccessSchemasYandexRequestType._('onetimepin');

static const AccessSchemasYandexRequestType azureAd = AccessSchemasYandexRequestType._('azureAD');

static const AccessSchemasYandexRequestType saml = AccessSchemasYandexRequestType._('saml');

static const AccessSchemasYandexRequestType centrify = AccessSchemasYandexRequestType._('centrify');

static const AccessSchemasYandexRequestType facebook = AccessSchemasYandexRequestType._('facebook');

static const AccessSchemasYandexRequestType github = AccessSchemasYandexRequestType._('github');

static const AccessSchemasYandexRequestType googleApps = AccessSchemasYandexRequestType._('google-apps');

static const AccessSchemasYandexRequestType google = AccessSchemasYandexRequestType._('google');

static const AccessSchemasYandexRequestType linkedin = AccessSchemasYandexRequestType._('linkedin');

static const AccessSchemasYandexRequestType oidc = AccessSchemasYandexRequestType._('oidc');

static const AccessSchemasYandexRequestType okta = AccessSchemasYandexRequestType._('okta');

static const AccessSchemasYandexRequestType onelogin = AccessSchemasYandexRequestType._('onelogin');

static const AccessSchemasYandexRequestType pingone = AccessSchemasYandexRequestType._('pingone');

static const AccessSchemasYandexRequestType yandex = AccessSchemasYandexRequestType._('yandex');

static const List<AccessSchemasYandexRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasYandexRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasYandexRequestType($value)';}
}
@immutable final class AccessSchemasYandexRequest {const AccessSchemasYandexRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasYandexRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasYandexRequest(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasYandexRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasYandexRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasYandexRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasYandexRequestType type;

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
AccessSchemasYandexRequest copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasYandexRequestScimConfig? Function()? scimConfig, AccessSchemasYandexRequestType? type, }) {return AccessSchemasYandexRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasYandexRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasYandexRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
