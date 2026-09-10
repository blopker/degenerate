// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_google_apps_request_config.dart';import 'access_schemas_google_apps_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleAppsRequestType {const AccessSchemasGoogleAppsRequestType._(this.value);

factory AccessSchemasGoogleAppsRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGoogleAppsRequestType._(json),
};}

static const AccessSchemasGoogleAppsRequestType onetimepin = AccessSchemasGoogleAppsRequestType._('onetimepin');

static const AccessSchemasGoogleAppsRequestType azureAd = AccessSchemasGoogleAppsRequestType._('azureAD');

static const AccessSchemasGoogleAppsRequestType saml = AccessSchemasGoogleAppsRequestType._('saml');

static const AccessSchemasGoogleAppsRequestType centrify = AccessSchemasGoogleAppsRequestType._('centrify');

static const AccessSchemasGoogleAppsRequestType facebook = AccessSchemasGoogleAppsRequestType._('facebook');

static const AccessSchemasGoogleAppsRequestType github = AccessSchemasGoogleAppsRequestType._('github');

static const AccessSchemasGoogleAppsRequestType googleApps = AccessSchemasGoogleAppsRequestType._('google-apps');

static const AccessSchemasGoogleAppsRequestType google = AccessSchemasGoogleAppsRequestType._('google');

static const AccessSchemasGoogleAppsRequestType linkedin = AccessSchemasGoogleAppsRequestType._('linkedin');

static const AccessSchemasGoogleAppsRequestType oidc = AccessSchemasGoogleAppsRequestType._('oidc');

static const AccessSchemasGoogleAppsRequestType okta = AccessSchemasGoogleAppsRequestType._('okta');

static const AccessSchemasGoogleAppsRequestType onelogin = AccessSchemasGoogleAppsRequestType._('onelogin');

static const AccessSchemasGoogleAppsRequestType pingone = AccessSchemasGoogleAppsRequestType._('pingone');

static const AccessSchemasGoogleAppsRequestType yandex = AccessSchemasGoogleAppsRequestType._('yandex');

static const List<AccessSchemasGoogleAppsRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGoogleAppsRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGoogleAppsRequestType($value)';}
}
@immutable final class AccessSchemasGoogleAppsRequest {const AccessSchemasGoogleAppsRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogleAppsRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasGoogleAppsRequest(
  config: AccessSchemasGoogleAppsRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleAppsRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleAppsRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasGoogleAppsRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleAppsRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleAppsRequestType type;

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
AccessSchemasGoogleAppsRequest copyWith({AccessSchemasGoogleAppsRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleAppsRequestScimConfig? Function()? scimConfig, AccessSchemasGoogleAppsRequestType? type, }) {return AccessSchemasGoogleAppsRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGoogleAppsRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGoogleAppsRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
