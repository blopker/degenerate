// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_azure_ad_request.dart';import 'access_schemas_centrify_request.dart';import 'access_schemas_facebook_request.dart';import 'access_schemas_github_request.dart';import 'access_schemas_google_apps_request.dart';import 'access_schemas_google_request.dart';import 'access_schemas_linkedin_request.dart';import 'access_schemas_oidc_request.dart';import 'access_schemas_okta_request.dart';import 'access_schemas_onelogin_request.dart';import 'access_schemas_pingone_request.dart';import 'access_schemas_saml_request.dart';import 'access_schemas_yandex_request.dart';
@immutable
final class AccessSchemasIdentityProvidersRequest {
  const AccessSchemasIdentityProvidersRequest({this.accessSchemasAzureAdRequest = const Omittable.absent(),
this.accessSchemasCentrifyRequest = const Omittable.absent(),
this.accessSchemasFacebookRequest = const Omittable.absent(),
this.accessSchemasGithubRequest = const Omittable.absent(),
this.accessSchemasGoogleRequest = const Omittable.absent(),
this.accessSchemasGoogleAppsRequest = const Omittable.absent(),
this.accessSchemasLinkedinRequest = const Omittable.absent(),
this.accessSchemasOidcRequest = const Omittable.absent(),
this.accessSchemasOktaRequest = const Omittable.absent(),
this.accessSchemasOneloginRequest = const Omittable.absent(),
this.accessSchemasPingoneRequest = const Omittable.absent(),
this.accessSchemasSamlRequest = const Omittable.absent(),
this.accessSchemasYandexRequest = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessSchemasIdentityProvidersRequest._({required this.rawValue, required this.accessSchemasAzureAdRequest,
required this.accessSchemasCentrifyRequest,
required this.accessSchemasFacebookRequest,
required this.accessSchemasGithubRequest,
required this.accessSchemasGoogleRequest,
required this.accessSchemasGoogleAppsRequest,
required this.accessSchemasLinkedinRequest,
required this.accessSchemasOidcRequest,
required this.accessSchemasOktaRequest,
required this.accessSchemasOneloginRequest,
required this.accessSchemasPingoneRequest,
required this.accessSchemasSamlRequest,
required this.accessSchemasYandexRequest,});
  factory AccessSchemasIdentityProvidersRequest.fromJson(Object? json) => AccessSchemasIdentityProvidersRequest._(
    rawValue: Omittable(json),
    accessSchemasAzureAdRequest: parseAnyOfVariant<AccessSchemasAzureAdRequest>(json, (value) => AccessSchemasAzureAdRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasCentrifyRequest: parseAnyOfVariant<AccessSchemasCentrifyRequest>(json, (value) => AccessSchemasCentrifyRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasFacebookRequest: parseAnyOfVariant<AccessSchemasFacebookRequest>(json, (value) => AccessSchemasFacebookRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasGithubRequest: parseAnyOfVariant<AccessSchemasGithubRequest>(json, (value) => AccessSchemasGithubRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogleRequest: parseAnyOfVariant<AccessSchemasGoogleRequest>(json, (value) => AccessSchemasGoogleRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasGoogleAppsRequest: parseAnyOfVariant<AccessSchemasGoogleAppsRequest>(json, (value) => AccessSchemasGoogleAppsRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasLinkedinRequest: parseAnyOfVariant<AccessSchemasLinkedinRequest>(json, (value) => AccessSchemasLinkedinRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasOidcRequest: parseAnyOfVariant<AccessSchemasOidcRequest>(json, (value) => AccessSchemasOidcRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasOktaRequest: parseAnyOfVariant<AccessSchemasOktaRequest>(json, (value) => AccessSchemasOktaRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasOneloginRequest: parseAnyOfVariant<AccessSchemasOneloginRequest>(json, (value) => AccessSchemasOneloginRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasPingoneRequest: parseAnyOfVariant<AccessSchemasPingoneRequest>(json, (value) => AccessSchemasPingoneRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasSamlRequest: parseAnyOfVariant<AccessSchemasSamlRequest>(json, (value) => AccessSchemasSamlRequest.fromJson(value! as Map<String, dynamic>)),
accessSchemasYandexRequest: parseAnyOfVariant<AccessSchemasYandexRequest>(json, (value) => AccessSchemasYandexRequest.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AccessSchemasAzureAdRequest> accessSchemasAzureAdRequest;
final Omittable<AccessSchemasCentrifyRequest> accessSchemasCentrifyRequest;
final Omittable<AccessSchemasFacebookRequest> accessSchemasFacebookRequest;
final Omittable<AccessSchemasGithubRequest> accessSchemasGithubRequest;
final Omittable<AccessSchemasGoogleRequest> accessSchemasGoogleRequest;
final Omittable<AccessSchemasGoogleAppsRequest> accessSchemasGoogleAppsRequest;
final Omittable<AccessSchemasLinkedinRequest> accessSchemasLinkedinRequest;
final Omittable<AccessSchemasOidcRequest> accessSchemasOidcRequest;
final Omittable<AccessSchemasOktaRequest> accessSchemasOktaRequest;
final Omittable<AccessSchemasOneloginRequest> accessSchemasOneloginRequest;
final Omittable<AccessSchemasPingoneRequest> accessSchemasPingoneRequest;
final Omittable<AccessSchemasSamlRequest> accessSchemasSamlRequest;
final Omittable<AccessSchemasYandexRequest> accessSchemasYandexRequest;

  /// Whether at least one known variant matched.
  bool get isValid => accessSchemasAzureAdRequest.isPresent || accessSchemasCentrifyRequest.isPresent || accessSchemasFacebookRequest.isPresent || accessSchemasGithubRequest.isPresent || accessSchemasGoogleRequest.isPresent || accessSchemasGoogleAppsRequest.isPresent || accessSchemasLinkedinRequest.isPresent || accessSchemasOidcRequest.isPresent || accessSchemasOktaRequest.isPresent || accessSchemasOneloginRequest.isPresent || accessSchemasPingoneRequest.isPresent || accessSchemasSamlRequest.isPresent || accessSchemasYandexRequest.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (accessSchemasAzureAdRequest.isPresent) accessSchemasAzureAdRequest.value?.toJson(),
if (accessSchemasCentrifyRequest.isPresent) accessSchemasCentrifyRequest.value?.toJson(),
if (accessSchemasFacebookRequest.isPresent) accessSchemasFacebookRequest.value?.toJson(),
if (accessSchemasGithubRequest.isPresent) accessSchemasGithubRequest.value?.toJson(),
if (accessSchemasGoogleRequest.isPresent) accessSchemasGoogleRequest.value?.toJson(),
if (accessSchemasGoogleAppsRequest.isPresent) accessSchemasGoogleAppsRequest.value?.toJson(),
if (accessSchemasLinkedinRequest.isPresent) accessSchemasLinkedinRequest.value?.toJson(),
if (accessSchemasOidcRequest.isPresent) accessSchemasOidcRequest.value?.toJson(),
if (accessSchemasOktaRequest.isPresent) accessSchemasOktaRequest.value?.toJson(),
if (accessSchemasOneloginRequest.isPresent) accessSchemasOneloginRequest.value?.toJson(),
if (accessSchemasPingoneRequest.isPresent) accessSchemasPingoneRequest.value?.toJson(),
if (accessSchemasSamlRequest.isPresent) accessSchemasSamlRequest.value?.toJson(),
if (accessSchemasYandexRequest.isPresent) accessSchemasYandexRequest.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessSchemasIdentityProvidersRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessSchemasIdentityProvidersRequest(${toJson()})';
}
