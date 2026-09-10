// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_azure_ad.dart';import 'access_schemas_centrify.dart';import 'access_schemas_facebook.dart';import 'access_schemas_github.dart';import 'access_schemas_google.dart';import 'access_schemas_google_apps.dart';import 'access_schemas_linkedin.dart';import 'access_schemas_oidc.dart';import 'access_schemas_okta.dart';import 'access_schemas_onelogin.dart';import 'access_schemas_onetimepin.dart';import 'access_schemas_pingone.dart';import 'access_schemas_saml.dart';import 'access_schemas_yandex.dart';
@immutable
final class AccessIdentityProvidersComponentsSchemasResponseCollectionResult {
  const AccessIdentityProvidersComponentsSchemasResponseCollectionResult({this.accessSchemasAzureAd = const Omittable.absent(),
this.accessSchemasCentrify = const Omittable.absent(),
this.accessSchemasFacebook = const Omittable.absent(),
this.accessSchemasGithub = const Omittable.absent(),
this.accessSchemasGoogle = const Omittable.absent(),
this.accessSchemasGoogleApps = const Omittable.absent(),
this.accessSchemasLinkedin = const Omittable.absent(),
this.accessSchemasOidc = const Omittable.absent(),
this.accessSchemasOkta = const Omittable.absent(),
this.accessSchemasOnelogin = const Omittable.absent(),
this.accessSchemasPingone = const Omittable.absent(),
this.accessSchemasSaml = const Omittable.absent(),
this.accessSchemasYandex = const Omittable.absent(),
this.accessSchemasOnetimepin = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessIdentityProvidersComponentsSchemasResponseCollectionResult._({required this.rawValue, required this.accessSchemasAzureAd,
required this.accessSchemasCentrify,
required this.accessSchemasFacebook,
required this.accessSchemasGithub,
required this.accessSchemasGoogle,
required this.accessSchemasGoogleApps,
required this.accessSchemasLinkedin,
required this.accessSchemasOidc,
required this.accessSchemasOkta,
required this.accessSchemasOnelogin,
required this.accessSchemasPingone,
required this.accessSchemasSaml,
required this.accessSchemasYandex,
required this.accessSchemasOnetimepin,});
  factory AccessIdentityProvidersComponentsSchemasResponseCollectionResult.fromJson(Object? json) => AccessIdentityProvidersComponentsSchemasResponseCollectionResult._(
    rawValue: Omittable(json),
    accessSchemasAzureAd: parseAnyOfVariant<AccessSchemasAzureAd>(json, (value) => AccessSchemasAzureAd.fromJson(value! as Map<String, dynamic>)),
accessSchemasCentrify: parseAnyOfVariant<AccessSchemasCentrify>(json, (value) => AccessSchemasCentrify.fromJson(value! as Map<String, dynamic>)),
accessSchemasFacebook: parseAnyOfVariant<AccessSchemasFacebook>(json, (value) => AccessSchemasFacebook.fromJson(value! as Map<String, dynamic>)),
accessSchemasGithub: parseAnyOfVariant<AccessSchemasGithub>(json, (value) => AccessSchemasGithub.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogle: parseAnyOfVariant<AccessSchemasGoogle>(json, (value) => AccessSchemasGoogle.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogleApps: parseAnyOfVariant<AccessSchemasGoogleApps>(json, (value) => AccessSchemasGoogleApps.fromJson(value! as Map<String, dynamic>)),
accessSchemasLinkedin: parseAnyOfVariant<AccessSchemasLinkedin>(json, (value) => AccessSchemasLinkedin.fromJson(value! as Map<String, dynamic>)),
accessSchemasOidc: parseAnyOfVariant<AccessSchemasOidc>(json, (value) => AccessSchemasOidc.fromJson(value! as Map<String, dynamic>)),
accessSchemasOkta: parseAnyOfVariant<AccessSchemasOkta>(json, (value) => AccessSchemasOkta.fromJson(value! as Map<String, dynamic>)),
accessSchemasOnelogin: parseAnyOfVariant<AccessSchemasOnelogin>(json, (value) => AccessSchemasOnelogin.fromJson(value! as Map<String, dynamic>)),
accessSchemasPingone: parseAnyOfVariant<AccessSchemasPingone>(json, (value) => AccessSchemasPingone.fromJson(value! as Map<String, dynamic>)),
accessSchemasSaml: parseAnyOfVariant<AccessSchemasSaml>(json, (value) => AccessSchemasSaml.fromJson(value! as Map<String, dynamic>)),
accessSchemasYandex: parseAnyOfVariant<AccessSchemasYandex>(json, (value) => AccessSchemasYandex.fromJson(value! as Map<String, dynamic>)),
accessSchemasOnetimepin: parseAnyOfVariant<AccessSchemasOnetimepin>(json, (value) => AccessSchemasOnetimepin.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AccessSchemasAzureAd> accessSchemasAzureAd;
final Omittable<AccessSchemasCentrify> accessSchemasCentrify;
final Omittable<AccessSchemasFacebook> accessSchemasFacebook;
final Omittable<AccessSchemasGithub> accessSchemasGithub;
final Omittable<AccessSchemasGoogle> accessSchemasGoogle;
final Omittable<AccessSchemasGoogleApps> accessSchemasGoogleApps;
final Omittable<AccessSchemasLinkedin> accessSchemasLinkedin;
final Omittable<AccessSchemasOidc> accessSchemasOidc;
final Omittable<AccessSchemasOkta> accessSchemasOkta;
final Omittable<AccessSchemasOnelogin> accessSchemasOnelogin;
final Omittable<AccessSchemasPingone> accessSchemasPingone;
final Omittable<AccessSchemasSaml> accessSchemasSaml;
final Omittable<AccessSchemasYandex> accessSchemasYandex;
final Omittable<AccessSchemasOnetimepin> accessSchemasOnetimepin;

  /// Whether at least one known variant matched.
  bool get isValid => accessSchemasAzureAd.isPresent || accessSchemasCentrify.isPresent || accessSchemasFacebook.isPresent || accessSchemasGithub.isPresent || accessSchemasGoogle.isPresent || accessSchemasGoogleApps.isPresent || accessSchemasLinkedin.isPresent || accessSchemasOidc.isPresent || accessSchemasOkta.isPresent || accessSchemasOnelogin.isPresent || accessSchemasPingone.isPresent || accessSchemasSaml.isPresent || accessSchemasYandex.isPresent || accessSchemasOnetimepin.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (accessSchemasAzureAd.isPresent) accessSchemasAzureAd.value?.toJson(),
if (accessSchemasCentrify.isPresent) accessSchemasCentrify.value?.toJson(),
if (accessSchemasFacebook.isPresent) accessSchemasFacebook.value?.toJson(),
if (accessSchemasGithub.isPresent) accessSchemasGithub.value?.toJson(),
if (accessSchemasGoogle.isPresent) accessSchemasGoogle.value?.toJson(),
if (accessSchemasGoogleApps.isPresent) accessSchemasGoogleApps.value?.toJson(),
if (accessSchemasLinkedin.isPresent) accessSchemasLinkedin.value?.toJson(),
if (accessSchemasOidc.isPresent) accessSchemasOidc.value?.toJson(),
if (accessSchemasOkta.isPresent) accessSchemasOkta.value?.toJson(),
if (accessSchemasOnelogin.isPresent) accessSchemasOnelogin.value?.toJson(),
if (accessSchemasPingone.isPresent) accessSchemasPingone.value?.toJson(),
if (accessSchemasSaml.isPresent) accessSchemasSaml.value?.toJson(),
if (accessSchemasYandex.isPresent) accessSchemasYandex.value?.toJson(),
if (accessSchemasOnetimepin.isPresent) accessSchemasOnetimepin.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessIdentityProvidersComponentsSchemasResponseCollectionResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessIdentityProvidersComponentsSchemasResponseCollectionResult(${toJson()})';
}
