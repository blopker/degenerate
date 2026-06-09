// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /users/{username}/projectsV2/{project_number}/items/{item_id}`.
sealed class ProjectsGetUserItemError {const ProjectsGetUserItemError();

/// Parse the variant matching the response status code.
factory ProjectsGetUserItemError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsGetUserItemError304.parse(response),
  401 => ProjectsGetUserItemError401.parse(response),
  403 => ProjectsGetUserItemError403.parse(response),
  _ => ProjectsGetUserItemError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsGetUserItemError304 extends ProjectsGetUserItemError {const ProjectsGetUserItemError304();

factory ProjectsGetUserItemError304.parse(ApiResponse _) { return const ProjectsGetUserItemError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsGetUserItemError304; } 
@override int get hashCode { return (ProjectsGetUserItemError304).hashCode; } 
@override String toString() { return 'ProjectsGetUserItemError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsGetUserItemError401 extends ProjectsGetUserItemError {const ProjectsGetUserItemError401(this.data);

factory ProjectsGetUserItemError401.parse(ApiResponse response) { return ProjectsGetUserItemError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetUserItemError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetUserItemError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsGetUserItemError403 extends ProjectsGetUserItemError {const ProjectsGetUserItemError403(this.data);

factory ProjectsGetUserItemError403.parse(ApiResponse response) { return ProjectsGetUserItemError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetUserItemError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsGetUserItemError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsGetUserItemError$Unknown extends ProjectsGetUserItemError {const ProjectsGetUserItemError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsGetUserItemError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsGetUserItemError.unknown($statusCode)'; } 
 }
