// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2`.
sealed class ProjectsListForUserError {const ProjectsListForUserError();

/// Parse the variant matching the response status code.
factory ProjectsListForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListForUserError304.parse(response),
  401 => ProjectsListForUserError401.parse(response),
  403 => ProjectsListForUserError403.parse(response),
  _ => ProjectsListForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListForUserError304 extends ProjectsListForUserError {const ProjectsListForUserError304();

factory ProjectsListForUserError304.parse(ApiResponse _) { return const ProjectsListForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListForUserError304; } 
@override int get hashCode { return (ProjectsListForUserError304).hashCode; } 
@override String toString() { return 'ProjectsListForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListForUserError401 extends ProjectsListForUserError {const ProjectsListForUserError401(this.data);

factory ProjectsListForUserError401.parse(ApiResponse response) { return ProjectsListForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListForUserError403 extends ProjectsListForUserError {const ProjectsListForUserError403(this.data);

factory ProjectsListForUserError403.parse(ApiResponse response) { return ProjectsListForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListForUserError$Unknown extends ProjectsListForUserError {const ProjectsListForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListForUserError.unknown($statusCode)'; } 
 }
