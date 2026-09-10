// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_okta_response_config.dart';import 'access_schemas_okta_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOktaResponseType {const AccessSchemasOktaResponseType._(this.value);

factory AccessSchemasOktaResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasOktaResponseType._(json),
};}

static const AccessSchemasOktaResponseType onetimepin = AccessSchemasOktaResponseType._('onetimepin');

static const AccessSchemasOktaResponseType azureAd = AccessSchemasOktaResponseType._('azureAD');

static const AccessSchemasOktaResponseType saml = AccessSchemasOktaResponseType._('saml');

static const AccessSchemasOktaResponseType centrify = AccessSchemasOktaResponseType._('centrify');

static const AccessSchemasOktaResponseType facebook = AccessSchemasOktaResponseType._('facebook');

static const AccessSchemasOktaResponseType github = AccessSchemasOktaResponseType._('github');

static const AccessSchemasOktaResponseType googleApps = AccessSchemasOktaResponseType._('google-apps');

static const AccessSchemasOktaResponseType google = AccessSchemasOktaResponseType._('google');

static const AccessSchemasOktaResponseType linkedin = AccessSchemasOktaResponseType._('linkedin');

static const AccessSchemasOktaResponseType oidc = AccessSchemasOktaResponseType._('oidc');

static const AccessSchemasOktaResponseType okta = AccessSchemasOktaResponseType._('okta');

static const AccessSchemasOktaResponseType onelogin = AccessSchemasOktaResponseType._('onelogin');

static const AccessSchemasOktaResponseType pingone = AccessSchemasOktaResponseType._('pingone');

static const AccessSchemasOktaResponseType yandex = AccessSchemasOktaResponseType._('yandex');

static const List<AccessSchemasOktaResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasOktaResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasOktaResponseType($value)';}
}
@immutable final class AccessSchemasOktaResponse {const AccessSchemasOktaResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOktaResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasOktaResponse(
  config: AccessSchemasOktaResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOktaResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOktaResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasOktaResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOktaResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOktaResponseType type;

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
AccessSchemasOktaResponse copyWith({AccessSchemasOktaResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOktaResponseScimConfig? Function()? scimConfig, AccessSchemasOktaResponseType? type, }) {return AccessSchemasOktaResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasOktaResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasOktaResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
