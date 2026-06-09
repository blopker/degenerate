// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}`.
sealed class ProjectsGetForUserError {const ProjectsGetForUserError();

/// Parse the variant matching the response status code.
factory ProjectsGetForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetForUserError304.parse(response),
  401 => ProjectsGetForUserError401.parse(response),
  403 => ProjectsGetForUserError403.parse(response),
  _ => ProjectsGetForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetForUserError304 extends ProjectsGetForUserError {const ProjectsGetForUserError304();

factory ProjectsGetForUserError304.parse(ApiResponse _) { return const ProjectsGetForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetForUserError304; } 
@override int get hashCode { return (ProjectsGetForUserError304).hashCode; } 
@override String toString() { return 'ProjectsGetForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetForUserError401 extends ProjectsGetForUserError {const ProjectsGetForUserError401(this.data);

factory ProjectsGetForUserError401.parse(ApiResponse response) { return ProjectsGetForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetForUserError403 extends ProjectsGetForUserError {const ProjectsGetForUserError403(this.data);

factory ProjectsGetForUserError403.parse(ApiResponse response) { return ProjectsGetForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetForUserError$Unknown extends ProjectsGetForUserError {const ProjectsGetForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetForUserError.unknown($statusCode)'; } 
 }
