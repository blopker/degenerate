// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_azure_ad.dart';import 'access_schemas_centrify.dart';import 'access_schemas_facebook.dart';import 'access_schemas_github.dart';import 'access_schemas_google.dart';import 'access_schemas_google_apps.dart';import 'access_schemas_linkedin.dart';import 'access_schemas_oidc.dart';import 'access_schemas_okta.dart';import 'access_schemas_onelogin.dart';import 'access_schemas_pingone.dart';import 'access_schemas_saml.dart';import 'access_schemas_yandex.dart';final class AccessSchemasIdentityProviders {const AccessSchemasIdentityProviders({this.accessSchemasAzureAd, this.accessSchemasCentrify, this.accessSchemasFacebook, this.accessSchemasGithub, this.accessSchemasGoogle, this.accessSchemasGoogleApps, this.accessSchemasLinkedin, this.accessSchemasOidc, this.accessSchemasOkta, this.accessSchemasOnelogin, this.accessSchemasPingone, this.accessSchemasSaml, this.accessSchemasYandex, });

factory AccessSchemasIdentityProviders.fromJson(Map<String, dynamic> json) { return AccessSchemasIdentityProviders(
  accessSchemasAzureAd: AccessSchemasAzureAd.canParse(json) ? AccessSchemasAzureAd.fromJson(json) : null,
  accessSchemasCentrify: AccessSchemasCentrify.canParse(json) ? AccessSchemasCentrify.fromJson(json) : null,
  accessSchemasFacebook: AccessSchemasFacebook.canParse(json) ? AccessSchemasFacebook.fromJson(json) : null,
  accessSchemasGithub: AccessSchemasGithub.canParse(json) ? AccessSchemasGithub.fromJson(json) : null,
  accessSchemasGoogle: AccessSchemasGoogle.canParse(json) ? AccessSchemasGoogle.fromJson(json) : null,
  accessSchemasGoogleApps: AccessSchemasGoogleApps.canParse(json) ? AccessSchemasGoogleApps.fromJson(json) : null,
  accessSchemasLinkedin: AccessSchemasLinkedin.canParse(json) ? AccessSchemasLinkedin.fromJson(json) : null,
  accessSchemasOidc: AccessSchemasOidc.canParse(json) ? AccessSchemasOidc.fromJson(json) : null,
  accessSchemasOkta: AccessSchemasOkta.canParse(json) ? AccessSchemasOkta.fromJson(json) : null,
  accessSchemasOnelogin: AccessSchemasOnelogin.canParse(json) ? AccessSchemasOnelogin.fromJson(json) : null,
  accessSchemasPingone: AccessSchemasPingone.canParse(json) ? AccessSchemasPingone.fromJson(json) : null,
  accessSchemasSaml: AccessSchemasSaml.canParse(json) ? AccessSchemasSaml.fromJson(json) : null,
  accessSchemasYandex: AccessSchemasYandex.canParse(json) ? AccessSchemasYandex.fromJson(json) : null,
); }

final AccessSchemasAzureAd? accessSchemasAzureAd;

final AccessSchemasCentrify? accessSchemasCentrify;

final AccessSchemasFacebook? accessSchemasFacebook;

final AccessSchemasGithub? accessSchemasGithub;

final AccessSchemasGoogle? accessSchemasGoogle;

final AccessSchemasGoogleApps? accessSchemasGoogleApps;

final AccessSchemasLinkedin? accessSchemasLinkedin;

final AccessSchemasOidc? accessSchemasOidc;

final AccessSchemasOkta? accessSchemasOkta;

final AccessSchemasOnelogin? accessSchemasOnelogin;

final AccessSchemasPingone? accessSchemasPingone;

final AccessSchemasSaml? accessSchemasSaml;

final AccessSchemasYandex? accessSchemasYandex;

/// At least one variant must be present.
bool get isValid { return accessSchemasAzureAd != null || accessSchemasCentrify != null || accessSchemasFacebook != null || accessSchemasGithub != null || accessSchemasGoogle != null || accessSchemasGoogleApps != null || accessSchemasLinkedin != null || accessSchemasOidc != null || accessSchemasOkta != null || accessSchemasOnelogin != null || accessSchemasPingone != null || accessSchemasSaml != null || accessSchemasYandex != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessSchemasAzureAd?.toJson(),
  ...?accessSchemasCentrify?.toJson(),
  ...?accessSchemasFacebook?.toJson(),
  ...?accessSchemasGithub?.toJson(),
  ...?accessSchemasGoogle?.toJson(),
  ...?accessSchemasGoogleApps?.toJson(),
  ...?accessSchemasLinkedin?.toJson(),
  ...?accessSchemasOidc?.toJson(),
  ...?accessSchemasOkta?.toJson(),
  ...?accessSchemasOnelogin?.toJson(),
  ...?accessSchemasPingone?.toJson(),
  ...?accessSchemasSaml?.toJson(),
  ...?accessSchemasYandex?.toJson(),
}; } 
 }
