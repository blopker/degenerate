// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_okta_request_config.dart';import 'access_okta_request_scim_config.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessOktaRequestType {const AccessOktaRequestType._(this.value);

factory AccessOktaRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessOktaRequestType._(json),
};}

static const AccessOktaRequestType onetimepin = AccessOktaRequestType._('onetimepin');

static const AccessOktaRequestType azureAd = AccessOktaRequestType._('azureAD');

static const AccessOktaRequestType saml = AccessOktaRequestType._('saml');

static const AccessOktaRequestType centrify = AccessOktaRequestType._('centrify');

static const AccessOktaRequestType facebook = AccessOktaRequestType._('facebook');

static const AccessOktaRequestType github = AccessOktaRequestType._('github');

static const AccessOktaRequestType googleApps = AccessOktaRequestType._('google-apps');

static const AccessOktaRequestType google = AccessOktaRequestType._('google');

static const AccessOktaRequestType linkedin = AccessOktaRequestType._('linkedin');

static const AccessOktaRequestType oidc = AccessOktaRequestType._('oidc');

static const AccessOktaRequestType okta = AccessOktaRequestType._('okta');

static const AccessOktaRequestType onelogin = AccessOktaRequestType._('onelogin');

static const AccessOktaRequestType pingone = AccessOktaRequestType._('pingone');

static const AccessOktaRequestType yandex = AccessOktaRequestType._('yandex');

static const List<AccessOktaRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessOktaRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessOktaRequestType($value)';}
}
@immutable final class AccessOktaRequest {const AccessOktaRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOktaRequest.fromJson(Map<String, dynamic> json) {return AccessOktaRequest(
  config: AccessOktaRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOktaRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOktaRequestType.fromJson(json['type'] as String),
);}

final AccessOktaRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOktaRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessOktaRequestType type;

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
AccessOktaRequest copyWith({AccessOktaRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOktaRequestScimConfig? Function()? scimConfig, AccessOktaRequestType? type, }) {return AccessOktaRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessOktaRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessOktaRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
