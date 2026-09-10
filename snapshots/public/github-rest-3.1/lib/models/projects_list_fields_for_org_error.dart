// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsListFieldsForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsListFieldsForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListFieldsForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListFieldsForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListFieldsForOrgErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsListFieldsForOrgError304 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsListFieldsForOrgError401 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListFieldsForOrgError403 extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListFieldsForOrgErrorUnknown extends ProjectsListFieldsForOrgError {const ProjectsListFieldsForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
