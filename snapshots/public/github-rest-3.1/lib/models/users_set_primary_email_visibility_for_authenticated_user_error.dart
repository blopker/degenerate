// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /user/email/visibility`.
sealed class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304.parse(response),
  401 => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401.parse(response),
  403 => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403.parse(response),
  404 => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404.parse(response),
  422 => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422.parse(response),
  _ => UsersSetPrimaryEmailVisibilityForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304();

factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401(this.data);

factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401.parse(ApiResponse response) { return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403(this.data);

factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403.parse(ApiResponse response) { return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404(this.data);

factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404.parse(ApiResponse response) { return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422 extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422(this.data);

factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422.parse(ApiResponse response) { return UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersSetPrimaryEmailVisibilityForAuthenticatedUserError$Unknown extends UsersSetPrimaryEmailVisibilityForAuthenticatedUserError {const UsersSetPrimaryEmailVisibilityForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersSetPrimaryEmailVisibilityForAuthenticatedUserError.unknown($statusCode)'; } 
 }
