// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/projectsV2/{project_number}/items/{item_id}`.
sealed class ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsUpdateItemForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => ProjectsUpdateItemForOrgError401.parse(response),
  403 => ProjectsUpdateItemForOrgError403.parse(response),
  404 => ProjectsUpdateItemForOrgError404.parse(response),
  422 => ProjectsUpdateItemForOrgError422.parse(response),
  _ => ProjectsUpdateItemForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class ProjectsUpdateItemForOrgError401 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError401(this.data);

factory ProjectsUpdateItemForOrgError401.parse(ApiResponse response) { return ProjectsUpdateItemForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsUpdateItemForOrgError403 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError403(this.data);

factory ProjectsUpdateItemForOrgError403.parse(ApiResponse response) { return ProjectsUpdateItemForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsUpdateItemForOrgError404 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError404(this.data);

factory ProjectsUpdateItemForOrgError404.parse(ApiResponse response) { return ProjectsUpdateItemForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsUpdateItemForOrgError422 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError422(this.data);

factory ProjectsUpdateItemForOrgError422.parse(ApiResponse response) { return ProjectsUpdateItemForOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsUpdateItemForOrgError$Unknown extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsUpdateItemForOrgError.unknown($statusCode)'; } 
 }
