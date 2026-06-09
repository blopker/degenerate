// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/gpg_keys/{gpg_key_id}`.
sealed class UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersGetGpgKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersGetGpgKeyForAuthenticatedUserError304.parse(response),
  401 => UsersGetGpgKeyForAuthenticatedUserError401.parse(response),
  403 => UsersGetGpgKeyForAuthenticatedUserError403.parse(response),
  404 => UsersGetGpgKeyForAuthenticatedUserError404.parse(response),
  _ => UsersGetGpgKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersGetGpgKeyForAuthenticatedUserError304 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError304();

factory UsersGetGpgKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersGetGpgKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersGetGpgKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersGetGpgKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersGetGpgKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersGetGpgKeyForAuthenticatedUserError401 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError401(this.data);

factory UsersGetGpgKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersGetGpgKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetGpgKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetGpgKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersGetGpgKeyForAuthenticatedUserError403 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError403(this.data);

factory UsersGetGpgKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersGetGpgKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetGpgKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetGpgKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersGetGpgKeyForAuthenticatedUserError404 extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError404(this.data);

factory UsersGetGpgKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersGetGpgKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetGpgKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetGpgKeyForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersGetGpgKeyForAuthenticatedUserError$Unknown extends UsersGetGpgKeyForAuthenticatedUserError {const UsersGetGpgKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetGpgKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersGetGpgKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
