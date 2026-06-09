// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /users/{username}/projectsV2/{project_number}/fields`.
sealed class ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError();

/// Parse the variant matching the response status code.
factory ProjectsAddFieldForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsAddFieldForUserError304.parse(response),
  401 => ProjectsAddFieldForUserError401.parse(response),
  403 => ProjectsAddFieldForUserError403.parse(response),
  422 => ProjectsAddFieldForUserError422.parse(response),
  _ => ProjectsAddFieldForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsAddFieldForUserError304 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError304();

factory ProjectsAddFieldForUserError304.parse(ApiResponse _) { return const ProjectsAddFieldForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsAddFieldForUserError304; } 
@override int get hashCode { return (ProjectsAddFieldForUserError304).hashCode; } 
@override String toString() { return 'ProjectsAddFieldForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsAddFieldForUserError401 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError401(this.data);

factory ProjectsAddFieldForUserError401.parse(ApiResponse response) { return ProjectsAddFieldForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsAddFieldForUserError403 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError403(this.data);

factory ProjectsAddFieldForUserError403.parse(ApiResponse response) { return ProjectsAddFieldForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsAddFieldForUserError422 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError422(this.data);

factory ProjectsAddFieldForUserError422.parse(ApiResponse response) { return ProjectsAddFieldForUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsAddFieldForUserError$Unknown extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsAddFieldForUserError.unknown($statusCode)'; } 
 }
