// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/gpg_keys`.
sealed class UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersCreateGpgKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersCreateGpgKeyForAuthenticatedUserError304.parse(response),
  401 => UsersCreateGpgKeyForAuthenticatedUserError401.parse(response),
  403 => UsersCreateGpgKeyForAuthenticatedUserError403.parse(response),
  404 => UsersCreateGpgKeyForAuthenticatedUserError404.parse(response),
  422 => UsersCreateGpgKeyForAuthenticatedUserError422.parse(response),
  _ => UsersCreateGpgKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError304 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError304();

factory UsersCreateGpgKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersCreateGpgKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersCreateGpgKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersCreateGpgKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError401 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError401(this.data);

factory UsersCreateGpgKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersCreateGpgKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateGpgKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError403 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError403(this.data);

factory UsersCreateGpgKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersCreateGpgKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateGpgKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError404 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError404(this.data);

factory UsersCreateGpgKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersCreateGpgKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateGpgKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError422 extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError422(this.data);

factory UsersCreateGpgKeyForAuthenticatedUserError422.parse(ApiResponse response) { return UsersCreateGpgKeyForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateGpgKeyForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersCreateGpgKeyForAuthenticatedUserError$Unknown extends UsersCreateGpgKeyForAuthenticatedUserError {const UsersCreateGpgKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateGpgKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
