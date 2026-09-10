// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_azure_ad_request.dart';import 'access_centrify_request.dart';import 'access_facebook_request.dart';import 'access_github_request.dart';import 'access_google_apps_request.dart';import 'access_google_request.dart';import 'access_linkedin_request.dart';import 'access_oidc_request.dart';import 'access_okta_request.dart';import 'access_onelogin_request.dart';import 'access_onetimepin_request.dart';import 'access_pingone_request.dart';import 'access_saml_request.dart';import 'access_yandex_request.dart';
@immutable
final class AccessIdentityProvidersRequest {
  const AccessIdentityProvidersRequest({this.accessAzureAdRequest = const Omittable.absent(),
this.accessCentrifyRequest = const Omittable.absent(),
this.accessFacebookRequest = const Omittable.absent(),
this.accessGithubRequest = const Omittable.absent(),
this.accessGoogleRequest = const Omittable.absent(),
this.accessGoogleAppsRequest = const Omittable.absent(),
this.accessLinkedinRequest = const Omittable.absent(),
this.accessOidcRequest = const Omittable.absent(),
this.accessOktaRequest = const Omittable.absent(),
this.accessOneloginRequest = const Omittable.absent(),
this.accessPingoneRequest = const Omittable.absent(),
this.accessSamlRequest = const Omittable.absent(),
this.accessYandexRequest = const Omittable.absent(),
this.accessOnetimepinRequest = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessIdentityProvidersRequest._({required this.rawValue, required this.accessAzureAdRequest,
required this.accessCentrifyRequest,
required this.accessFacebookRequest,
required this.accessGithubRequest,
required this.accessGoogleRequest,
required this.accessGoogleAppsRequest,
required this.accessLinkedinRequest,
required this.accessOidcRequest,
required this.accessOktaRequest,
required this.accessOneloginRequest,
required this.accessPingoneRequest,
required this.accessSamlRequest,
required this.accessYandexRequest,
required this.accessOnetimepinRequest,});
  factory AccessIdentityProvidersRequest.fromJson(Object? json) => AccessIdentityProvidersRequest._(
    rawValue: Omittable(json),
    accessAzureAdRequest: parseAnyOfVariant<AccessAzureAdRequest>(json, (value) => AccessAzureAdRequest.fromJson(value! as Map<String, dynamic>)),
accessCentrifyRequest: parseAnyOfVariant<AccessCentrifyRequest>(json, (value) => AccessCentrifyRequest.fromJson(value! as Map<String, dynamic>)),
accessFacebookRequest: parseAnyOfVariant<AccessFacebookRequest>(json, (value) => AccessFacebookRequest.fromJson(value! as Map<String, dynamic>)),
accessGithubRequest: parseAnyOfVariant<AccessGithubRequest>(json, (value) => AccessGithubRequest.fromJson(value! as Map<String, dynamic>)),
accessGoogleRequest: parseAnyOfVariant<AccessGoogleRequest>(json, (value) => AccessGoogleRequest.fromJson(value! as Map<String, dynamic>)),
accessGoogleAppsRequest: parseAnyOfVariant<AccessGoogleAppsRequest>(json, (value) => AccessGoogleAppsRequest.fromJson(value! as Map<String, dynamic>)),
accessLinkedinRequest: parseAnyOfVariant<AccessLinkedinRequest>(json, (value) => AccessLinkedinRequest.fromJson(value! as Map<String, dynamic>)),
accessOidcRequest: parseAnyOfVariant<AccessOidcRequest>(json, (value) => AccessOidcRequest.fromJson(value! as Map<String, dynamic>)),
accessOktaRequest: parseAnyOfVariant<AccessOktaRequest>(json, (value) => AccessOktaRequest.fromJson(value! as Map<String, dynamic>)),
accessOneloginRequest: parseAnyOfVariant<AccessOneloginRequest>(json, (value) => AccessOneloginRequest.fromJson(value! as Map<String, dynamic>)),
accessPingoneRequest: parseAnyOfVariant<AccessPingoneRequest>(json, (value) => AccessPingoneRequest.fromJson(value! as Map<String, dynamic>)),
accessSamlRequest: parseAnyOfVariant<AccessSamlRequest>(json, (value) => AccessSamlRequest.fromJson(value! as Map<String, dynamic>)),
accessYandexRequest: parseAnyOfVariant<AccessYandexRequest>(json, (value) => AccessYandexRequest.fromJson(value! as Map<String, dynamic>)),
accessOnetimepinRequest: parseAnyOfVariant<AccessOnetimepinRequest>(json, (value) => AccessOnetimepinRequest.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AccessAzureAdRequest> accessAzureAdRequest;
final Omittable<AccessCentrifyRequest> accessCentrifyRequest;
final Omittable<AccessFacebookRequest> accessFacebookRequest;
final Omittable<AccessGithubRequest> accessGithubRequest;
final Omittable<AccessGoogleRequest> accessGoogleRequest;
final Omittable<AccessGoogleAppsRequest> accessGoogleAppsRequest;
final Omittable<AccessLinkedinRequest> accessLinkedinRequest;
final Omittable<AccessOidcRequest> accessOidcRequest;
final Omittable<AccessOktaRequest> accessOktaRequest;
final Omittable<AccessOneloginRequest> accessOneloginRequest;
final Omittable<AccessPingoneRequest> accessPingoneRequest;
final Omittable<AccessSamlRequest> accessSamlRequest;
final Omittable<AccessYandexRequest> accessYandexRequest;
final Omittable<AccessOnetimepinRequest> accessOnetimepinRequest;

  /// Whether at least one known variant matched.
  bool get isValid => accessAzureAdRequest.isPresent || accessCentrifyRequest.isPresent || accessFacebookRequest.isPresent || accessGithubRequest.isPresent || accessGoogleRequest.isPresent || accessGoogleAppsRequest.isPresent || accessLinkedinRequest.isPresent || accessOidcRequest.isPresent || accessOktaRequest.isPresent || accessOneloginRequest.isPresent || accessPingoneRequest.isPresent || accessSamlRequest.isPresent || accessYandexRequest.isPresent || accessOnetimepinRequest.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (accessAzureAdRequest.isPresent) accessAzureAdRequest.value?.toJson(),
if (accessCentrifyRequest.isPresent) accessCentrifyRequest.value?.toJson(),
if (accessFacebookRequest.isPresent) accessFacebookRequest.value?.toJson(),
if (accessGithubRequest.isPresent) accessGithubRequest.value?.toJson(),
if (accessGoogleRequest.isPresent) accessGoogleRequest.value?.toJson(),
if (accessGoogleAppsRequest.isPresent) accessGoogleAppsRequest.value?.toJson(),
if (accessLinkedinRequest.isPresent) accessLinkedinRequest.value?.toJson(),
if (accessOidcRequest.isPresent) accessOidcRequest.value?.toJson(),
if (accessOktaRequest.isPresent) accessOktaRequest.value?.toJson(),
if (accessOneloginRequest.isPresent) accessOneloginRequest.value?.toJson(),
if (accessPingoneRequest.isPresent) accessPingoneRequest.value?.toJson(),
if (accessSamlRequest.isPresent) accessSamlRequest.value?.toJson(),
if (accessYandexRequest.isPresent) accessYandexRequest.value?.toJson(),
if (accessOnetimepinRequest.isPresent) accessOnetimepinRequest.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessIdentityProvidersRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessIdentityProvidersRequest(${toJson()})';
}
