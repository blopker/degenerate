// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/ssh_signing_keys/{ssh_signing_key_id}`.
sealed class UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersGetSshSigningKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersGetSshSigningKeyForAuthenticatedUserError304.parse(response),
  401 => UsersGetSshSigningKeyForAuthenticatedUserError401.parse(response),
  403 => UsersGetSshSigningKeyForAuthenticatedUserError403.parse(response),
  404 => UsersGetSshSigningKeyForAuthenticatedUserError404.parse(response),
  _ => UsersGetSshSigningKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersGetSshSigningKeyForAuthenticatedUserError304 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError304();

factory UsersGetSshSigningKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersGetSshSigningKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersGetSshSigningKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersGetSshSigningKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersGetSshSigningKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersGetSshSigningKeyForAuthenticatedUserError401 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError401(this.data);

factory UsersGetSshSigningKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersGetSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetSshSigningKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetSshSigningKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersGetSshSigningKeyForAuthenticatedUserError403 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError403(this.data);

factory UsersGetSshSigningKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersGetSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetSshSigningKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetSshSigningKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersGetSshSigningKeyForAuthenticatedUserError404 extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError404(this.data);

factory UsersGetSshSigningKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersGetSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetSshSigningKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetSshSigningKeyForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersGetSshSigningKeyForAuthenticatedUserError$Unknown extends UsersGetSshSigningKeyForAuthenticatedUserError {const UsersGetSshSigningKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetSshSigningKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersGetSshSigningKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
