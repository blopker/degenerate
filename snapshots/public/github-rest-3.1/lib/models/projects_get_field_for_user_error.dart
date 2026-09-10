// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsGetFieldForUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsGetFieldForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsGetFieldForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsGetFieldForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsGetFieldForUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsGetFieldForUserError304 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError304();

 }
/// Response for 401 (application/json).
final class ProjectsGetFieldForUserError401 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsGetFieldForUserError403 extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsGetFieldForUserErrorUnknown extends ProjectsGetFieldForUserError {const ProjectsGetFieldForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
