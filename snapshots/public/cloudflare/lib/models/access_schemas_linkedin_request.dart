// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_generic_oauth_config.dart';import 'access_schemas_linkedin_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasLinkedinRequestType {const AccessSchemasLinkedinRequestType._(this.value);

factory AccessSchemasLinkedinRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasLinkedinRequestType._(json),
};}

static const AccessSchemasLinkedinRequestType onetimepin = AccessSchemasLinkedinRequestType._('onetimepin');

static const AccessSchemasLinkedinRequestType azureAd = AccessSchemasLinkedinRequestType._('azureAD');

static const AccessSchemasLinkedinRequestType saml = AccessSchemasLinkedinRequestType._('saml');

static const AccessSchemasLinkedinRequestType centrify = AccessSchemasLinkedinRequestType._('centrify');

static const AccessSchemasLinkedinRequestType facebook = AccessSchemasLinkedinRequestType._('facebook');

static const AccessSchemasLinkedinRequestType github = AccessSchemasLinkedinRequestType._('github');

static const AccessSchemasLinkedinRequestType googleApps = AccessSchemasLinkedinRequestType._('google-apps');

static const AccessSchemasLinkedinRequestType google = AccessSchemasLinkedinRequestType._('google');

static const AccessSchemasLinkedinRequestType linkedin = AccessSchemasLinkedinRequestType._('linkedin');

static const AccessSchemasLinkedinRequestType oidc = AccessSchemasLinkedinRequestType._('oidc');

static const AccessSchemasLinkedinRequestType okta = AccessSchemasLinkedinRequestType._('okta');

static const AccessSchemasLinkedinRequestType onelogin = AccessSchemasLinkedinRequestType._('onelogin');

static const AccessSchemasLinkedinRequestType pingone = AccessSchemasLinkedinRequestType._('pingone');

static const AccessSchemasLinkedinRequestType yandex = AccessSchemasLinkedinRequestType._('yandex');

static const List<AccessSchemasLinkedinRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasLinkedinRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasLinkedinRequestType($value)';}
}
@immutable final class AccessSchemasLinkedinRequest {const AccessSchemasLinkedinRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasLinkedinRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasLinkedinRequest(
  config: AccessSchemasGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasLinkedinRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasLinkedinRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasLinkedinRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasLinkedinRequestType type;

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
AccessSchemasLinkedinRequest copyWith({AccessSchemasGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasLinkedinRequestScimConfig? Function()? scimConfig, AccessSchemasLinkedinRequestType? type, }) {return AccessSchemasLinkedinRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasLinkedinRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasLinkedinRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
