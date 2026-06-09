// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user`.
sealed class UsersGetAuthenticatedError {const UsersGetAuthenticatedError();

/// Parse the variant matching the response status code.
factory UsersGetAuthenticatedError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersGetAuthenticatedError304.parse(response),
  401 => UsersGetAuthenticatedError401.parse(response),
  403 => UsersGetAuthenticatedError403.parse(response),
  _ => UsersGetAuthenticatedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersGetAuthenticatedError304 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError304();

factory UsersGetAuthenticatedError304.parse(ApiResponse _) { return const UsersGetAuthenticatedError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersGetAuthenticatedError304; } 
@override int get hashCode { return (UsersGetAuthenticatedError304).hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedError304()'; } 
 }
/// The `401` response.
@immutable final class UsersGetAuthenticatedError401 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError401(this.data);

factory UsersGetAuthenticatedError401.parse(ApiResponse response) { return UsersGetAuthenticatedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersGetAuthenticatedError403 extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError403(this.data);

factory UsersGetAuthenticatedError403.parse(ApiResponse response) { return UsersGetAuthenticatedError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersGetAuthenticatedError$Unknown extends UsersGetAuthenticatedError {const UsersGetAuthenticatedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersGetAuthenticatedError.unknown($statusCode)'; } 
 }
