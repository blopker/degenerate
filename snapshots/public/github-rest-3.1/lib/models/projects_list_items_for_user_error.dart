// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}/items`.
sealed class ProjectsListItemsForUserError {const ProjectsListItemsForUserError();

/// Parse the variant matching the response status code.
factory ProjectsListItemsForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListItemsForUserError304.parse(response),
  401 => ProjectsListItemsForUserError401.parse(response),
  403 => ProjectsListItemsForUserError403.parse(response),
  _ => ProjectsListItemsForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListItemsForUserError304 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError304();

factory ProjectsListItemsForUserError304.parse(ApiResponse _) { return const ProjectsListItemsForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListItemsForUserError304; } 
@override int get hashCode { return (ProjectsListItemsForUserError304).hashCode; } 
@override String toString() { return 'ProjectsListItemsForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListItemsForUserError401 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError401(this.data);

factory ProjectsListItemsForUserError401.parse(ApiResponse response) { return ProjectsListItemsForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListItemsForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListItemsForUserError403 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError403(this.data);

factory ProjectsListItemsForUserError403.parse(ApiResponse response) { return ProjectsListItemsForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListItemsForUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListItemsForUserError$Unknown extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListItemsForUserError.unknown($statusCode)'; } 
 }
