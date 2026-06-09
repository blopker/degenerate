// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/migrations/{migration_id}/archive`.
sealed class MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsDeleteArchiveForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => MigrationsDeleteArchiveForAuthenticatedUserError304.parse(response),
  401 => MigrationsDeleteArchiveForAuthenticatedUserError401.parse(response),
  403 => MigrationsDeleteArchiveForAuthenticatedUserError403.parse(response),
  404 => MigrationsDeleteArchiveForAuthenticatedUserError404.parse(response),
  _ => MigrationsDeleteArchiveForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class MigrationsDeleteArchiveForAuthenticatedUserError304 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError304();

factory MigrationsDeleteArchiveForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsDeleteArchiveForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsDeleteArchiveForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsDeleteArchiveForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsDeleteArchiveForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsDeleteArchiveForAuthenticatedUserError401 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError401(this.data);

factory MigrationsDeleteArchiveForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsDeleteArchiveForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDeleteArchiveForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsDeleteArchiveForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsDeleteArchiveForAuthenticatedUserError403 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError403(this.data);

factory MigrationsDeleteArchiveForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsDeleteArchiveForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDeleteArchiveForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsDeleteArchiveForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class MigrationsDeleteArchiveForAuthenticatedUserError404 extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError404(this.data);

factory MigrationsDeleteArchiveForAuthenticatedUserError404.parse(ApiResponse response) { return MigrationsDeleteArchiveForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDeleteArchiveForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsDeleteArchiveForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsDeleteArchiveForAuthenticatedUserError$Unknown extends MigrationsDeleteArchiveForAuthenticatedUserError {const MigrationsDeleteArchiveForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsDeleteArchiveForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsDeleteArchiveForAuthenticatedUserError.unknown($statusCode)'; } 
 }
