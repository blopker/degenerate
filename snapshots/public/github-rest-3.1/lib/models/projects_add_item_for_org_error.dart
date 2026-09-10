// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsAddItemForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsAddItemForOrgError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsAddItemForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsAddItemForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsAddItemForOrgErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsAddItemForOrgError304 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsAddItemForOrgError401 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsAddItemForOrgError403 extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsAddItemForOrgErrorUnknown extends ProjectsAddItemForOrgError {const ProjectsAddItemForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
