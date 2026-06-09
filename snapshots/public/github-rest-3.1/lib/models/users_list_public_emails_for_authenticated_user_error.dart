// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/public_emails`.
sealed class UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListPublicEmailsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListPublicEmailsForAuthenticatedUserError304.parse(response),
  401 => UsersListPublicEmailsForAuthenticatedUserError401.parse(response),
  403 => UsersListPublicEmailsForAuthenticatedUserError403.parse(response),
  404 => UsersListPublicEmailsForAuthenticatedUserError404.parse(response),
  _ => UsersListPublicEmailsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListPublicEmailsForAuthenticatedUserError304 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError304();

factory UsersListPublicEmailsForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListPublicEmailsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListPublicEmailsForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListPublicEmailsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListPublicEmailsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListPublicEmailsForAuthenticatedUserError401 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError401(this.data);

factory UsersListPublicEmailsForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListPublicEmailsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicEmailsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicEmailsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListPublicEmailsForAuthenticatedUserError403 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError403(this.data);

factory UsersListPublicEmailsForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListPublicEmailsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicEmailsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicEmailsForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListPublicEmailsForAuthenticatedUserError404 extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError404(this.data);

factory UsersListPublicEmailsForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListPublicEmailsForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicEmailsForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicEmailsForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListPublicEmailsForAuthenticatedUserError$Unknown extends UsersListPublicEmailsForAuthenticatedUserError {const UsersListPublicEmailsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicEmailsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListPublicEmailsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
