// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsListItemsForOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ProjectsListItemsForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListItemsForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListItemsForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListItemsForOrgErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ProjectsListItemsForOrgError304 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError304();

 }
/// Response for 401 (application/json).
final class ProjectsListItemsForOrgError401 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ProjectsListItemsForOrgError403 extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListItemsForOrgErrorUnknown extends ProjectsListItemsForOrgError {const ProjectsListItemsForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
