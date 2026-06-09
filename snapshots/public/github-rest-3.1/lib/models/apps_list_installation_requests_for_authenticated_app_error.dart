// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /app/installation-requests`.
sealed class AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError();

/// Parse the variant matching the response status code.
factory AppsListInstallationRequestsForAuthenticatedAppError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => AppsListInstallationRequestsForAuthenticatedAppError304.parse(response),
  401 => AppsListInstallationRequestsForAuthenticatedAppError401.parse(response),
  _ => AppsListInstallationRequestsForAuthenticatedAppError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class AppsListInstallationRequestsForAuthenticatedAppError304 extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError304();

factory AppsListInstallationRequestsForAuthenticatedAppError304.parse(ApiResponse _) { return const AppsListInstallationRequestsForAuthenticatedAppError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is AppsListInstallationRequestsForAuthenticatedAppError304; } 
@override int get hashCode { return (AppsListInstallationRequestsForAuthenticatedAppError304).hashCode; } 
@override String toString() { return 'AppsListInstallationRequestsForAuthenticatedAppError304()'; } 
 }
/// The `401` response.
@immutable final class AppsListInstallationRequestsForAuthenticatedAppError401 extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError401(this.data);

factory AppsListInstallationRequestsForAuthenticatedAppError401.parse(ApiResponse response) { return AppsListInstallationRequestsForAuthenticatedAppError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationRequestsForAuthenticatedAppError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListInstallationRequestsForAuthenticatedAppError401($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListInstallationRequestsForAuthenticatedAppError$Unknown extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListInstallationRequestsForAuthenticatedAppError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListInstallationRequestsForAuthenticatedAppError.unknown($statusCode)'; } 
 }
