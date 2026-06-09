// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/followers`.
sealed class UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListFollowersForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListFollowersForAuthenticatedUserError304.parse(response),
  401 => UsersListFollowersForAuthenticatedUserError401.parse(response),
  403 => UsersListFollowersForAuthenticatedUserError403.parse(response),
  _ => UsersListFollowersForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListFollowersForAuthenticatedUserError304 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError304();

factory UsersListFollowersForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListFollowersForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListFollowersForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListFollowersForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListFollowersForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListFollowersForAuthenticatedUserError401 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError401(this.data);

factory UsersListFollowersForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListFollowersForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowersForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListFollowersForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListFollowersForAuthenticatedUserError403 extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError403(this.data);

factory UsersListFollowersForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListFollowersForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowersForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListFollowersForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListFollowersForAuthenticatedUserError$Unknown extends UsersListFollowersForAuthenticatedUserError {const UsersListFollowersForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowersForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListFollowersForAuthenticatedUserError.unknown($statusCode)'; } 
 }
