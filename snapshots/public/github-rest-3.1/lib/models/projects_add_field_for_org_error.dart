// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/projectsV2/{project_number}/fields`.
sealed class ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsAddFieldForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsAddFieldForOrgError304.parse(response),
  401 => ProjectsAddFieldForOrgError401.parse(response),
  403 => ProjectsAddFieldForOrgError403.parse(response),
  422 => ProjectsAddFieldForOrgError422.parse(response),
  _ => ProjectsAddFieldForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsAddFieldForOrgError304 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError304();

factory ProjectsAddFieldForOrgError304.parse(ApiResponse _) { return const ProjectsAddFieldForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsAddFieldForOrgError304; } 
@override int get hashCode { return (ProjectsAddFieldForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsAddFieldForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsAddFieldForOrgError401 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError401(this.data);

factory ProjectsAddFieldForOrgError401.parse(ApiResponse response) { return ProjectsAddFieldForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsAddFieldForOrgError403 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError403(this.data);

factory ProjectsAddFieldForOrgError403.parse(ApiResponse response) { return ProjectsAddFieldForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForOrgError403($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsAddFieldForOrgError422 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError422(this.data);

factory ProjectsAddFieldForOrgError422.parse(ApiResponse response) { return ProjectsAddFieldForOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsAddFieldForOrgError$Unknown extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsAddFieldForOrgError.unknown($statusCode)'; } 
 }
