// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsUpdateItemForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ProjectsUpdateItemForOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ProjectsUpdateItemForOrgErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class ProjectsUpdateItemForOrgError401 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsUpdateItemForOrgError403 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ProjectsUpdateItemForOrgError404 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ProjectsUpdateItemForOrgError422 extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsUpdateItemForOrgErrorUnknown extends ProjectsUpdateItemForOrgError {const ProjectsUpdateItemForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
