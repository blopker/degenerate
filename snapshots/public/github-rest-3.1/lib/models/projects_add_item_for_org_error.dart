// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /orgs/{org}/projectsV2/{project_number}/items`.
sealed class ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsAddItemForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsAddItemForOrgError304.parse(response),
  401 => ProjectsAddItemForOrgError401.parse(response),
  403 => ProjectsAddItemForOrgError403.parse(response),
  _ => ProjectsAddItemForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsAddItemForOrgError304 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError304();

factory ProjectsAddItemForOrgError304.parse(ApiResponse _) { return const ProjectsAddItemForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsAddItemForOrgError304; } 
@override int get hashCode { return (ProjectsAddItemForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsAddItemForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsAddItemForOrgError401 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError401(this.data);

factory ProjectsAddItemForOrgError401.parse(ApiResponse response) { return ProjectsAddItemForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddItemForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsAddItemForOrgError403 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError403(this.data);

factory ProjectsAddItemForOrgError403.parse(ApiResponse response) { return ProjectsAddItemForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsAddItemForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsAddItemForOrgError$Unknown extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddItemForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsAddItemForOrgError.unknown($statusCode)'; } 
 }
