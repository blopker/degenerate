// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/migrations/{migration_id}/archive`.
sealed class MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsGetArchiveForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => MigrationsGetArchiveForAuthenticatedUserError302.parse(response),
  304 => MigrationsGetArchiveForAuthenticatedUserError304.parse(response),
  401 => MigrationsGetArchiveForAuthenticatedUserError401.parse(response),
  403 => MigrationsGetArchiveForAuthenticatedUserError403.parse(response),
  _ => MigrationsGetArchiveForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class MigrationsGetArchiveForAuthenticatedUserError302 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError302();

factory MigrationsGetArchiveForAuthenticatedUserError302.parse(ApiResponse _) { return const MigrationsGetArchiveForAuthenticatedUserError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsGetArchiveForAuthenticatedUserError302; } 
@override int get hashCode { return (MigrationsGetArchiveForAuthenticatedUserError302).hashCode; } 
@override String toString() { return 'MigrationsGetArchiveForAuthenticatedUserError302()'; } 
 }
/// The `304` response.
@immutable final class MigrationsGetArchiveForAuthenticatedUserError304 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError304();

factory MigrationsGetArchiveForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsGetArchiveForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsGetArchiveForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsGetArchiveForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsGetArchiveForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsGetArchiveForAuthenticatedUserError401 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError401(this.data);

factory MigrationsGetArchiveForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsGetArchiveForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetArchiveForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsGetArchiveForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsGetArchiveForAuthenticatedUserError403 extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError403(this.data);

factory MigrationsGetArchiveForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsGetArchiveForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetArchiveForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsGetArchiveForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsGetArchiveForAuthenticatedUserError$Unknown extends MigrationsGetArchiveForAuthenticatedUserError {const MigrationsGetArchiveForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetArchiveForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsGetArchiveForAuthenticatedUserError.unknown($statusCode)'; } 
 }
