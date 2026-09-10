// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_azure_ad.dart';import 'access_centrify.dart';import 'access_facebook.dart';import 'access_github.dart';import 'access_google.dart';import 'access_google_apps.dart';import 'access_linkedin.dart';import 'access_oidc.dart';import 'access_okta.dart';import 'access_onelogin.dart';import 'access_pingone.dart';import 'access_saml.dart';import 'access_yandex.dart';
@immutable
final class AccessResponseCollectionResult {
  const AccessResponseCollectionResult({this.accessAzureAd = const Omittable.absent(),
this.accessCentrify = const Omittable.absent(),
this.accessFacebook = const Omittable.absent(),
this.accessGithub = const Omittable.absent(),
this.accessGoogle = const Omittable.absent(),
this.accessGoogleApps = const Omittable.absent(),
this.accessLinkedin = const Omittable.absent(),
this.accessOidc = const Omittable.absent(),
this.accessOkta = const Omittable.absent(),
this.accessOnelogin = const Omittable.absent(),
this.accessPingone = const Omittable.absent(),
this.accessSaml = const Omittable.absent(),
this.accessYandex = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessResponseCollectionResult._({required this.rawValue, required this.accessAzureAd,
required this.accessCentrify,
required this.accessFacebook,
required this.accessGithub,
required this.accessGoogle,
required this.accessGoogleApps,
required this.accessLinkedin,
required this.accessOidc,
required this.accessOkta,
required this.accessOnelogin,
required this.accessPingone,
required this.accessSaml,
required this.accessYandex,});
  factory AccessResponseCollectionResult.fromJson(Object? json) => AccessResponseCollectionResult._(
    rawValue: Omittable(json),
    accessAzureAd: parseAnyOfVariant<AccessAzureAd>(json, (value) => AccessAzureAd.fromJson(value! as Map<String, dynamic>)),
accessCentrify: parseAnyOfVariant<AccessCentrify>(json, (value) => AccessCentrify.fromJson(value! as Map<String, dynamic>)),
accessFacebook: parseAnyOfVariant<AccessFacebook>(json, (value) => AccessFacebook.fromJson(value! as Map<String, dynamic>)),
accessGithub: parseAnyOfVariant<AccessGithub>(json, (value) => AccessGithub.fromJson(value! as Map<String, dynamic>)),
accessGoogle: parseAnyOfVariant<AccessGoogle>(json, (value) => AccessGoogle.fromJson(value! as Map<String, dynamic>)),
accessGoogleApps: parseAnyOfVariant<AccessGoogleApps>(json, (value) => AccessGoogleApps.fromJson(value! as Map<String, dynamic>)),
accessLinkedin: parseAnyOfVariant<AccessLinkedin>(json, (value) => AccessLinkedin.fromJson(value! as Map<String, dynamic>)),
accessOidc: parseAnyOfVariant<AccessOidc>(json, (value) => AccessOidc.fromJson(value! as Map<String, dynamic>)),
accessOkta: parseAnyOfVariant<AccessOkta>(json, (value) => AccessOkta.fromJson(value! as Map<String, dynamic>)),
accessOnelogin: parseAnyOfVariant<AccessOnelogin>(json, (value) => AccessOnelogin.fromJson(value! as Map<String, dynamic>)),
accessPingone: parseAnyOfVariant<AccessPingone>(json, (value) => AccessPingone.fromJson(value! as Map<String, dynamic>)),
accessSaml: parseAnyOfVariant<AccessSaml>(json, (value) => AccessSaml.fromJson(value! as Map<String, dynamic>)),
accessYandex: parseAnyOfVariant<AccessYandex>(json, (value) => AccessYandex.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AccessAzureAd> accessAzureAd;
final Omittable<AccessCentrify> accessCentrify;
final Omittable<AccessFacebook> accessFacebook;
final Omittable<AccessGithub> accessGithub;
final Omittable<AccessGoogle> accessGoogle;
final Omittable<AccessGoogleApps> accessGoogleApps;
final Omittable<AccessLinkedin> accessLinkedin;
final Omittable<AccessOidc> accessOidc;
final Omittable<AccessOkta> accessOkta;
final Omittable<AccessOnelogin> accessOnelogin;
final Omittable<AccessPingone> accessPingone;
final Omittable<AccessSaml> accessSaml;
final Omittable<AccessYandex> accessYandex;

  /// Whether at least one known variant matched.
  bool get isValid => accessAzureAd.isPresent || accessCentrify.isPresent || accessFacebook.isPresent || accessGithub.isPresent || accessGoogle.isPresent || accessGoogleApps.isPresent || accessLinkedin.isPresent || accessOidc.isPresent || accessOkta.isPresent || accessOnelogin.isPresent || accessPingone.isPresent || accessSaml.isPresent || accessYandex.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (accessAzureAd.isPresent) accessAzureAd.value?.toJson(),
if (accessCentrify.isPresent) accessCentrify.value?.toJson(),
if (accessFacebook.isPresent) accessFacebook.value?.toJson(),
if (accessGithub.isPresent) accessGithub.value?.toJson(),
if (accessGoogle.isPresent) accessGoogle.value?.toJson(),
if (accessGoogleApps.isPresent) accessGoogleApps.value?.toJson(),
if (accessLinkedin.isPresent) accessLinkedin.value?.toJson(),
if (accessOidc.isPresent) accessOidc.value?.toJson(),
if (accessOkta.isPresent) accessOkta.value?.toJson(),
if (accessOnelogin.isPresent) accessOnelogin.value?.toJson(),
if (accessPingone.isPresent) accessPingone.value?.toJson(),
if (accessSaml.isPresent) accessSaml.value?.toJson(),
if (accessYandex.isPresent) accessYandex.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessResponseCollectionResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessResponseCollectionResult(${toJson()})';
}
