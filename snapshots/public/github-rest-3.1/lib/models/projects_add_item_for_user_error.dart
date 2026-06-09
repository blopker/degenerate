// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /users/{username}/projectsV2/{project_number}/items`.
sealed class ProjectsAddItemForUserError {const ProjectsAddItemForUserError();

/// Parse the variant matching the response status code.
factory ProjectsAddItemForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsAddItemForUserError304.parse(response),
  401 => ProjectsAddItemForUserError401.parse(response),
  403 => ProjectsAddItemForUserError403.parse(response),
  _ => ProjectsAddItemForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsAddItemForUserError304 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError304();

factory ProjectsAddItemForUserError304.parse(ApiResponse _) { return const ProjectsAddItemForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsAddItemForUserError304; } 
@override int get hashCode { return (ProjectsAddItemForUserError304).hashCode; } 
@override String toString() { return 'ProjectsAddItemForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsAddItemForUserError401 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError401(this.data);

factory ProjectsAddItemForUserError401.parse(ApiResponse response) { return ProjectsAddItemForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddItemForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsAddItemForUserError403 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError403(this.data);

factory ProjectsAddItemForUserError403.parse(ApiResponse response) { return ProjectsAddItemForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddItemForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsAddItemForUserError$Unknown extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsAddItemForUserError.unknown($statusCode)'; } 
 }
