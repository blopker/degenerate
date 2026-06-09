// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /users/{username}/projectsV2/{project_number}/items/{item_id}`.
sealed class ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError();

/// Parse the variant matching the response status code.
factory ProjectsUpdateItemForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => ProjectsUpdateItemForUserError401.parse(response),
  403 => ProjectsUpdateItemForUserError403.parse(response),
  404 => ProjectsUpdateItemForUserError404.parse(response),
  422 => ProjectsUpdateItemForUserError422.parse(response),
  _ => ProjectsUpdateItemForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class ProjectsUpdateItemForUserError401 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError401(this.data);

factory ProjectsUpdateItemForUserError401.parse(ApiResponse response) { return ProjectsUpdateItemForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsUpdateItemForUserError403 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError403(this.data);

factory ProjectsUpdateItemForUserError403.parse(ApiResponse response) { return ProjectsUpdateItemForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsUpdateItemForUserError404 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError404(this.data);

factory ProjectsUpdateItemForUserError404.parse(ApiResponse response) { return ProjectsUpdateItemForUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsUpdateItemForUserError422 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError422(this.data);

factory ProjectsUpdateItemForUserError422.parse(ApiResponse response) { return ProjectsUpdateItemForUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsUpdateItemForUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsUpdateItemForUserError$Unknown extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsUpdateItemForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsUpdateItemForUserError.unknown($statusCode)'; } 
 }
