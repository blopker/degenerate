// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError();

/// Decodes the payload for its declared status and content type.
static ProjectsCreateViewForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ProjectsCreateViewForOrgError304();case 401:
final json = jsonDecode(response.body);
return  ProjectsCreateViewForOrgError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ProjectsCreateViewForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ProjectsCreateViewForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ProjectsCreateViewForOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  ProjectsCreateViewForOrgError503(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ProjectsCreateViewForOrgErrorUnknown(response); }}
}
/// Response for 304.
final class ProjectsCreateViewForOrgError304 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError304();

}
/// Response for 401 (application/json).
final class ProjectsCreateViewForOrgError401 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ProjectsCreateViewForOrgError403 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ProjectsCreateViewForOrgError404 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ProjectsCreateViewForOrgError422 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class ProjectsCreateViewForOrgError503 extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgError503(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ProjectsCreateViewForOrgErrorUnknown extends ProjectsCreateViewForOrgError {const ProjectsCreateViewForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
