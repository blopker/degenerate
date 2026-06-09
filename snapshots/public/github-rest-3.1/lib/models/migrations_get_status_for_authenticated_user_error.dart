// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/migrations/{migration_id}`.
sealed class MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsGetStatusForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => MigrationsGetStatusForAuthenticatedUserError304.parse(response),
  401 => MigrationsGetStatusForAuthenticatedUserError401.parse(response),
  403 => MigrationsGetStatusForAuthenticatedUserError403.parse(response),
  404 => MigrationsGetStatusForAuthenticatedUserError404.parse(response),
  _ => MigrationsGetStatusForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class MigrationsGetStatusForAuthenticatedUserError304 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError304();

factory MigrationsGetStatusForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsGetStatusForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsGetStatusForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsGetStatusForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsGetStatusForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsGetStatusForAuthenticatedUserError401 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError401(this.data);

factory MigrationsGetStatusForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsGetStatusForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetStatusForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsGetStatusForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsGetStatusForAuthenticatedUserError403 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError403(this.data);

factory MigrationsGetStatusForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsGetStatusForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetStatusForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsGetStatusForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class MigrationsGetStatusForAuthenticatedUserError404 extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError404(this.data);

factory MigrationsGetStatusForAuthenticatedUserError404.parse(ApiResponse response) { return MigrationsGetStatusForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetStatusForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsGetStatusForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsGetStatusForAuthenticatedUserError$Unknown extends MigrationsGetStatusForAuthenticatedUserError {const MigrationsGetStatusForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsGetStatusForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsGetStatusForAuthenticatedUserError.unknown($statusCode)'; } 
 }
