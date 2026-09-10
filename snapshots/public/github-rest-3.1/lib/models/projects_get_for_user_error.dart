// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsGetForUserError {const ProjectsGetForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsGetForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsGetForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsGetForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsGetForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsGetForUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsGetForUserError304 extends ProjectsGetForUserError {const ProjectsGetForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsGetForUserError401 extends ProjectsGetForUserError {const ProjectsGetForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsGetForUserError403 extends ProjectsGetForUserError {const ProjectsGetForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsGetForUserErrorUnknown extends ProjectsGetForUserError {const ProjectsGetForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
