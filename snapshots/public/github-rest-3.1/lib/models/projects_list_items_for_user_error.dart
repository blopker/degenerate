// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListItemsForUserError {const ProjectsListItemsForUserError();

/// Decodes the payload for its declared status and content type.
static ProjectsListItemsForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsListItemsForUserError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsListItemsForUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsListItemsForUserError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsListItemsForUserErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsListItemsForUserError304 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError304();

}
/// Response for 401 (application/json).
final class ProjectsListItemsForUserError401 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListItemsForUserError403 extends ProjectsListItemsForUserError {const ProjectsListItemsForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListItemsForUserErrorUnknown extends ProjectsListItemsForUserError {const ProjectsListItemsForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
