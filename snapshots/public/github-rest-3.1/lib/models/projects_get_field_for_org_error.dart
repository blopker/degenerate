// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}/fields/{field_id}`.
sealed class ProjectsGetFieldForOrgError {const ProjectsGetFieldForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsGetFieldForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetFieldForOrgError304.parse(response),
  401 => ProjectsGetFieldForOrgError401.parse(response),
  403 => ProjectsGetFieldForOrgError403.parse(response),
  _ => ProjectsGetFieldForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetFieldForOrgError304 extends ProjectsGetFieldForOrgError {const ProjectsGetFieldForOrgError304();

factory ProjectsGetFieldForOrgError304.parse(ApiResponse _) { return const ProjectsGetFieldForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetFieldForOrgError304; } 
@override int get hashCode { return (ProjectsGetFieldForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsGetFieldForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetFieldForOrgError401 extends ProjectsGetFieldForOrgError {const ProjectsGetFieldForOrgError401(this.data);

factory ProjectsGetFieldForOrgError401.parse(ApiResponse response) { return ProjectsGetFieldForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetFieldForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetFieldForOrgError403 extends ProjectsGetFieldForOrgError {const ProjectsGetFieldForOrgError403(this.data);

factory ProjectsGetFieldForOrgError403.parse(ApiResponse response) { return ProjectsGetFieldForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetFieldForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetFieldForOrgError$Unknown extends ProjectsGetFieldForOrgError {const ProjectsGetFieldForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetFieldForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetFieldForOrgError.unknown($statusCode)'; } 
 }
