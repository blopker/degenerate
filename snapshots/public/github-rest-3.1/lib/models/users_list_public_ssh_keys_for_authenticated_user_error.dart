// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/keys`.
sealed class UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListPublicSshKeysForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListPublicSshKeysForAuthenticatedUserError304.parse(response),
  401 => UsersListPublicSshKeysForAuthenticatedUserError401.parse(response),
  403 => UsersListPublicSshKeysForAuthenticatedUserError403.parse(response),
  404 => UsersListPublicSshKeysForAuthenticatedUserError404.parse(response),
  _ => UsersListPublicSshKeysForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListPublicSshKeysForAuthenticatedUserError304 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError304();

factory UsersListPublicSshKeysForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListPublicSshKeysForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListPublicSshKeysForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListPublicSshKeysForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListPublicSshKeysForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListPublicSshKeysForAuthenticatedUserError401 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError401(this.data);

factory UsersListPublicSshKeysForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListPublicSshKeysForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicSshKeysForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicSshKeysForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListPublicSshKeysForAuthenticatedUserError403 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError403(this.data);

factory UsersListPublicSshKeysForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListPublicSshKeysForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicSshKeysForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicSshKeysForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListPublicSshKeysForAuthenticatedUserError404 extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError404(this.data);

factory UsersListPublicSshKeysForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListPublicSshKeysForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicSshKeysForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListPublicSshKeysForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListPublicSshKeysForAuthenticatedUserError$Unknown extends UsersListPublicSshKeysForAuthenticatedUserError {const UsersListPublicSshKeysForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListPublicSshKeysForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListPublicSshKeysForAuthenticatedUserError.unknown($statusCode)'; } 
 }
