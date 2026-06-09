// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/migrations`.
sealed class MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory MigrationsStartForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => MigrationsStartForAuthenticatedUserError304.parse(response),
  401 => MigrationsStartForAuthenticatedUserError401.parse(response),
  403 => MigrationsStartForAuthenticatedUserError403.parse(response),
  422 => MigrationsStartForAuthenticatedUserError422.parse(response),
  _ => MigrationsStartForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class MigrationsStartForAuthenticatedUserError304 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError304();

factory MigrationsStartForAuthenticatedUserError304.parse(ApiResponse _) { return const MigrationsStartForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is MigrationsStartForAuthenticatedUserError304; } 
@override int get hashCode { return (MigrationsStartForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'MigrationsStartForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class MigrationsStartForAuthenticatedUserError401 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError401(this.data);

factory MigrationsStartForAuthenticatedUserError401.parse(ApiResponse response) { return MigrationsStartForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsStartForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class MigrationsStartForAuthenticatedUserError403 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError403(this.data);

factory MigrationsStartForAuthenticatedUserError403.parse(ApiResponse response) { return MigrationsStartForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsStartForAuthenticatedUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class MigrationsStartForAuthenticatedUserError422 extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError422(this.data);

factory MigrationsStartForAuthenticatedUserError422.parse(ApiResponse response) { return MigrationsStartForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsStartForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsStartForAuthenticatedUserError$Unknown extends MigrationsStartForAuthenticatedUserError {const MigrationsStartForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsStartForAuthenticatedUserError.unknown($statusCode)'; } 
 }
