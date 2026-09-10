// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_centrify_response_config.dart';import 'access_schemas_centrify_response_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasCentrifyResponseType {const AccessSchemasCentrifyResponseType._(this.value);

factory AccessSchemasCentrifyResponseType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasCentrifyResponseType._(json),
};}

static const AccessSchemasCentrifyResponseType onetimepin = AccessSchemasCentrifyResponseType._('onetimepin');

static const AccessSchemasCentrifyResponseType azureAd = AccessSchemasCentrifyResponseType._('azureAD');

static const AccessSchemasCentrifyResponseType saml = AccessSchemasCentrifyResponseType._('saml');

static const AccessSchemasCentrifyResponseType centrify = AccessSchemasCentrifyResponseType._('centrify');

static const AccessSchemasCentrifyResponseType facebook = AccessSchemasCentrifyResponseType._('facebook');

static const AccessSchemasCentrifyResponseType github = AccessSchemasCentrifyResponseType._('github');

static const AccessSchemasCentrifyResponseType googleApps = AccessSchemasCentrifyResponseType._('google-apps');

static const AccessSchemasCentrifyResponseType google = AccessSchemasCentrifyResponseType._('google');

static const AccessSchemasCentrifyResponseType linkedin = AccessSchemasCentrifyResponseType._('linkedin');

static const AccessSchemasCentrifyResponseType oidc = AccessSchemasCentrifyResponseType._('oidc');

static const AccessSchemasCentrifyResponseType okta = AccessSchemasCentrifyResponseType._('okta');

static const AccessSchemasCentrifyResponseType onelogin = AccessSchemasCentrifyResponseType._('onelogin');

static const AccessSchemasCentrifyResponseType pingone = AccessSchemasCentrifyResponseType._('pingone');

static const AccessSchemasCentrifyResponseType yandex = AccessSchemasCentrifyResponseType._('yandex');

static const List<AccessSchemasCentrifyResponseType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasCentrifyResponseType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasCentrifyResponseType($value)';}
}
@immutable final class AccessSchemasCentrifyResponse {const AccessSchemasCentrifyResponse({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasCentrifyResponse.fromJson(Map<String, dynamic> json) {return AccessSchemasCentrifyResponse(
  config: AccessSchemasCentrifyResponseConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasCentrifyResponseScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasCentrifyResponseType.fromJson(json['type'] as String),
);}

final AccessSchemasCentrifyResponseConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasCentrifyResponseScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasCentrifyResponseType type;

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
AccessSchemasCentrifyResponse copyWith({AccessSchemasCentrifyResponseConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasCentrifyResponseScimConfig? Function()? scimConfig, AccessSchemasCentrifyResponseType? type, }) {return AccessSchemasCentrifyResponse(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasCentrifyResponse &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasCentrifyResponse(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
