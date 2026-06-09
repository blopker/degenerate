// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/installations`.
sealed class AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory AppsListInstallationsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListInstallationsForAuthenticatedUserError304.parse(response),
  401 => AppsListInstallationsForAuthenticatedUserError401.parse(response),
  403 => AppsListInstallationsForAuthenticatedUserError403.parse(response),
  _ => AppsListInstallationsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListInstallationsForAuthenticatedUserError304 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError304();

factory AppsListInstallationsForAuthenticatedUserError304.parse(ApiResponse _) { return const AppsListInstallationsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListInstallationsForAuthenticatedUserError304; } 
@override int get hashCode { return (AppsListInstallationsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'AppsListInstallationsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class AppsListInstallationsForAuthenticatedUserError401 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError401(this.data);

factory AppsListInstallationsForAuthenticatedUserError401.parse(ApiResponse response) { return AppsListInstallationsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListInstallationsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class AppsListInstallationsForAuthenticatedUserError403 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError403(this.data);

factory AppsListInstallationsForAuthenticatedUserError403.parse(ApiResponse response) { return AppsListInstallationsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListInstallationsForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListInstallationsForAuthenticatedUserError$Unknown extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListInstallationsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
