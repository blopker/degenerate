// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/emails`.
sealed class UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersAddEmailForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersAddEmailForAuthenticatedUserError304.parse(response),
  401 => UsersAddEmailForAuthenticatedUserError401.parse(response),
  403 => UsersAddEmailForAuthenticatedUserError403.parse(response),
  404 => UsersAddEmailForAuthenticatedUserError404.parse(response),
  422 => UsersAddEmailForAuthenticatedUserError422.parse(response),
  _ => UsersAddEmailForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersAddEmailForAuthenticatedUserError304 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError304();

factory UsersAddEmailForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersAddEmailForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersAddEmailForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersAddEmailForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersAddEmailForAuthenticatedUserError401 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError401(this.data);

factory UsersAddEmailForAuthenticatedUserError401.parse(ApiResponse response) { return UsersAddEmailForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddEmailForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersAddEmailForAuthenticatedUserError403 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError403(this.data);

factory UsersAddEmailForAuthenticatedUserError403.parse(ApiResponse response) { return UsersAddEmailForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddEmailForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersAddEmailForAuthenticatedUserError404 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError404(this.data);

factory UsersAddEmailForAuthenticatedUserError404.parse(ApiResponse response) { return UsersAddEmailForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddEmailForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersAddEmailForAuthenticatedUserError422 extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError422(this.data);

factory UsersAddEmailForAuthenticatedUserError422.parse(ApiResponse response) { return UsersAddEmailForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddEmailForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersAddEmailForAuthenticatedUserError$Unknown extends UsersAddEmailForAuthenticatedUserError {const UsersAddEmailForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddEmailForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersAddEmailForAuthenticatedUserError.unknown($statusCode)'; } 
 }
