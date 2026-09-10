// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_onelogin_response_config.dart';import 'access_schemas_onelogin_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOneloginResponseType {const AccessSchemasOneloginResponseType._(this.value);

factory AccessSchemasOneloginResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasOneloginResponseType._(json),
};}

static const AccessSchemasOneloginResponseType onetimepin = AccessSchemasOneloginResponseType._('onetimepin');

static const AccessSchemasOneloginResponseType azureAd = AccessSchemasOneloginResponseType._('azureAD');

static const AccessSchemasOneloginResponseType saml = AccessSchemasOneloginResponseType._('saml');

static const AccessSchemasOneloginResponseType centrify = AccessSchemasOneloginResponseType._('centrify');

static const AccessSchemasOneloginResponseType facebook = AccessSchemasOneloginResponseType._('facebook');

static const AccessSchemasOneloginResponseType github = AccessSchemasOneloginResponseType._('github');

static const AccessSchemasOneloginResponseType googleApps = AccessSchemasOneloginResponseType._('google-apps');

static const AccessSchemasOneloginResponseType google = AccessSchemasOneloginResponseType._('google');

static const AccessSchemasOneloginResponseType linkedin = AccessSchemasOneloginResponseType._('linkedin');

static const AccessSchemasOneloginResponseType oidc = AccessSchemasOneloginResponseType._('oidc');

static const AccessSchemasOneloginResponseType okta = AccessSchemasOneloginResponseType._('okta');

static const AccessSchemasOneloginResponseType onelogin = AccessSchemasOneloginResponseType._('onelogin');

static const AccessSchemasOneloginResponseType pingone = AccessSchemasOneloginResponseType._('pingone');

static const AccessSchemasOneloginResponseType yandex = AccessSchemasOneloginResponseType._('yandex');

static const List<AccessSchemasOneloginResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasOneloginResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasOneloginResponseType($value)';}
}
@immutable final class AccessSchemasOneloginResponse {const AccessSchemasOneloginResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOneloginResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasOneloginResponse(
  config: AccessSchemasOneloginResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOneloginResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOneloginResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasOneloginResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOneloginResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOneloginResponseType type;

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
AccessSchemasOneloginResponse copyWith({AccessSchemasOneloginResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOneloginResponseScimConfig? Function()? scimConfig, AccessSchemasOneloginResponseType? type, }) {return AccessSchemasOneloginResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasOneloginResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasOneloginResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
