// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/keys`.
sealed class UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersCreatePublicSshKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersCreatePublicSshKeyForAuthenticatedUserError304.parse(response),
  401 => UsersCreatePublicSshKeyForAuthenticatedUserError401.parse(response),
  403 => UsersCreatePublicSshKeyForAuthenticatedUserError403.parse(response),
  404 => UsersCreatePublicSshKeyForAuthenticatedUserError404.parse(response),
  422 => UsersCreatePublicSshKeyForAuthenticatedUserError422.parse(response),
  _ => UsersCreatePublicSshKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError304 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError304();

factory UsersCreatePublicSshKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersCreatePublicSshKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersCreatePublicSshKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersCreatePublicSshKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError401 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError401(this.data);

factory UsersCreatePublicSshKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersCreatePublicSshKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreatePublicSshKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError403 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError403(this.data);

factory UsersCreatePublicSshKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersCreatePublicSshKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreatePublicSshKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError404 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError404(this.data);

factory UsersCreatePublicSshKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersCreatePublicSshKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreatePublicSshKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError422 extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError422(this.data);

factory UsersCreatePublicSshKeyForAuthenticatedUserError422.parse(ApiResponse response) { return UsersCreatePublicSshKeyForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreatePublicSshKeyForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersCreatePublicSshKeyForAuthenticatedUserError$Unknown extends UsersCreatePublicSshKeyForAuthenticatedUserError {const UsersCreatePublicSshKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreatePublicSshKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersCreatePublicSshKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
