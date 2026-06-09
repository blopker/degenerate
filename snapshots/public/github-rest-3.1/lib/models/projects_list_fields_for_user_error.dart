// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}/fields`.
sealed class ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError();

/// Parse the variant matching the response status code.
factory ProjectsListFieldsForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListFieldsForUserError304.parse(response),
  401 => ProjectsListFieldsForUserError401.parse(response),
  403 => ProjectsListFieldsForUserError403.parse(response),
  _ => ProjectsListFieldsForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListFieldsForUserError304 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError304();

factory ProjectsListFieldsForUserError304.parse(ApiResponse _) { return const ProjectsListFieldsForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListFieldsForUserError304; } 
@override int get hashCode { return (ProjectsListFieldsForUserError304).hashCode; } 
@override String toString() { return 'ProjectsListFieldsForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListFieldsForUserError401 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError401(this.data);

factory ProjectsListFieldsForUserError401.parse(ApiResponse response) { return ProjectsListFieldsForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListFieldsForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListFieldsForUserError403 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError403(this.data);

factory ProjectsListFieldsForUserError403.parse(ApiResponse response) { return ProjectsListFieldsForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListFieldsForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListFieldsForUserError$Unknown extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListFieldsForUserError.unknown($statusCode)'; } 
 }
