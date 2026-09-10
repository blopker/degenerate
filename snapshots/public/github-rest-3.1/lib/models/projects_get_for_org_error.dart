// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsGetForOrgError {const ProjectsGetForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsGetForOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsGetForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsGetForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsGetForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsGetForOrgErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsGetForOrgError304 extends ProjectsGetForOrgError {const ProjectsGetForOrgError304();

 }
/// Response for 401 (application/json).
final class ProjectsGetForOrgError401 extends ProjectsGetForOrgError {const ProjectsGetForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsGetForOrgError403 extends ProjectsGetForOrgError {const ProjectsGetForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsGetForOrgErrorUnknown extends ProjectsGetForOrgError {const ProjectsGetForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
