// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /user/installations/{installation_id}/repositories/{repository_id}`.
sealed class AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory AppsAddRepoToInstallationForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsAddRepoToInstallationForAuthenticatedUserError304.parse(response),
  403 => AppsAddRepoToInstallationForAuthenticatedUserError403.parse(response),
  404 => AppsAddRepoToInstallationForAuthenticatedUserError404.parse(response),
  _ => AppsAddRepoToInstallationForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsAddRepoToInstallationForAuthenticatedUserError304 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError304();

factory AppsAddRepoToInstallationForAuthenticatedUserError304.parse(ApiResponse _) { return const AppsAddRepoToInstallationForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsAddRepoToInstallationForAuthenticatedUserError304; } 
@override int get hashCode { return (AppsAddRepoToInstallationForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'AppsAddRepoToInstallationForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class AppsAddRepoToInstallationForAuthenticatedUserError403 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError403(this.data);

factory AppsAddRepoToInstallationForAuthenticatedUserError403.parse(ApiResponse response) { return AppsAddRepoToInstallationForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsAddRepoToInstallationForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsAddRepoToInstallationForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class AppsAddRepoToInstallationForAuthenticatedUserError404 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError404(this.data);

factory AppsAddRepoToInstallationForAuthenticatedUserError404.parse(ApiResponse response) { return AppsAddRepoToInstallationForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsAddRepoToInstallationForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsAddRepoToInstallationForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsAddRepoToInstallationForAuthenticatedUserError$Unknown extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsAddRepoToInstallationForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsAddRepoToInstallationForAuthenticatedUserError.unknown($statusCode)'; } 
 }
