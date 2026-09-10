// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListForOrgError {const ProjectsListForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsListForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsListForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListForOrgErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsListForOrgError304 extends ProjectsListForOrgError {const ProjectsListForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsListForOrgError401 extends ProjectsListForOrgError {const ProjectsListForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListForOrgError403 extends ProjectsListForOrgError {const ProjectsListForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListForOrgErrorUnknown extends ProjectsListForOrgError {const ProjectsListForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
