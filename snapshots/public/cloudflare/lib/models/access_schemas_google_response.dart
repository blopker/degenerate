// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config_response.dart';import 'access_schemas_google_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleResponseType {const AccessSchemasGoogleResponseType._(this.value);

factory AccessSchemasGoogleResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGoogleResponseType._(json),
};}

static const AccessSchemasGoogleResponseType onetimepin = AccessSchemasGoogleResponseType._('onetimepin');

static const AccessSchemasGoogleResponseType azureAd = AccessSchemasGoogleResponseType._('azureAD');

static const AccessSchemasGoogleResponseType saml = AccessSchemasGoogleResponseType._('saml');

static const AccessSchemasGoogleResponseType centrify = AccessSchemasGoogleResponseType._('centrify');

static const AccessSchemasGoogleResponseType facebook = AccessSchemasGoogleResponseType._('facebook');

static const AccessSchemasGoogleResponseType github = AccessSchemasGoogleResponseType._('github');

static const AccessSchemasGoogleResponseType googleApps = AccessSchemasGoogleResponseType._('google-apps');

static const AccessSchemasGoogleResponseType google = AccessSchemasGoogleResponseType._('google');

static const AccessSchemasGoogleResponseType linkedin = AccessSchemasGoogleResponseType._('linkedin');

static const AccessSchemasGoogleResponseType oidc = AccessSchemasGoogleResponseType._('oidc');

static const AccessSchemasGoogleResponseType okta = AccessSchemasGoogleResponseType._('okta');

static const AccessSchemasGoogleResponseType onelogin = AccessSchemasGoogleResponseType._('onelogin');

static const AccessSchemasGoogleResponseType pingone = AccessSchemasGoogleResponseType._('pingone');

static const AccessSchemasGoogleResponseType yandex = AccessSchemasGoogleResponseType._('yandex');

static const List<AccessSchemasGoogleResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGoogleResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGoogleResponseType($value)';}
}
@immutable final class AccessSchemasGoogleResponse {const AccessSchemasGoogleResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogleResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasGoogleResponse(
  config: AccessSchemasGenericOauthConfigResponse.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfigResponse config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleResponseType type;

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
AccessSchemasGoogleResponse copyWith({AccessSchemasGenericOauthConfigResponse? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleResponseScimConfig? Function()? scimConfig, AccessSchemasGoogleResponseType? type, }) {return AccessSchemasGoogleResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGoogleResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGoogleResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
