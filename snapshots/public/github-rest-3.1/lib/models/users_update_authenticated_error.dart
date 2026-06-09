// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /user`.
sealed class UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError();

/// Parse the variant matching the response status code.
factory UsersUpdateAuthenticatedError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersUpdateAuthenticatedError304.parse(response),
  401 => UsersUpdateAuthenticatedError401.parse(response),
  403 => UsersUpdateAuthenticatedError403.parse(response),
  404 => UsersUpdateAuthenticatedError404.parse(response),
  422 => UsersUpdateAuthenticatedError422.parse(response),
  _ => UsersUpdateAuthenticatedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersUpdateAuthenticatedError304 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError304();

factory UsersUpdateAuthenticatedError304.parse(ApiResponse _) { return const UsersUpdateAuthenticatedError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersUpdateAuthenticatedError304; } 
@override int get hashCode { return (UsersUpdateAuthenticatedError304).hashCode; } 
@override String toString() { return 'UsersUpdateAuthenticatedError304()'; } 
 }
/// The `401` response.
@immutable final class UsersUpdateAuthenticatedError401 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError401(this.data);

factory UsersUpdateAuthenticatedError401.parse(ApiResponse response) { return UsersUpdateAuthenticatedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUpdateAuthenticatedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUpdateAuthenticatedError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersUpdateAuthenticatedError403 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError403(this.data);

factory UsersUpdateAuthenticatedError403.parse(ApiResponse response) { return UsersUpdateAuthenticatedError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUpdateAuthenticatedError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUpdateAuthenticatedError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersUpdateAuthenticatedError404 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError404(this.data);

factory UsersUpdateAuthenticatedError404.parse(ApiResponse response) { return UsersUpdateAuthenticatedError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUpdateAuthenticatedError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUpdateAuthenticatedError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersUpdateAuthenticatedError422 extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError422(this.data);

factory UsersUpdateAuthenticatedError422.parse(ApiResponse response) { return UsersUpdateAuthenticatedError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUpdateAuthenticatedError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUpdateAuthenticatedError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersUpdateAuthenticatedError$Unknown extends UsersUpdateAuthenticatedError {const UsersUpdateAuthenticatedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUpdateAuthenticatedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersUpdateAuthenticatedError.unknown($statusCode)'; } 
 }
