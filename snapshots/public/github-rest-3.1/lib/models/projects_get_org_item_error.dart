// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsGetOrgItemError {const ProjectsGetOrgItemError();

/// Decodes the payload for its declared status and content type.
static ProjectsGetOrgItemError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsGetOrgItemError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsGetOrgItemError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsGetOrgItemError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsGetOrgItemErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsGetOrgItemError304 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError304();

}
/// Response for 401 (application/json).
final class ProjectsGetOrgItemError401 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsGetOrgItemError403 extends ProjectsGetOrgItemError {const ProjectsGetOrgItemError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsGetOrgItemErrorUnknown extends ProjectsGetOrgItemError {const ProjectsGetOrgItemErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
