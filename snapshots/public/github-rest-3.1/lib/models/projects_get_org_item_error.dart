// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}/items/{item_id}`.
sealed class ProjectsGetOrgItemError {const ProjectsGetOrgItemError();

/// Parse the variant matching the response status code.
factory ProjectsGetOrgItemError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetOrgItemError304.parse(response),
  401 => ProjectsGetOrgItemError401.parse(response),
  403 => ProjectsGetOrgItemError403.parse(response),
  _ => ProjectsGetOrgItemError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetOrgItemError304 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError304();

factory ProjectsGetOrgItemError304.parse(ApiResponse _) { return const ProjectsGetOrgItemError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetOrgItemError304; } 
@override int get hashCode { return (ProjectsGetOrgItemError304).hashCode; } 
@override String toString() { return 'ProjectsGetOrgItemError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetOrgItemError401 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError401(this.data);

factory ProjectsGetOrgItemError401.parse(ApiResponse response) { return ProjectsGetOrgItemError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetOrgItemError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetOrgItemError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetOrgItemError403 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError403(this.data);

factory ProjectsGetOrgItemError403.parse(ApiResponse response) { return ProjectsGetOrgItemError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetOrgItemError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetOrgItemError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetOrgItemError$Unknown extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetOrgItemError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetOrgItemError.unknown($statusCode)'; } 
 }
