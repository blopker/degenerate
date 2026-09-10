// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsAddItemForUserError {const ProjectsAddItemForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsAddItemForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsAddItemForUserError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsAddItemForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsAddItemForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsAddItemForUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsAddItemForUserError304 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsAddItemForUserError401 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsAddItemForUserError403 extends ProjectsAddItemForUserError {const ProjectsAddItemForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsAddItemForUserErrorUnknown extends ProjectsAddItemForUserError {const ProjectsAddItemForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
