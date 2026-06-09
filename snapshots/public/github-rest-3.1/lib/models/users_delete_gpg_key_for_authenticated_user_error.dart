// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /user/gpg_keys/{gpg_key_id}`.
sealed class UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersDeleteGpgKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersDeleteGpgKeyForAuthenticatedUserError304.parse(response),
  401 => UsersDeleteGpgKeyForAuthenticatedUserError401.parse(response),
  403 => UsersDeleteGpgKeyForAuthenticatedUserError403.parse(response),
  404 => UsersDeleteGpgKeyForAuthenticatedUserError404.parse(response),
  422 => UsersDeleteGpgKeyForAuthenticatedUserError422.parse(response),
  _ => UsersDeleteGpgKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError304 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError304();

factory UsersDeleteGpgKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersDeleteGpgKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersDeleteGpgKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersDeleteGpgKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError401 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError401(this.data);

factory UsersDeleteGpgKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersDeleteGpgKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteGpgKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError403 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError403(this.data);

factory UsersDeleteGpgKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersDeleteGpgKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteGpgKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError404 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError404(this.data);

factory UsersDeleteGpgKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersDeleteGpgKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteGpgKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError422 extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError422(this.data);

factory UsersDeleteGpgKeyForAuthenticatedUserError422.parse(ApiResponse response) { return UsersDeleteGpgKeyForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteGpgKeyForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersDeleteGpgKeyForAuthenticatedUserError$Unknown extends UsersDeleteGpgKeyForAuthenticatedUserError {const UsersDeleteGpgKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersDeleteGpgKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersDeleteGpgKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
