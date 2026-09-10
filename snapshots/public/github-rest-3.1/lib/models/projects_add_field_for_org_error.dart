// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsAddFieldForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsAddFieldForOrgError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsAddFieldForOrgErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsAddFieldForOrgError304 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsAddFieldForOrgError401 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsAddFieldForOrgError403 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ProjectsAddFieldForOrgError422 extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsAddFieldForOrgErrorUnknown extends ProjectsAddFieldForOrgError {const ProjectsAddFieldForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
