// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/social_accounts`.
sealed class UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersListSocialAccountsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersListSocialAccountsForAuthenticatedUserError304.parse(response),
  401 => UsersListSocialAccountsForAuthenticatedUserError401.parse(response),
  403 => UsersListSocialAccountsForAuthenticatedUserError403.parse(response),
  404 => UsersListSocialAccountsForAuthenticatedUserError404.parse(response),
  _ => UsersListSocialAccountsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersListSocialAccountsForAuthenticatedUserError304 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError304();

factory UsersListSocialAccountsForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersListSocialAccountsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListSocialAccountsForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersListSocialAccountsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersListSocialAccountsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersListSocialAccountsForAuthenticatedUserError401 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError401(this.data);

factory UsersListSocialAccountsForAuthenticatedUserError401.parse(ApiResponse response) { return UsersListSocialAccountsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSocialAccountsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSocialAccountsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersListSocialAccountsForAuthenticatedUserError403 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError403(this.data);

factory UsersListSocialAccountsForAuthenticatedUserError403.parse(ApiResponse response) { return UsersListSocialAccountsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSocialAccountsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSocialAccountsForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersListSocialAccountsForAuthenticatedUserError404 extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError404(this.data);

factory UsersListSocialAccountsForAuthenticatedUserError404.parse(ApiResponse response) { return UsersListSocialAccountsForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSocialAccountsForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListSocialAccountsForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListSocialAccountsForAuthenticatedUserError$Unknown extends UsersListSocialAccountsForAuthenticatedUserError {const UsersListSocialAccountsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListSocialAccountsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListSocialAccountsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
