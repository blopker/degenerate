// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}/items`.
sealed class ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsListItemsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListItemsForOrgError304.parse(response),
  401 => ProjectsListItemsForOrgError401.parse(response),
  403 => ProjectsListItemsForOrgError403.parse(response),
  _ => ProjectsListItemsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListItemsForOrgError304 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError304();

factory ProjectsListItemsForOrgError304.parse(ApiResponse _) { return const ProjectsListItemsForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListItemsForOrgError304; } 
@override int get hashCode { return (ProjectsListItemsForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsListItemsForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListItemsForOrgError401 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError401(this.data);

factory ProjectsListItemsForOrgError401.parse(ApiResponse response) { return ProjectsListItemsForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListItemsForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListItemsForOrgError403 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError403(this.data);

factory ProjectsListItemsForOrgError403.parse(ApiResponse response) { return ProjectsListItemsForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListItemsForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListItemsForOrgError$Unknown extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListItemsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListItemsForOrgError.unknown($statusCode)'; } 
 }
