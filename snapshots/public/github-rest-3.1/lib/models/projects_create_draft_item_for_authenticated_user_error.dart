// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsCreateDraftItemForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsCreateDraftItemForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsCreateDraftItemForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsCreateDraftItemForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsCreateDraftItemForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsCreateDraftItemForAuthenticatedUserError304 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class ProjectsCreateDraftItemForAuthenticatedUserError401 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsCreateDraftItemForAuthenticatedUserError403 extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsCreateDraftItemForAuthenticatedUserErrorUnknown extends ProjectsCreateDraftItemForAuthenticatedUserError {const ProjectsCreateDraftItemForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
