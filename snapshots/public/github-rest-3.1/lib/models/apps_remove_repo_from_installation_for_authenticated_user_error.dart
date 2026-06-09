// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/installations/{installation_id}/repositories/{repository_id}`.
sealed class AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory AppsRemoveRepoFromInstallationForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsRemoveRepoFromInstallationForAuthenticatedUserError304.parse(response),
  403 => AppsRemoveRepoFromInstallationForAuthenticatedUserError403.parse(response),
  404 => AppsRemoveRepoFromInstallationForAuthenticatedUserError404.parse(response),
  422 => AppsRemoveRepoFromInstallationForAuthenticatedUserError422.parse(response),
  _ => AppsRemoveRepoFromInstallationForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsRemoveRepoFromInstallationForAuthenticatedUserError304 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError304();

factory AppsRemoveRepoFromInstallationForAuthenticatedUserError304.parse(ApiResponse _) { return const AppsRemoveRepoFromInstallationForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsRemoveRepoFromInstallationForAuthenticatedUserError304; } 
@override int get hashCode { return (AppsRemoveRepoFromInstallationForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'AppsRemoveRepoFromInstallationForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class AppsRemoveRepoFromInstallationForAuthenticatedUserError403 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError403(this.data);

factory AppsRemoveRepoFromInstallationForAuthenticatedUserError403.parse(ApiResponse response) { return AppsRemoveRepoFromInstallationForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRemoveRepoFromInstallationForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsRemoveRepoFromInstallationForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class AppsRemoveRepoFromInstallationForAuthenticatedUserError404 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError404(this.data);

factory AppsRemoveRepoFromInstallationForAuthenticatedUserError404.parse(ApiResponse response) { return AppsRemoveRepoFromInstallationForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRemoveRepoFromInstallationForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsRemoveRepoFromInstallationForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsRemoveRepoFromInstallationForAuthenticatedUserError422 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError422();

factory AppsRemoveRepoFromInstallationForAuthenticatedUserError422.parse(ApiResponse _) { return const AppsRemoveRepoFromInstallationForAuthenticatedUserError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsRemoveRepoFromInstallationForAuthenticatedUserError422; } 
@override int get hashCode { return (AppsRemoveRepoFromInstallationForAuthenticatedUserError422).hashCode; } 
@override String toString() { return 'AppsRemoveRepoFromInstallationForAuthenticatedUserError422()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsRemoveRepoFromInstallationForAuthenticatedUserError$Unknown extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsRemoveRepoFromInstallationForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsRemoveRepoFromInstallationForAuthenticatedUserError.unknown($statusCode)'; } 
 }
