// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/following`.
sealed class UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListFollowedByAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListFollowedByAuthenticatedUserError304.parse(response),
  401 => UsersListFollowedByAuthenticatedUserError401.parse(response),
  403 => UsersListFollowedByAuthenticatedUserError403.parse(response),
  _ => UsersListFollowedByAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListFollowedByAuthenticatedUserError304 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError304();

factory UsersListFollowedByAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListFollowedByAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListFollowedByAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListFollowedByAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListFollowedByAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListFollowedByAuthenticatedUserError401 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError401(this.data);

factory UsersListFollowedByAuthenticatedUserError401.parse(ApiResponse response) { return UsersListFollowedByAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowedByAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListFollowedByAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListFollowedByAuthenticatedUserError403 extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError403(this.data);

factory UsersListFollowedByAuthenticatedUserError403.parse(ApiResponse response) { return UsersListFollowedByAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowedByAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListFollowedByAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListFollowedByAuthenticatedUserError$Unknown extends UsersListFollowedByAuthenticatedUserError {const UsersListFollowedByAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListFollowedByAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListFollowedByAuthenticatedUserError.unknown($statusCode)'; } 
 }
