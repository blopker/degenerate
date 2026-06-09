// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}`.
sealed class ProjectsGetForOrgError {const ProjectsGetForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsGetForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetForOrgError304.parse(response),
  401 => ProjectsGetForOrgError401.parse(response),
  403 => ProjectsGetForOrgError403.parse(response),
  _ => ProjectsGetForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetForOrgError304 extends ProjectsGetForOrgError {const ProjectsGetForOrgError304();

factory ProjectsGetForOrgError304.parse(ApiResponse _) { return const ProjectsGetForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetForOrgError304; } 
@override int get hashCode { return (ProjectsGetForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsGetForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetForOrgError401 extends ProjectsGetForOrgError {const ProjectsGetForOrgError401(this.data);

factory ProjectsGetForOrgError401.parse(ApiResponse response) { return ProjectsGetForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetForOrgError403 extends ProjectsGetForOrgError {const ProjectsGetForOrgError403(this.data);

factory ProjectsGetForOrgError403.parse(ApiResponse response) { return ProjectsGetForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetForOrgError$Unknown extends ProjectsGetForOrgError {const ProjectsGetForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetForOrgError.unknown($statusCode)'; } 
 }
