// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsGetUserItemError {const ProjectsGetUserItemError();

/// Decodes the payload for its declared status and content type.
static ProjectsGetUserItemError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsGetUserItemError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsGetUserItemError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsGetUserItemError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsGetUserItemErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsGetUserItemError304 extends ProjectsGetUserItemError {const ProjectsGetUserItemError304();

}
/// Response for 401 (application/json).
final class ProjectsGetUserItemError401 extends ProjectsGetUserItemError {const ProjectsGetUserItemError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsGetUserItemError403 extends ProjectsGetUserItemError {const ProjectsGetUserItemError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsGetUserItemErrorUnknown extends ProjectsGetUserItemError {const ProjectsGetUserItemErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
