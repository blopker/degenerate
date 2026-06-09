// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/ssh_signing_keys`.
sealed class UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListSshSigningKeysForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListSshSigningKeysForAuthenticatedUserError304.parse(response),
  401 => UsersListSshSigningKeysForAuthenticatedUserError401.parse(response),
  403 => UsersListSshSigningKeysForAuthenticatedUserError403.parse(response),
  404 => UsersListSshSigningKeysForAuthenticatedUserError404.parse(response),
  _ => UsersListSshSigningKeysForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListSshSigningKeysForAuthenticatedUserError304 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError304();

factory UsersListSshSigningKeysForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListSshSigningKeysForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListSshSigningKeysForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListSshSigningKeysForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListSshSigningKeysForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListSshSigningKeysForAuthenticatedUserError401 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError401(this.data);

factory UsersListSshSigningKeysForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListSshSigningKeysForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSshSigningKeysForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSshSigningKeysForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListSshSigningKeysForAuthenticatedUserError403 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError403(this.data);

factory UsersListSshSigningKeysForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListSshSigningKeysForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSshSigningKeysForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSshSigningKeysForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListSshSigningKeysForAuthenticatedUserError404 extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError404(this.data);

factory UsersListSshSigningKeysForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListSshSigningKeysForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSshSigningKeysForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSshSigningKeysForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListSshSigningKeysForAuthenticatedUserError$Unknown extends UsersListSshSigningKeysForAuthenticatedUserError {const UsersListSshSigningKeysForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSshSigningKeysForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListSshSigningKeysForAuthenticatedUserError.unknown($statusCode)'; } 
 }
