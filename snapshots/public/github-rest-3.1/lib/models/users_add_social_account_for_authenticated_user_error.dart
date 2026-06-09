// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/social_accounts`.
sealed class UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersAddSocialAccountForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersAddSocialAccountForAuthenticatedUserError304.parse(response),
  401 => UsersAddSocialAccountForAuthenticatedUserError401.parse(response),
  403 => UsersAddSocialAccountForAuthenticatedUserError403.parse(response),
  404 => UsersAddSocialAccountForAuthenticatedUserError404.parse(response),
  422 => UsersAddSocialAccountForAuthenticatedUserError422.parse(response),
  _ => UsersAddSocialAccountForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError304 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError304();

factory UsersAddSocialAccountForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersAddSocialAccountForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersAddSocialAccountForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersAddSocialAccountForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError401 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError401(this.data);

factory UsersAddSocialAccountForAuthenticatedUserError401.parse(ApiResponse response) { return UsersAddSocialAccountForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddSocialAccountForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError403 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError403(this.data);

factory UsersAddSocialAccountForAuthenticatedUserError403.parse(ApiResponse response) { return UsersAddSocialAccountForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddSocialAccountForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError404 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError404(this.data);

factory UsersAddSocialAccountForAuthenticatedUserError404.parse(ApiResponse response) { return UsersAddSocialAccountForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddSocialAccountForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError422 extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError422(this.data);

factory UsersAddSocialAccountForAuthenticatedUserError422.parse(ApiResponse response) { return UsersAddSocialAccountForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddSocialAccountForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersAddSocialAccountForAuthenticatedUserError$Unknown extends UsersAddSocialAccountForAuthenticatedUserError {const UsersAddSocialAccountForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersAddSocialAccountForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserError.unknown($statusCode)'; } 
 }
