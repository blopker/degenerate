// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2/{project_number}/views/{view_number}/items`.
sealed class ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsListViewItemsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListViewItemsForOrgError304.parse(response),
  401 => ProjectsListViewItemsForOrgError401.parse(response),
  403 => ProjectsListViewItemsForOrgError403.parse(response),
  404 => ProjectsListViewItemsForOrgError404.parse(response),
  _ => ProjectsListViewItemsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListViewItemsForOrgError304 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError304();

factory ProjectsListViewItemsForOrgError304.parse(ApiResponse _) { return const ProjectsListViewItemsForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListViewItemsForOrgError304; } 
@override int get hashCode { return (ProjectsListViewItemsForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListViewItemsForOrgError401 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError401(this.data);

factory ProjectsListViewItemsForOrgError401.parse(ApiResponse response) { return ProjectsListViewItemsForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListViewItemsForOrgError403 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError403(this.data);

factory ProjectsListViewItemsForOrgError403.parse(ApiResponse response) { return ProjectsListViewItemsForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsListViewItemsForOrgError404 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError404(this.data);

factory ProjectsListViewItemsForOrgError404.parse(ApiResponse response) { return ProjectsListViewItemsForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListViewItemsForOrgError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListViewItemsForOrgError$Unknown extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListViewItemsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListViewItemsForOrgError.unknown($statusCode)'; } 
 }
