// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/projectsV2/{project_number}/views`.
sealed class ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError();

/// Parse the variant matching the response status code.
factory ProjectsCreateViewForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ProjectsCreateViewForOrgError304.parse(response),
  401 => ProjectsCreateViewForOrgError401.parse(response),
  403 => ProjectsCreateViewForOrgError403.parse(response),
  404 => ProjectsCreateViewForOrgError404.parse(response),
  422 => ProjectsCreateViewForOrgError422.parse(response),
  503 => ProjectsCreateViewForOrgError503.parse(response),
  _ => ProjectsCreateViewForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ProjectsCreateViewForOrgError304 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError304();

factory ProjectsCreateViewForOrgError304.parse(ApiResponse _) { return const ProjectsCreateViewForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ProjectsCreateViewForOrgError304; } 
@override int get hashCode { return (ProjectsCreateViewForOrgError304).hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError304()'; } 
 }
/// The `401` response.
@immutable final class ProjectsCreateViewForOrgError401 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError401(this.data);

factory ProjectsCreateViewForOrgError401.parse(ApiResponse response) { return ProjectsCreateViewForOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class ProjectsCreateViewForOrgError403 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError403(this.data);

factory ProjectsCreateViewForOrgError403.parse(ApiResponse response) { return ProjectsCreateViewForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class ProjectsCreateViewForOrgError404 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError404(this.data);

factory ProjectsCreateViewForOrgError404.parse(ApiResponse response) { return ProjectsCreateViewForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class ProjectsCreateViewForOrgError422 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError422(this.data);

factory ProjectsCreateViewForOrgError422.parse(ApiResponse response) { return ProjectsCreateViewForOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError422($data)'; } 
 }
/// The `503` response.
@immutable final class ProjectsCreateViewForOrgError503 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError503(this.data);

factory ProjectsCreateViewForOrgError503.parse(ApiResponse response) { return ProjectsCreateViewForOrgError503(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ProjectsCreateViewForOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ProjectsCreateViewForOrgError$Unknown extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsCreateViewForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ProjectsCreateViewForOrgError.unknown($statusCode)'; } 
 }
