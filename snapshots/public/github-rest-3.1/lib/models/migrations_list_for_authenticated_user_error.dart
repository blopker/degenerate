// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/migrations`.
sealed class MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => MigrationsListForAuthenticatedUserError304.parse(response),
  401 => MigrationsListForAuthenticatedUserError401.parse(response),
  403 => MigrationsListForAuthenticatedUserError403.parse(response),
  _ => MigrationsListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class MigrationsListForAuthenticatedUserError304 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError304();

factory MigrationsListForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsListForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsListForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsListForAuthenticatedUserError401 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError401(this.data);

factory MigrationsListForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsListForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsListForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsListForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsListForAuthenticatedUserError403 extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError403(this.data);

factory MigrationsListForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsListForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsListForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsListForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsListForAuthenticatedUserError$Unknown extends MigrationsListForAuthenticatedUserError {const MigrationsListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
