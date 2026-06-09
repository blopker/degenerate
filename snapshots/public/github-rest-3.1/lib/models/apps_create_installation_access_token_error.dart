// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /app/installations/{installation_id}/access_tokens`.
sealed class AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError();

/// Parse the variant matching the response status code.
factory AppsCreateInstallationAccessTokenError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => AppsCreateInstallationAccessTokenError401.parse(response),
  403 => AppsCreateInstallationAccessTokenError403.parse(response),
  404 => AppsCreateInstallationAccessTokenError404.parse(response),
  422 => AppsCreateInstallationAccessTokenError422.parse(response),
  _ => AppsCreateInstallationAccessTokenError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class AppsCreateInstallationAccessTokenError401 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError401(this.data);

factory AppsCreateInstallationAccessTokenError401.parse(ApiResponse response) { return AppsCreateInstallationAccessTokenError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateInstallationAccessTokenError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateInstallationAccessTokenError401($data)'; } 
 }
/// The `403` response.
@immutable final class AppsCreateInstallationAccessTokenError403 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError403(this.data);

factory AppsCreateInstallationAccessTokenError403.parse(ApiResponse response) { return AppsCreateInstallationAccessTokenError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateInstallationAccessTokenError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateInstallationAccessTokenError403($data)'; } 
 }
/// The `404` response.
@immutable final class AppsCreateInstallationAccessTokenError404 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError404(this.data);

factory AppsCreateInstallationAccessTokenError404.parse(ApiResponse response) { return AppsCreateInstallationAccessTokenError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateInstallationAccessTokenError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateInstallationAccessTokenError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsCreateInstallationAccessTokenError422 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError422(this.data);

factory AppsCreateInstallationAccessTokenError422.parse(ApiResponse response) { return AppsCreateInstallationAccessTokenError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateInstallationAccessTokenError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsCreateInstallationAccessTokenError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsCreateInstallationAccessTokenError$Unknown extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsCreateInstallationAccessTokenError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsCreateInstallationAccessTokenError.unknown($statusCode)'; } 
 }
