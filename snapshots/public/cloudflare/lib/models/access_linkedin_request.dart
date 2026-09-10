// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_generic_oauth_config.dart';import 'access_linkedin_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessLinkedinRequestType {const AccessLinkedinRequestType._(this.value);

factory AccessLinkedinRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessLinkedinRequestType._(json),
};}

static const AccessLinkedinRequestType onetimepin = AccessLinkedinRequestType._('onetimepin');

static const AccessLinkedinRequestType azureAd = AccessLinkedinRequestType._('azureAD');

static const AccessLinkedinRequestType saml = AccessLinkedinRequestType._('saml');

static const AccessLinkedinRequestType centrify = AccessLinkedinRequestType._('centrify');

static const AccessLinkedinRequestType facebook = AccessLinkedinRequestType._('facebook');

static const AccessLinkedinRequestType github = AccessLinkedinRequestType._('github');

static const AccessLinkedinRequestType googleApps = AccessLinkedinRequestType._('google-apps');

static const AccessLinkedinRequestType google = AccessLinkedinRequestType._('google');

static const AccessLinkedinRequestType linkedin = AccessLinkedinRequestType._('linkedin');

static const AccessLinkedinRequestType oidc = AccessLinkedinRequestType._('oidc');

static const AccessLinkedinRequestType okta = AccessLinkedinRequestType._('okta');

static const AccessLinkedinRequestType onelogin = AccessLinkedinRequestType._('onelogin');

static const AccessLinkedinRequestType pingone = AccessLinkedinRequestType._('pingone');

static const AccessLinkedinRequestType yandex = AccessLinkedinRequestType._('yandex');

static const List<AccessLinkedinRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessLinkedinRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessLinkedinRequestType($value)';}
}
@immutable final class AccessLinkedinRequest {const AccessLinkedinRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessLinkedinRequest.fromJson(Map<String, dynamic> json) {return AccessLinkedinRequest(
  config: AccessGenericOauthConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessLinkedinRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessLinkedinRequestType.fromJson(json['type'] as String),
);}

final AccessGenericOauthConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessLinkedinRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessLinkedinRequestType type;

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
AccessLinkedinRequest copyWith({AccessGenericOauthConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessLinkedinRequestScimConfig? Function()? scimConfig, AccessLinkedinRequestType? type, }) {return AccessLinkedinRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessLinkedinRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessLinkedinRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
