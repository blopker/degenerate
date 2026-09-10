// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsCreateViewForUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsCreateViewForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsCreateViewForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsCreateViewForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ProjectsCreateViewForUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ProjectsCreateViewForUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return ProjectsCreateViewForUserError503(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsCreateViewForUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsCreateViewForUserError304 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError304();

 }
/// Response for 401 (application/json).
final class ProjectsCreateViewForUserError401 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsCreateViewForUserError403 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ProjectsCreateViewForUserError404 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ProjectsCreateViewForUserError422 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 503 (application/json).
final class ProjectsCreateViewForUserError503 extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserError503(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsCreateViewForUserErrorUnknown extends ProjectsCreateViewForUserError {const ProjectsCreateViewForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
