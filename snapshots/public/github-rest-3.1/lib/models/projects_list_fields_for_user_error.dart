// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsListFieldsForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsListFieldsForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListFieldsForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListFieldsForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListFieldsForUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsListFieldsForUserError304 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsListFieldsForUserError401 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListFieldsForUserError403 extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListFieldsForUserErrorUnknown extends ProjectsListFieldsForUserError {const ProjectsListFieldsForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
