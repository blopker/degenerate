// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_azure_ad_response.dart';import 'access_schemas_centrify_response.dart';import 'access_schemas_facebook_response.dart';import 'access_schemas_github_response.dart';import 'access_schemas_google_apps_response.dart';import 'access_schemas_google_response.dart';import 'access_schemas_linkedin_response.dart';import 'access_schemas_oidc_response.dart';import 'access_schemas_okta_response.dart';import 'access_schemas_onelogin_response.dart';import 'access_schemas_onetimepin.dart';import 'access_schemas_pingone_response.dart';import 'access_schemas_saml.dart';import 'access_schemas_yandex_response.dart';
@immutable
final class AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult {
  const AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult({this.accessSchemasAzureAdResponse = const Omittable.absent(),
this.accessSchemasCentrifyResponse = const Omittable.absent(),
this.accessSchemasFacebookResponse = const Omittable.absent(),
this.accessSchemasGithubResponse = const Omittable.absent(),
this.accessSchemasGoogleResponse = const Omittable.absent(),
this.accessSchemasGoogleAppsResponse = const Omittable.absent(),
this.accessSchemasLinkedinResponse = const Omittable.absent(),
this.accessSchemasOidcResponse = const Omittable.absent(),
this.accessSchemasOktaResponse = const Omittable.absent(),
this.accessSchemasOneloginResponse = const Omittable.absent(),
this.accessSchemasPingoneResponse = const Omittable.absent(),
this.accessSchemasSaml = const Omittable.absent(),
this.accessSchemasYandexResponse = const Omittable.absent(),
this.accessSchemasOnetimepin = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult._({required this.rawValue, required this.accessSchemasAzureAdResponse,
required this.accessSchemasCentrifyResponse,
required this.accessSchemasFacebookResponse,
required this.accessSchemasGithubResponse,
required this.accessSchemasGoogleResponse,
required this.accessSchemasGoogleAppsResponse,
required this.accessSchemasLinkedinResponse,
required this.accessSchemasOidcResponse,
required this.accessSchemasOktaResponse,
required this.accessSchemasOneloginResponse,
required this.accessSchemasPingoneResponse,
required this.accessSchemasSaml,
required this.accessSchemasYandexResponse,
required this.accessSchemasOnetimepin,});
  factory AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult.fromJson(Object? json) => AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult._(
    rawValue: Omittable(json),
    accessSchemasAzureAdResponse: parseAnyOfVariant<AccessSchemasAzureAdResponse>(json, (value) => AccessSchemasAzureAdResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasCentrifyResponse: parseAnyOfVariant<AccessSchemasCentrifyResponse>(json, (value) => AccessSchemasCentrifyResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasFacebookResponse: parseAnyOfVariant<AccessSchemasFacebookResponse>(json, (value) => AccessSchemasFacebookResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasGithubResponse: parseAnyOfVariant<AccessSchemasGithubResponse>(json, (value) => AccessSchemasGithubResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogleResponse: parseAnyOfVariant<AccessSchemasGoogleResponse>(json, (value) => AccessSchemasGoogleResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogleAppsResponse: parseAnyOfVariant<AccessSchemasGoogleAppsResponse>(json, (value) => AccessSchemasGoogleAppsResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasLinkedinResponse: parseAnyOfVariant<AccessSchemasLinkedinResponse>(json, (value) => AccessSchemasLinkedinResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasOidcResponse: parseAnyOfVariant<AccessSchemasOidcResponse>(json, (value) => AccessSchemasOidcResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasOktaResponse: parseAnyOfVariant<AccessSchemasOktaResponse>(json, (value) => AccessSchemasOktaResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasOneloginResponse: parseAnyOfVariant<AccessSchemasOneloginResponse>(json, (value) => AccessSchemasOneloginResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasPingoneResponse: parseAnyOfVariant<AccessSchemasPingoneResponse>(json, (value) => AccessSchemasPingoneResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasSaml: parseAnyOfVariant<AccessSchemasSaml>(json, (value) => AccessSchemasSaml.fromJson(value! as Map<String, dynamic>)),
accessSchemasYandexResponse: parseAnyOfVariant<AccessSchemasYandexResponse>(json, (value) => AccessSchemasYandexResponse.fromJson(value! as Map<String, dynamic>)),
accessSchemasOnetimepin: parseAnyOfVariant<AccessSchemasOnetimepin>(json, (value) => AccessSchemasOnetimepin.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AccessSchemasAzureAdResponse> accessSchemasAzureAdResponse;
final Omittable<AccessSchemasCentrifyResponse> accessSchemasCentrifyResponse;
final Omittable<AccessSchemasFacebookResponse> accessSchemasFacebookResponse;
final Omittable<AccessSchemasGithubResponse> accessSchemasGithubResponse;
final Omittable<AccessSchemasGoogleResponse> accessSchemasGoogleResponse;
final Omittable<AccessSchemasGoogleAppsResponse> accessSchemasGoogleAppsResponse;
final Omittable<AccessSchemasLinkedinResponse> accessSchemasLinkedinResponse;
final Omittable<AccessSchemasOidcResponse> accessSchemasOidcResponse;
final Omittable<AccessSchemasOktaResponse> accessSchemasOktaResponse;
final Omittable<AccessSchemasOneloginResponse> accessSchemasOneloginResponse;
final Omittable<AccessSchemasPingoneResponse> accessSchemasPingoneResponse;
final Omittable<AccessSchemasSaml> accessSchemasSaml;
final Omittable<AccessSchemasYandexResponse> accessSchemasYandexResponse;
final Omittable<AccessSchemasOnetimepin> accessSchemasOnetimepin;

  /// Whether at least one known variant matched.
  bool get isValid => accessSchemasAzureAdResponse.isPresent || accessSchemasCentrifyResponse.isPresent || accessSchemasFacebookResponse.isPresent || accessSchemasGithubResponse.isPresent || accessSchemasGoogleResponse.isPresent || accessSchemasGoogleAppsResponse.isPresent || accessSchemasLinkedinResponse.isPresent || accessSchemasOidcResponse.isPresent || accessSchemasOktaResponse.isPresent || accessSchemasOneloginResponse.isPresent || accessSchemasPingoneResponse.isPresent || accessSchemasSaml.isPresent || accessSchemasYandexResponse.isPresent || accessSchemasOnetimepin.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (accessSchemasAzureAdResponse.isPresent) accessSchemasAzureAdResponse.value?.toJson(),
if (accessSchemasCentrifyResponse.isPresent) accessSchemasCentrifyResponse.value?.toJson(),
if (accessSchemasFacebookResponse.isPresent) accessSchemasFacebookResponse.value?.toJson(),
if (accessSchemasGithubResponse.isPresent) accessSchemasGithubResponse.value?.toJson(),
if (accessSchemasGoogleResponse.isPresent) accessSchemasGoogleResponse.value?.toJson(),
if (accessSchemasGoogleAppsResponse.isPresent) accessSchemasGoogleAppsResponse.value?.toJson(),
if (accessSchemasLinkedinResponse.isPresent) accessSchemasLinkedinResponse.value?.toJson(),
if (accessSchemasOidcResponse.isPresent) accessSchemasOidcResponse.value?.toJson(),
if (accessSchemasOktaResponse.isPresent) accessSchemasOktaResponse.value?.toJson(),
if (accessSchemasOneloginResponse.isPresent) accessSchemasOneloginResponse.value?.toJson(),
if (accessSchemasPingoneResponse.isPresent) accessSchemasPingoneResponse.value?.toJson(),
if (accessSchemasSaml.isPresent) accessSchemasSaml.value?.toJson(),
if (accessSchemasYandexResponse.isPresent) accessSchemasYandexResponse.value?.toJson(),
if (accessSchemasOnetimepin.isPresent) accessSchemasOnetimepin.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult(${toJson()})';
}
