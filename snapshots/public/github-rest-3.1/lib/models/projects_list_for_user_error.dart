// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListForUserError {const ProjectsListForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsListForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsListForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListForUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsListForUserError304 extends ProjectsListForUserError {const ProjectsListForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsListForUserError401 extends ProjectsListForUserError {const ProjectsListForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListForUserError403 extends ProjectsListForUserError {const ProjectsListForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListForUserErrorUnknown extends ProjectsListForUserError {const ProjectsListForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
