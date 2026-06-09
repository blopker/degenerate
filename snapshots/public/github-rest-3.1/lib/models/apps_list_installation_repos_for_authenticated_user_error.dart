// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/installations/{installation_id}/repositories`.
sealed class AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory AppsListInstallationReposForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListInstallationReposForAuthenticatedUserError304.parse(response),
  403 => AppsListInstallationReposForAuthenticatedUserError403.parse(response),
  404 => AppsListInstallationReposForAuthenticatedUserError404.parse(response),
  _ => AppsListInstallationReposForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListInstallationReposForAuthenticatedUserError304 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError304();

factory AppsListInstallationReposForAuthenticatedUserError304.parse(ApiResponse _) { return const AppsListInstallationReposForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListInstallationReposForAuthenticatedUserError304; } 
@override int get hashCode { return (AppsListInstallationReposForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'AppsListInstallationReposForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class AppsListInstallationReposForAuthenticatedUserError403 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError403(this.data);

factory AppsListInstallationReposForAuthenticatedUserError403.parse(ApiResponse response) { return AppsListInstallationReposForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationReposForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListInstallationReposForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class AppsListInstallationReposForAuthenticatedUserError404 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError404(this.data);

factory AppsListInstallationReposForAuthenticatedUserError404.parse(ApiResponse response) { return AppsListInstallationReposForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationReposForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListInstallationReposForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListInstallationReposForAuthenticatedUserError$Unknown extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationReposForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListInstallationReposForAuthenticatedUserError.unknown($statusCode)'; } 
 }
