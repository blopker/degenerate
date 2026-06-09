// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /users/{user_id}/projectsV2/{project_number}/views`.
sealed class ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError();

/// Parse the variant matching the response status code.
factory ProjectsCreateViewForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsCreateViewForUserError304.parse(response),
  401 => ProjectsCreateViewForUserError401.parse(response),
  403 => ProjectsCreateViewForUserError403.parse(response),
  404 => ProjectsCreateViewForUserError404.parse(response),
  422 => ProjectsCreateViewForUserError422.parse(response),
  503 => ProjectsCreateViewForUserError503.parse(response),
  _ => ProjectsCreateViewForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsCreateViewForUserError304 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError304();

factory ProjectsCreateViewForUserError304.parse(ApiResponse _) { return const ProjectsCreateViewForUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsCreateViewForUserError304; } 
@override int get hashCode { return (ProjectsCreateViewForUserError304).hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsCreateViewForUserError401 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError401(this.data);

factory ProjectsCreateViewForUserError401.parse(ApiResponse response) { return ProjectsCreateViewForUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsCreateViewForUserError403 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError403(this.data);

factory ProjectsCreateViewForUserError403.parse(ApiResponse response) { return ProjectsCreateViewForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsCreateViewForUserError404 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError404(this.data);

factory ProjectsCreateViewForUserError404.parse(ApiResponse response) { return ProjectsCreateViewForUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsCreateViewForUserError422 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError422(this.data);

factory ProjectsCreateViewForUserError422.parse(ApiResponse response) { return ProjectsCreateViewForUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError422($data)'; } 
 }
/// The `503` response.
@immutable final class ProjectsCreateViewForUserError503 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError503(this.data);

factory ProjectsCreateViewForUserError503.parse(ApiResponse response) { return ProjectsCreateViewForUserError503(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsCreateViewForUserError$Unknown extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsCreateViewForUserError.unknown($statusCode)'; } 
 }
