// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /user/{user_id}/projectsV2/{project_number}/drafts`.
sealed class ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ProjectsCreateDraftItemForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsCreateDraftItemForAuthenticatedUserError304.parse(response),
  401 => ProjectsCreateDraftItemForAuthenticatedUserError401.parse(response),
  403 => ProjectsCreateDraftItemForAuthenticatedUserError403.parse(response),
  _ => ProjectsCreateDraftItemForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsCreateDraftItemForAuthenticatedUserError304 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError304();

factory ProjectsCreateDraftItemForAuthenticatedUserError304.parse(ApiResponse _) { return const ProjectsCreateDraftItemForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsCreateDraftItemForAuthenticatedUserError304; } 
@override int get hashCode { return (ProjectsCreateDraftItemForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsCreateDraftItemForAuthenticatedUserError401 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError401(this.data);

factory ProjectsCreateDraftItemForAuthenticatedUserError401.parse(ApiResponse response) { return ProjectsCreateDraftItemForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsCreateDraftItemForAuthenticatedUserError403 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError403(this.data);

factory ProjectsCreateDraftItemForAuthenticatedUserError403.parse(ApiResponse response) { return ProjectsCreateDraftItemForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsCreateDraftItemForAuthenticatedUserError$Unknown extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsCreateDraftItemForAuthenticatedUserError.unknown($statusCode)'; } 
 }
