// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/migrations`.
sealed class MigrationsStartForOrgError {const MigrationsStartForOrgError();

/// Parse the variant matching the response status code.
factory MigrationsStartForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => MigrationsStartForOrgError404.parse(response),
  422 => MigrationsStartForOrgError422.parse(response),
  _ => MigrationsStartForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class MigrationsStartForOrgError404 extends MigrationsStartForOrgError {const MigrationsStartForOrgError404(this.data);

factory MigrationsStartForOrgError404.parse(ApiResponse response) { return MigrationsStartForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsStartForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class MigrationsStartForOrgError422 extends MigrationsStartForOrgError {const MigrationsStartForOrgError422(this.data);

factory MigrationsStartForOrgError422.parse(ApiResponse response) { return MigrationsStartForOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'MigrationsStartForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class MigrationsStartForOrgError$Unknown extends MigrationsStartForOrgError {const MigrationsStartForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'MigrationsStartForOrgError.unknown($statusCode)'; } 
 }
