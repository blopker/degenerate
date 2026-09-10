// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsListViewItemsForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ProjectsListViewItemsForOrgError304();
case 401:
final json = jsonDecode(response.body);
return ProjectsListViewItemsForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsListViewItemsForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ProjectsListViewItemsForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsListViewItemsForOrgErrorUnknown(response);
}
}
}
/// Response for 304.
final class ProjectsListViewItemsForOrgError304 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsListViewItemsForOrgError401 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsListViewItemsForOrgError403 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ProjectsListViewItemsForOrgError404 extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsListViewItemsForOrgErrorUnknown extends ProjectsListViewItemsForOrgError {const ProjectsListViewItemsForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
