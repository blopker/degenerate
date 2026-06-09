// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}/views/{view_number}/items`.
sealed class ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError();

/// Parse the variant matching the response status code.
factory ProjectsListViewItemsForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListViewItemsForUserError304.parse(response),
  401 => ProjectsListViewItemsForUserError401.parse(response),
  403 => ProjectsListViewItemsForUserError403.parse(response),
  404 => ProjectsListViewItemsForUserError404.parse(response),
  _ => ProjectsListViewItemsForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListViewItemsForUserError304 extends ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError304();

factory ProjectsListViewItemsForUserError304.parse(ApiResponse _) { return const ProjectsListViewItemsForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListViewItemsForUserError304; } 
@override int get hashCode { return (ProjectsListViewItemsForUserError304).hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListViewItemsForUserError401 extends ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError401(this.data);

factory ProjectsListViewItemsForUserError401.parse(ApiResponse response) { return ProjectsListViewItemsForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListViewItemsForUserError403 extends ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError403(this.data);

factory ProjectsListViewItemsForUserError403.parse(ApiResponse response) { return ProjectsListViewItemsForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsListViewItemsForUserError404 extends ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError404(this.data);

factory ProjectsListViewItemsForUserError404.parse(ApiResponse response) { return ProjectsListViewItemsForUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListViewItemsForUserError$Unknown extends ProjectsListViewItemsForUserError {const ProjectsListViewItemsForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListViewItemsForUserError.unknown($statusCode)'; } 
 }
