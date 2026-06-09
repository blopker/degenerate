// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/ssh_signing_keys/{ssh_signing_key_id}`.
sealed class UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersDeleteSshSigningKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersDeleteSshSigningKeyForAuthenticatedUserError304.parse(response),
  401 => UsersDeleteSshSigningKeyForAuthenticatedUserError401.parse(response),
  403 => UsersDeleteSshSigningKeyForAuthenticatedUserError403.parse(response),
  404 => UsersDeleteSshSigningKeyForAuthenticatedUserError404.parse(response),
  _ => UsersDeleteSshSigningKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersDeleteSshSigningKeyForAuthenticatedUserError304 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError304();

factory UsersDeleteSshSigningKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersDeleteSshSigningKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersDeleteSshSigningKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersDeleteSshSigningKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersDeleteSshSigningKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersDeleteSshSigningKeyForAuthenticatedUserError401 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError401(this.data);

factory UsersDeleteSshSigningKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersDeleteSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSshSigningKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSshSigningKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersDeleteSshSigningKeyForAuthenticatedUserError403 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError403(this.data);

factory UsersDeleteSshSigningKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersDeleteSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSshSigningKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSshSigningKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersDeleteSshSigningKeyForAuthenticatedUserError404 extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError404(this.data);

factory UsersDeleteSshSigningKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersDeleteSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSshSigningKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSshSigningKeyForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersDeleteSshSigningKeyForAuthenticatedUserError$Unknown extends UsersDeleteSshSigningKeyForAuthenticatedUserError {const UsersDeleteSshSigningKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSshSigningKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersDeleteSshSigningKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
