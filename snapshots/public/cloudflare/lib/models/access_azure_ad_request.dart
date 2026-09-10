// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_azure_ad_request_config.dart';import 'access_azure_ad_request_scim_config.dart';import 'access_components_schemas_name.dart';import 'access_uuid.dart';/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
@immutable final class AccessAzureAdRequestType {const AccessAzureAdRequestType._(this.value);

factory AccessAzureAdRequestType.fromJson(String json) {return switch (json) {
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
  _ => AccessAzureAdRequestType._(json),
};}

static const AccessAzureAdRequestType onetimepin = AccessAzureAdRequestType._('onetimepin');

static const AccessAzureAdRequestType azureAd = AccessAzureAdRequestType._('azureAD');

static const AccessAzureAdRequestType saml = AccessAzureAdRequestType._('saml');

static const AccessAzureAdRequestType centrify = AccessAzureAdRequestType._('centrify');

static const AccessAzureAdRequestType facebook = AccessAzureAdRequestType._('facebook');

static const AccessAzureAdRequestType github = AccessAzureAdRequestType._('github');

static const AccessAzureAdRequestType googleApps = AccessAzureAdRequestType._('google-apps');

static const AccessAzureAdRequestType google = AccessAzureAdRequestType._('google');

static const AccessAzureAdRequestType linkedin = AccessAzureAdRequestType._('linkedin');

static const AccessAzureAdRequestType oidc = AccessAzureAdRequestType._('oidc');

static const AccessAzureAdRequestType okta = AccessAzureAdRequestType._('okta');

static const AccessAzureAdRequestType onelogin = AccessAzureAdRequestType._('onelogin');

static const AccessAzureAdRequestType pingone = AccessAzureAdRequestType._('pingone');

static const AccessAzureAdRequestType yandex = AccessAzureAdRequestType._('yandex');

static const List<AccessAzureAdRequestType> values = [onetimepin, azureAd, saml, centrify, facebook, github, googleApps, google, linkedin, oidc, okta, onelogin, pingone, yandex];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessAzureAdRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessAzureAdRequestType($value)';}
}
@immutable final class AccessAzureAdRequest {const AccessAzureAdRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessAzureAdRequest.fromJson(Map<String, dynamic> json) {return AccessAzureAdRequest(
  config: AccessAzureAdRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessAzureAdRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessAzureAdRequestType.fromJson(json['type'] as String),
);}

final AccessAzureAdRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessAzureAdRequestScimConfig? scimConfig;

/// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
final AccessAzureAdRequestType type;

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
AccessAzureAdRequest copyWith({AccessAzureAdRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessAzureAdRequestScimConfig? Function()? scimConfig, AccessAzureAdRequestType? type, }) {return AccessAzureAdRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessAzureAdRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessAzureAdRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}
