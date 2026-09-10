// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_saml_request_config.dart';import 'access_schemas_saml_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessSchemasSamlRequestType {const AccessSchemasSamlRequestType._(this.value);

factory AccessSchemasSamlRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessSchemasSamlRequestType._(json),
};}

static const AccessSchemasSamlRequestType onetimepin = AccessSchemasSamlRequestType._('onetimepin');

static const AccessSchemasSamlRequestType azureAd = AccessSchemasSamlRequestType._('azureAD');

static const AccessSchemasSamlRequestType saml = AccessSchemasSamlRequestType._('saml');

static const AccessSchemasSamlRequestType centrify = AccessSchemasSamlRequestType._('centrify');

static const AccessSchemasSamlRequestType facebook = AccessSchemasSamlRequestType._('facebook');

static const AccessSchemasSamlRequestType github = AccessSchemasSamlRequestType._('github');

static const AccessSchemasSamlRequestType googleApps = AccessSchemasSamlRequestType._('google-apps');

static const AccessSchemasSamlRequestType google = AccessSchemasSamlRequestType._('google');

static const AccessSchemasSamlRequestType linkedin = AccessSchemasSamlRequestType._('linkedin');

static const AccessSchemasSamlRequestType oidc = AccessSchemasSamlRequestType._('oidc');

static const AccessSchemasSamlRequestType okta = AccessSchemasSamlRequestType._('okta');

static const AccessSchemasSamlRequestType onelogin = AccessSchemasSamlRequestType._('onelogin');

static const AccessSchemasSamlRequestType pingone = AccessSchemasSamlRequestType._('pingone');

static const AccessSchemasSamlRequestType yandex = AccessSchemasSamlRequestType._('yandex');

static const List<AccessSchemasSamlRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasSamlRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasSamlRequestType($value)';}
}
@immutable final class AccessSchemasSamlRequest {const AccessSchemasSamlRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasSamlRequest.fromJson(Map<String, dynamic> json) {return AccessSchemasSamlRequest(
  config: AccessSchemasSamlRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasSamlRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessSchemasSamlRequestType.fromJson(json['type'] as String),
);}

final AccessSchemasSamlRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasSamlRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessSchemasSamlRequestType type;

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
AccessSchemasSamlRequest copyWith({AccessSchemasSamlRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessSchemasSamlRequestScimConfig? Function()? scimConfig, AccessSchemasSamlRequestType? type, }) {return AccessSchemasSamlRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasSamlRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessSchemasSamlRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
