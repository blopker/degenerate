// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}/fields`.
sealed class ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsListFieldsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListFieldsForOrgError304.parse(response),
  401 => ProjectsListFieldsForOrgError401.parse(response),
  403 => ProjectsListFieldsForOrgError403.parse(response),
  _ => ProjectsListFieldsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListFieldsForOrgError304 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError304();

factory ProjectsListFieldsForOrgError304.parse(ApiResponse _) { return const ProjectsListFieldsForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListFieldsForOrgError304; } 
@override int get hashCode { return (ProjectsListFieldsForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsListFieldsForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListFieldsForOrgError401 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError401(this.data);

factory ProjectsListFieldsForOrgError401.parse(ApiResponse response) { return ProjectsListFieldsForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListFieldsForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListFieldsForOrgError403 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError403(this.data);

factory ProjectsListFieldsForOrgError403.parse(ApiResponse response) { return ProjectsListFieldsForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListFieldsForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListFieldsForOrgError$Unknown extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListFieldsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListFieldsForOrgError.unknown($statusCode)'; } 
 }
