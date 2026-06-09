// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/migrations/{migration_id}/repos/{repo_name}/lock`.
sealed class MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsUnlockRepoForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => MigrationsUnlockRepoForAuthenticatedUserError304.parse(response),
  401 => MigrationsUnlockRepoForAuthenticatedUserError401.parse(response),
  403 => MigrationsUnlockRepoForAuthenticatedUserError403.parse(response),
  404 => MigrationsUnlockRepoForAuthenticatedUserError404.parse(response),
  _ => MigrationsUnlockRepoForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class MigrationsUnlockRepoForAuthenticatedUserError304 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError304();

factory MigrationsUnlockRepoForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsUnlockRepoForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsUnlockRepoForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsUnlockRepoForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsUnlockRepoForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsUnlockRepoForAuthenticatedUserError401 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError401(this.data);

factory MigrationsUnlockRepoForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsUnlockRepoForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsUnlockRepoForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsUnlockRepoForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsUnlockRepoForAuthenticatedUserError403 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError403(this.data);

factory MigrationsUnlockRepoForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsUnlockRepoForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsUnlockRepoForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsUnlockRepoForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class MigrationsUnlockRepoForAuthenticatedUserError404 extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError404(this.data);

factory MigrationsUnlockRepoForAuthenticatedUserError404.parse(ApiResponse response) { return MigrationsUnlockRepoForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsUnlockRepoForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsUnlockRepoForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsUnlockRepoForAuthenticatedUserError$Unknown extends MigrationsUnlockRepoForAuthenticatedUserError {const MigrationsUnlockRepoForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsUnlockRepoForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsUnlockRepoForAuthenticatedUserError.unknown($statusCode)'; } 
 }
