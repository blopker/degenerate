// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_google_apps_response_config.dart';import 'access_schemas_google_apps_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleAppsResponseType {const AccessSchemasGoogleAppsResponseType._(this.value);

factory AccessSchemasGoogleAppsResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGoogleAppsResponseType._(json),
};}

static const AccessSchemasGoogleAppsResponseType onetimepin = AccessSchemasGoogleAppsResponseType._('onetimepin');

static const AccessSchemasGoogleAppsResponseType azureAd = AccessSchemasGoogleAppsResponseType._('azureAD');

static const AccessSchemasGoogleAppsResponseType saml = AccessSchemasGoogleAppsResponseType._('saml');

static const AccessSchemasGoogleAppsResponseType centrify = AccessSchemasGoogleAppsResponseType._('centrify');

static const AccessSchemasGoogleAppsResponseType facebook = AccessSchemasGoogleAppsResponseType._('facebook');

static const AccessSchemasGoogleAppsResponseType github = AccessSchemasGoogleAppsResponseType._('github');

static const AccessSchemasGoogleAppsResponseType googleApps = AccessSchemasGoogleAppsResponseType._('google-apps');

static const AccessSchemasGoogleAppsResponseType google = AccessSchemasGoogleAppsResponseType._('google');

static const AccessSchemasGoogleAppsResponseType linkedin = AccessSchemasGoogleAppsResponseType._('linkedin');

static const AccessSchemasGoogleAppsResponseType oidc = AccessSchemasGoogleAppsResponseType._('oidc');

static const AccessSchemasGoogleAppsResponseType okta = AccessSchemasGoogleAppsResponseType._('okta');

static const AccessSchemasGoogleAppsResponseType onelogin = AccessSchemasGoogleAppsResponseType._('onelogin');

static const AccessSchemasGoogleAppsResponseType pingone = AccessSchemasGoogleAppsResponseType._('pingone');

static const AccessSchemasGoogleAppsResponseType yandex = AccessSchemasGoogleAppsResponseType._('yandex');

static const List<AccessSchemasGoogleAppsResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGoogleAppsResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGoogleAppsResponseType($value)';}
}
@immutable final class AccessSchemasGoogleAppsResponse {const AccessSchemasGoogleAppsResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogleAppsResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasGoogleAppsResponse(
  config: AccessSchemasGoogleAppsResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleAppsResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleAppsResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasGoogleAppsResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleAppsResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleAppsResponseType type;

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
AccessSchemasGoogleAppsResponse copyWith({AccessSchemasGoogleAppsResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleAppsResponseScimConfig? Function()? scimConfig, AccessSchemasGoogleAppsResponseType? type, }) {return AccessSchemasGoogleAppsResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGoogleAppsResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGoogleAppsResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
