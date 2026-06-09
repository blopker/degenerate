// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/projectsV2`.
sealed class ProjectsListForOrgError {const ProjectsListForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsListForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsListForOrgError304.parse(response),
  401 => ProjectsListForOrgError401.parse(response),
  403 => ProjectsListForOrgError403.parse(response),
  _ => ProjectsListForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsListForOrgError304 extends ProjectsListForOrgError {const ProjectsListForOrgError304();

factory ProjectsListForOrgError304.parse(ApiResponse _) { return const ProjectsListForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsListForOrgError304; } 
@override int get hashCode { return (ProjectsListForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsListForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsListForOrgError401 extends ProjectsListForOrgError {const ProjectsListForOrgError401(this.data);

factory ProjectsListForOrgError401.parse(ApiResponse response) { return ProjectsListForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsListForOrgError403 extends ProjectsListForOrgError {const ProjectsListForOrgError403(this.data);

factory ProjectsListForOrgError403.parse(ApiResponse response) { return ProjectsListForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsListForOrgError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsListForOrgError$Unknown extends ProjectsListForOrgError {const ProjectsListForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsListForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsListForOrgError.unknown($statusCode)'; } 
 }
