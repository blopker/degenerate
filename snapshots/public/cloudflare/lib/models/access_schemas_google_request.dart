// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_google_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasGoogleRequestType {const AccessSchemasGoogleRequestType._(this.value);

factory AccessSchemasGoogleRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasGoogleRequestType._(json),
};}

static const AccessSchemasGoogleRequestType onetimepin = AccessSchemasGoogleRequestType._('onetimepin');

static const AccessSchemasGoogleRequestType azureAd = AccessSchemasGoogleRequestType._('azureAD');

static const AccessSchemasGoogleRequestType saml = AccessSchemasGoogleRequestType._('saml');

static const AccessSchemasGoogleRequestType centrify = AccessSchemasGoogleRequestType._('centrify');

static const AccessSchemasGoogleRequestType facebook = AccessSchemasGoogleRequestType._('facebook');

static const AccessSchemasGoogleRequestType github = AccessSchemasGoogleRequestType._('github');

static const AccessSchemasGoogleRequestType googleApps = AccessSchemasGoogleRequestType._('google-apps');

static const AccessSchemasGoogleRequestType google = AccessSchemasGoogleRequestType._('google');

static const AccessSchemasGoogleRequestType linkedin = AccessSchemasGoogleRequestType._('linkedin');

static const AccessSchemasGoogleRequestType oidc = AccessSchemasGoogleRequestType._('oidc');

static const AccessSchemasGoogleRequestType okta = AccessSchemasGoogleRequestType._('okta');

static const AccessSchemasGoogleRequestType onelogin = AccessSchemasGoogleRequestType._('onelogin');

static const AccessSchemasGoogleRequestType pingone = AccessSchemasGoogleRequestType._('pingone');

static const AccessSchemasGoogleRequestType yandex = AccessSchemasGoogleRequestType._('yandex');

static const List<AccessSchemasGoogleRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasGoogleRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasGoogleRequestType($value)';}
}
@immutable final class AccessSchemasGoogleRequest {const AccessSchemasGoogleRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasGoogleRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasGoogleRequest(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasGoogleRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasGoogleRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasGoogleRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasGoogleRequestType type;

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
AccessSchemasGoogleRequest copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasGoogleRequestScimConfig? Function()? scimConfig, AccessSchemasGoogleRequestType? type, }) {return AccessSchemasGoogleRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasGoogleRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasGoogleRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
