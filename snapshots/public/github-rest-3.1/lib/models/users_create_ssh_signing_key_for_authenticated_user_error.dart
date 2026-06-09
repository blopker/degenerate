// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/ssh_signing_keys`.
sealed class UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory UsersCreateSshSigningKeyForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersCreateSshSigningKeyForAuthenticatedUserError304.parse(response),
  401 => UsersCreateSshSigningKeyForAuthenticatedUserError401.parse(response),
  403 => UsersCreateSshSigningKeyForAuthenticatedUserError403.parse(response),
  404 => UsersCreateSshSigningKeyForAuthenticatedUserError404.parse(response),
  422 => UsersCreateSshSigningKeyForAuthenticatedUserError422.parse(response),
  _ => UsersCreateSshSigningKeyForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError304 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError304();

factory UsersCreateSshSigningKeyForAuthenticatedUserError304.parse(ApiResponse _) { return const UsersCreateSshSigningKeyForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersCreateSshSigningKeyForAuthenticatedUserError304; } 
@override int get hashCode { return (UsersCreateSshSigningKeyForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError401 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError401(this.data);

factory UsersCreateSshSigningKeyForAuthenticatedUserError401.parse(ApiResponse response) { return UsersCreateSshSigningKeyForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateSshSigningKeyForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError403 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError403(this.data);

factory UsersCreateSshSigningKeyForAuthenticatedUserError403.parse(ApiResponse response) { return UsersCreateSshSigningKeyForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateSshSigningKeyForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError404 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError404(this.data);

factory UsersCreateSshSigningKeyForAuthenticatedUserError404.parse(ApiResponse response) { return UsersCreateSshSigningKeyForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateSshSigningKeyForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError422 extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError422(this.data);

factory UsersCreateSshSigningKeyForAuthenticatedUserError422.parse(ApiResponse response) { return UsersCreateSshSigningKeyForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateSshSigningKeyForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserError$Unknown extends UsersCreateSshSigningKeyForAuthenticatedUserError {const UsersCreateSshSigningKeyForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCreateSshSigningKeyForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserError.unknown($statusCode)'; } 
 }
