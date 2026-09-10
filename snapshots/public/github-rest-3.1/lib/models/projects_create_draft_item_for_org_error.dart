// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsCreateDraftItemForOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsCreateDraftItemForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsCreateDraftItemForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsCreateDraftItemForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsCreateDraftItemForOrgErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsCreateDraftItemForOrgError304 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError304();

 }
/// Response for 401 (application/json).
final class ProjectsCreateDraftItemForOrgError401 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsCreateDraftItemForOrgError403 extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsCreateDraftItemForOrgErrorUnknown extends ProjectsCreateDraftItemForOrgError {const ProjectsCreateDraftItemForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
