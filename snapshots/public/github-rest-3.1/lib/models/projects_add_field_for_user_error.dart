// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsAddFieldForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsAddFieldForUserError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ProjectsAddFieldForUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsAddFieldForUserErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsAddFieldForUserError304 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsAddFieldForUserError401 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsAddFieldForUserError403 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ProjectsAddFieldForUserError422 extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsAddFieldForUserErrorUnknown extends ProjectsAddFieldForUserError {const ProjectsAddFieldForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
