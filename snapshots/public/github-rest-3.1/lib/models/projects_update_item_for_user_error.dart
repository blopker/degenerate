// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsUpdateItemForUserError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsUpdateItemForUserErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class ProjectsUpdateItemForUserError401 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsUpdateItemForUserError403 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ProjectsUpdateItemForUserError404 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ProjectsUpdateItemForUserError422 extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsUpdateItemForUserErrorUnknown extends ProjectsUpdateItemForUserError {const ProjectsUpdateItemForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
