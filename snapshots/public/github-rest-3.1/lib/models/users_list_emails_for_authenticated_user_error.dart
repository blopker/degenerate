// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/emails`.
sealed class UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListEmailsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListEmailsForAuthenticatedUserError304.parse(response),
  401 => UsersListEmailsForAuthenticatedUserError401.parse(response),
  403 => UsersListEmailsForAuthenticatedUserError403.parse(response),
  404 => UsersListEmailsForAuthenticatedUserError404.parse(response),
  _ => UsersListEmailsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListEmailsForAuthenticatedUserError304 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError304();

factory UsersListEmailsForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListEmailsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListEmailsForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListEmailsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListEmailsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListEmailsForAuthenticatedUserError401 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError401(this.data);

factory UsersListEmailsForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListEmailsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListEmailsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListEmailsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListEmailsForAuthenticatedUserError403 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError403(this.data);

factory UsersListEmailsForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListEmailsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListEmailsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListEmailsForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListEmailsForAuthenticatedUserError404 extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError404(this.data);

factory UsersListEmailsForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListEmailsForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListEmailsForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListEmailsForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListEmailsForAuthenticatedUserError$Unknown extends UsersListEmailsForAuthenticatedUserError {const UsersListEmailsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListEmailsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListEmailsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
