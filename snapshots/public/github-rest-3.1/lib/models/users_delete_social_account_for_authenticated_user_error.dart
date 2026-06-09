// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /user/social_accounts`.
sealed class UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersDeleteSocialAccountForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersDeleteSocialAccountForAuthenticatedUserError304.parse(response),
  401 => UsersDeleteSocialAccountForAuthenticatedUserError401.parse(response),
  403 => UsersDeleteSocialAccountForAuthenticatedUserError403.parse(response),
  404 => UsersDeleteSocialAccountForAuthenticatedUserError404.parse(response),
  422 => UsersDeleteSocialAccountForAuthenticatedUserError422.parse(response),
  _ => UsersDeleteSocialAccountForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError304 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError304();

factory UsersDeleteSocialAccountForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersDeleteSocialAccountForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersDeleteSocialAccountForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersDeleteSocialAccountForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError401 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError401(this.data);

factory UsersDeleteSocialAccountForAuthenticatedUserError401.parse(ApiResponse response) { return UsersDeleteSocialAccountForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSocialAccountForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError403 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError403(this.data);

factory UsersDeleteSocialAccountForAuthenticatedUserError403.parse(ApiResponse response) { return UsersDeleteSocialAccountForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSocialAccountForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError404 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError404(this.data);

factory UsersDeleteSocialAccountForAuthenticatedUserError404.parse(ApiResponse response) { return UsersDeleteSocialAccountForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSocialAccountForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError422 extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError422(this.data);

factory UsersDeleteSocialAccountForAuthenticatedUserError422.parse(ApiResponse response) { return UsersDeleteSocialAccountForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSocialAccountForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersDeleteSocialAccountForAuthenticatedUserError$Unknown extends UsersDeleteSocialAccountForAuthenticatedUserError {const UsersDeleteSocialAccountForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteSocialAccountForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserError.unknown($statusCode)'; } 
 }
