// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/keys/{key_id}`.
sealed class UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersDeletePublicSshKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersDeletePublicSshKeyForAuthenticatedUserError304.parse(response),
  401 => UsersDeletePublicSshKeyForAuthenticatedUserError401.parse(response),
  403 => UsersDeletePublicSshKeyForAuthenticatedUserError403.parse(response),
  404 => UsersDeletePublicSshKeyForAuthenticatedUserError404.parse(response),
  _ => UsersDeletePublicSshKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersDeletePublicSshKeyForAuthenticatedUserError304 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError304();

factory UsersDeletePublicSshKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersDeletePublicSshKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersDeletePublicSshKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersDeletePublicSshKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersDeletePublicSshKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersDeletePublicSshKeyForAuthenticatedUserError401 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError401(this.data);

factory UsersDeletePublicSshKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersDeletePublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeletePublicSshKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeletePublicSshKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersDeletePublicSshKeyForAuthenticatedUserError403 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError403(this.data);

factory UsersDeletePublicSshKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersDeletePublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeletePublicSshKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeletePublicSshKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersDeletePublicSshKeyForAuthenticatedUserError404 extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError404(this.data);

factory UsersDeletePublicSshKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersDeletePublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeletePublicSshKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeletePublicSshKeyForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersDeletePublicSshKeyForAuthenticatedUserError$Unknown extends UsersDeletePublicSshKeyForAuthenticatedUserError {const UsersDeletePublicSshKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeletePublicSshKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersDeletePublicSshKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
