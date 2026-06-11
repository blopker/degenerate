// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_azure_ad.dart';import 'access_centrify.dart';import 'access_facebook.dart';import 'access_github.dart';import 'access_google.dart';import 'access_google_apps.dart';import 'access_linkedin.dart';import 'access_oidc.dart';import 'access_okta.dart';import 'access_onelogin.dart';import 'access_pingone.dart';import 'access_saml.dart';import 'access_yandex.dart';final class AccessResponseCollectionResult {const AccessResponseCollectionResult({this.accessAzureAd, this.accessCentrify, this.accessFacebook, this.accessGithub, this.accessGoogle, this.accessGoogleApps, this.accessLinkedin, this.accessOidc, this.accessOkta, this.accessOnelogin, this.accessPingone, this.accessSaml, this.accessYandex, });

factory AccessResponseCollectionResult.fromJson(Map<String, dynamic> json) { return AccessResponseCollectionResult(
  accessAzureAd: AccessAzureAd.canParse(json) ? AccessAzureAd.fromJson(json) : null,
  accessCentrify: AccessCentrify.canParse(json) ? AccessCentrify.fromJson(json) : null,
  accessFacebook: AccessFacebook.canParse(json) ? AccessFacebook.fromJson(json) : null,
  accessGithub: AccessGithub.canParse(json) ? AccessGithub.fromJson(json) : null,
  accessGoogle: AccessGoogle.canParse(json) ? AccessGoogle.fromJson(json) : null,
  accessGoogleApps: AccessGoogleApps.canParse(json) ? AccessGoogleApps.fromJson(json) : null,
  accessLinkedin: AccessLinkedin.canParse(json) ? AccessLinkedin.fromJson(json) : null,
  accessOidc: AccessOidc.canParse(json) ? AccessOidc.fromJson(json) : null,
  accessOkta: AccessOkta.canParse(json) ? AccessOkta.fromJson(json) : null,
  accessOnelogin: AccessOnelogin.canParse(json) ? AccessOnelogin.fromJson(json) : null,
  accessPingone: AccessPingone.canParse(json) ? AccessPingone.fromJson(json) : null,
  accessSaml: AccessSaml.canParse(json) ? AccessSaml.fromJson(json) : null,
  accessYandex: AccessYandex.canParse(json) ? AccessYandex.fromJson(json) : null,
); }

final AccessAzureAd? accessAzureAd;

final AccessCentrify? accessCentrify;

final AccessFacebook? accessFacebook;

final AccessGithub? accessGithub;

final AccessGoogle? accessGoogle;

final AccessGoogleApps? accessGoogleApps;

final AccessLinkedin? accessLinkedin;

final AccessOidc? accessOidc;

final AccessOkta? accessOkta;

final AccessOnelogin? accessOnelogin;

final AccessPingone? accessPingone;

final AccessSaml? accessSaml;

final AccessYandex? accessYandex;

/// At least one variant must be present.
bool get isValid { return accessAzureAd != null || accessCentrify != null || accessFacebook != null || accessGithub != null || accessGoogle != null || accessGoogleApps != null || accessLinkedin != null || accessOidc != null || accessOkta != null || accessOnelogin != null || accessPingone != null || accessSaml != null || accessYandex != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessAzureAd?.toJson(),
  ...?accessCentrify?.toJson(),
  ...?accessFacebook?.toJson(),
  ...?accessGithub?.toJson(),
  ...?accessGoogle?.toJson(),
  ...?accessGoogleApps?.toJson(),
  ...?accessLinkedin?.toJson(),
  ...?accessOidc?.toJson(),
  ...?accessOkta?.toJson(),
  ...?accessOnelogin?.toJson(),
  ...?accessPingone?.toJson(),
  ...?accessSaml?.toJson(),
  ...?accessYandex?.toJson(),
}; } 
 }
