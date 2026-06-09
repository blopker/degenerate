// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /user/emails`.
sealed class UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersDeleteEmailForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersDeleteEmailForAuthenticatedUserError304.parse(response),
  401 => UsersDeleteEmailForAuthenticatedUserError401.parse(response),
  403 => UsersDeleteEmailForAuthenticatedUserError403.parse(response),
  404 => UsersDeleteEmailForAuthenticatedUserError404.parse(response),
  422 => UsersDeleteEmailForAuthenticatedUserError422.parse(response),
  _ => UsersDeleteEmailForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersDeleteEmailForAuthenticatedUserError304 extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError304();

factory UsersDeleteEmailForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersDeleteEmailForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersDeleteEmailForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersDeleteEmailForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersDeleteEmailForAuthenticatedUserError401 extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError401(this.data);

factory UsersDeleteEmailForAuthenticatedUserError401.parse(ApiResponse response) { return UsersDeleteEmailForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteEmailForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersDeleteEmailForAuthenticatedUserError403 extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError403(this.data);

factory UsersDeleteEmailForAuthenticatedUserError403.parse(ApiResponse response) { return UsersDeleteEmailForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteEmailForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersDeleteEmailForAuthenticatedUserError404 extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError404(this.data);

factory UsersDeleteEmailForAuthenticatedUserError404.parse(ApiResponse response) { return UsersDeleteEmailForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteEmailForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersDeleteEmailForAuthenticatedUserError422 extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError422(this.data);

factory UsersDeleteEmailForAuthenticatedUserError422.parse(ApiResponse response) { return UsersDeleteEmailForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteEmailForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersDeleteEmailForAuthenticatedUserError$Unknown extends UsersDeleteEmailForAuthenticatedUserError {const UsersDeleteEmailForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteEmailForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersDeleteEmailForAuthenticatedUserError.unknown($statusCode)'; } 
 }
