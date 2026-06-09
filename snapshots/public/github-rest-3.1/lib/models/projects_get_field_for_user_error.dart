// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}/fields/{field_id}`.
sealed class ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError();

/// Parse the variant matching the response status code.
factory ProjectsGetFieldForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetFieldForUserError304.parse(response),
  401 => ProjectsGetFieldForUserError401.parse(response),
  403 => ProjectsGetFieldForUserError403.parse(response),
  _ => ProjectsGetFieldForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetFieldForUserError304 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError304();

factory ProjectsGetFieldForUserError304.parse(ApiResponse _) { return const ProjectsGetFieldForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetFieldForUserError304; } 
@override int get hashCode { return (ProjectsGetFieldForUserError304).hashCode; } 
@override String toString() { return 'ProjectsGetFieldForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetFieldForUserError401 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError401(this.data);

factory ProjectsGetFieldForUserError401.parse(ApiResponse response) { return ProjectsGetFieldForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetFieldForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetFieldForUserError403 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError403(this.data);

factory ProjectsGetFieldForUserError403.parse(ApiResponse response) { return ProjectsGetFieldForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetFieldForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetFieldForUserError$Unknown extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetFieldForUserError.unknown($statusCode)'; } 
 }
