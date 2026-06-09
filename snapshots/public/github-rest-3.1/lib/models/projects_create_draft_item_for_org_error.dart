// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /orgs/{org}/projectsV2/{project_number}/drafts`.
sealed class ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsCreateDraftItemForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsCreateDraftItemForOrgError304.parse(response),
  401 => ProjectsCreateDraftItemForOrgError401.parse(response),
  403 => ProjectsCreateDraftItemForOrgError403.parse(response),
  _ => ProjectsCreateDraftItemForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsCreateDraftItemForOrgError304 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError304();

factory ProjectsCreateDraftItemForOrgError304.parse(ApiResponse _) { return const ProjectsCreateDraftItemForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsCreateDraftItemForOrgError304; } 
@override int get hashCode { return (ProjectsCreateDraftItemForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsCreateDraftItemForOrgError401 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError401(this.data);

factory ProjectsCreateDraftItemForOrgError401.parse(ApiResponse response) { return ProjectsCreateDraftItemForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsCreateDraftItemForOrgError403 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError403(this.data);

factory ProjectsCreateDraftItemForOrgError403.parse(ApiResponse response) { return ProjectsCreateDraftItemForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateDraftItemForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsCreateDraftItemForOrgError$Unknown extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateDraftItemForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsCreateDraftItemForOrgError.unknown($statusCode)'; } 
 }
