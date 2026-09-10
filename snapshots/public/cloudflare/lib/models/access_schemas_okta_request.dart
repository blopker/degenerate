// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_okta_request_config.dart';import 'access_schemas_okta_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasOktaRequestType {const AccessSchemasOktaRequestType._(this.value);

factory AccessSchemasOktaRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasOktaRequestType._(json),
};}

static const AccessSchemasOktaRequestType onetimepin = AccessSchemasOktaRequestType._('onetimepin');

static const AccessSchemasOktaRequestType azureAd = AccessSchemasOktaRequestType._('azureAD');

static const AccessSchemasOktaRequestType saml = AccessSchemasOktaRequestType._('saml');

static const AccessSchemasOktaRequestType centrify = AccessSchemasOktaRequestType._('centrify');

static const AccessSchemasOktaRequestType facebook = AccessSchemasOktaRequestType._('facebook');

static const AccessSchemasOktaRequestType github = AccessSchemasOktaRequestType._('github');

static const AccessSchemasOktaRequestType googleApps = AccessSchemasOktaRequestType._('google-apps');

static const AccessSchemasOktaRequestType google = AccessSchemasOktaRequestType._('google');

static const AccessSchemasOktaRequestType linkedin = AccessSchemasOktaRequestType._('linkedin');

static const AccessSchemasOktaRequestType oidc = AccessSchemasOktaRequestType._('oidc');

static const AccessSchemasOktaRequestType okta = AccessSchemasOktaRequestType._('okta');

static const AccessSchemasOktaRequestType onelogin = AccessSchemasOktaRequestType._('onelogin');

static const AccessSchemasOktaRequestType pingone = AccessSchemasOktaRequestType._('pingone');

static const AccessSchemasOktaRequestType yandex = AccessSchemasOktaRequestType._('yandex');

static const List<AccessSchemasOktaRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasOktaRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasOktaRequestType($value)';}
}
@immutable final class AccessSchemasOktaRequest {const AccessSchemasOktaRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOktaRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasOktaRequest(
  config: AccessSchemasOktaRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOktaRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasOktaRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasOktaRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOktaRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasOktaRequestType type;

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
AccessSchemasOktaRequest copyWith({AccessSchemasOktaRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasOktaRequestScimConfig? Function()? scimConfig, AccessSchemasOktaRequestType? type, }) {return AccessSchemasOktaRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasOktaRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasOktaRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
