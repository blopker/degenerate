// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/keys/{key_id}`.
sealed class UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersGetPublicSshKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersGetPublicSshKeyForAuthenticatedUserError304.parse(response),
  401 => UsersGetPublicSshKeyForAuthenticatedUserError401.parse(response),
  403 => UsersGetPublicSshKeyForAuthenticatedUserError403.parse(response),
  404 => UsersGetPublicSshKeyForAuthenticatedUserError404.parse(response),
  _ => UsersGetPublicSshKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersGetPublicSshKeyForAuthenticatedUserError304 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError304();

factory UsersGetPublicSshKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersGetPublicSshKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersGetPublicSshKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersGetPublicSshKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersGetPublicSshKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersGetPublicSshKeyForAuthenticatedUserError401 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError401(this.data);

factory UsersGetPublicSshKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersGetPublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetPublicSshKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetPublicSshKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersGetPublicSshKeyForAuthenticatedUserError403 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError403(this.data);

factory UsersGetPublicSshKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersGetPublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetPublicSshKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetPublicSshKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersGetPublicSshKeyForAuthenticatedUserError404 extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError404(this.data);

factory UsersGetPublicSshKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersGetPublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetPublicSshKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetPublicSshKeyForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersGetPublicSshKeyForAuthenticatedUserError$Unknown extends UsersGetPublicSshKeyForAuthenticatedUserError {const UsersGetPublicSshKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetPublicSshKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersGetPublicSshKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
