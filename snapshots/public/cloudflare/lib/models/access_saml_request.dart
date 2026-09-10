// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_saml_request_config.dart';import 'access_saml_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSamlRequestType {const AccessSamlRequestType._(this.value);

factory AccessSamlRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSamlRequestType._(json),
};}

static const AccessSamlRequestType onetimepin = AccessSamlRequestType._('onetimepin');

static const AccessSamlRequestType azureAd = AccessSamlRequestType._('azureAD');

static const AccessSamlRequestType saml = AccessSamlRequestType._('saml');

static const AccessSamlRequestType centrify = AccessSamlRequestType._('centrify');

static const AccessSamlRequestType facebook = AccessSamlRequestType._('facebook');

static const AccessSamlRequestType github = AccessSamlRequestType._('github');

static const AccessSamlRequestType googleApps = AccessSamlRequestType._('google-apps');

static const AccessSamlRequestType google = AccessSamlRequestType._('google');

static const AccessSamlRequestType linkedin = AccessSamlRequestType._('linkedin');

static const AccessSamlRequestType oidc = AccessSamlRequestType._('oidc');

static const AccessSamlRequestType okta = AccessSamlRequestType._('okta');

static const AccessSamlRequestType onelogin = AccessSamlRequestType._('onelogin');

static const AccessSamlRequestType pingone = AccessSamlRequestType._('pingone');

static const AccessSamlRequestType yandex = AccessSamlRequestType._('yandex');

static const List<AccessSamlRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSamlRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSamlRequestType($value)';}
}
@immutable final class AccessSamlRequest {const AccessSamlRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSamlRequest.fromJson(Map<String, dynamic> json) {return AccessSamlRequest(
  config: AccessSamlRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSamlRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSamlRequestType.fromJson(json['type'] as String),
);}

final AccessSamlRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSamlRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSamlRequestType type;

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
AccessSamlRequest copyWith({AccessSamlRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSamlRequestScimConfig? Function()? scimConfig, AccessSamlRequestType? type, }) {return AccessSamlRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSamlRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSamlRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
