// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/gpg_keys`.
sealed class UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListGpgKeysForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListGpgKeysForAuthenticatedUserError304.parse(response),
  401 => UsersListGpgKeysForAuthenticatedUserError401.parse(response),
  403 => UsersListGpgKeysForAuthenticatedUserError403.parse(response),
  404 => UsersListGpgKeysForAuthenticatedUserError404.parse(response),
  _ => UsersListGpgKeysForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListGpgKeysForAuthenticatedUserError304 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError304();

factory UsersListGpgKeysForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListGpgKeysForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListGpgKeysForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListGpgKeysForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListGpgKeysForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListGpgKeysForAuthenticatedUserError401 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError401(this.data);

factory UsersListGpgKeysForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListGpgKeysForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListGpgKeysForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListGpgKeysForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListGpgKeysForAuthenticatedUserError403 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError403(this.data);

factory UsersListGpgKeysForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListGpgKeysForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListGpgKeysForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListGpgKeysForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListGpgKeysForAuthenticatedUserError404 extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError404(this.data);

factory UsersListGpgKeysForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListGpgKeysForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListGpgKeysForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListGpgKeysForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListGpgKeysForAuthenticatedUserError$Unknown extends UsersListGpgKeysForAuthenticatedUserError {const UsersListGpgKeysForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListGpgKeysForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListGpgKeysForAuthenticatedUserError.unknown($statusCode)'; } 
 }
