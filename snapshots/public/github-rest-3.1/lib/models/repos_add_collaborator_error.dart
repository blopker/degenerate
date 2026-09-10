// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposAddCollaboratorError {const ReposAddCollaboratorError();

/// Decodes the payload for its declared status and content type.
static ReposAddCollaboratorError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ReposAddCollaboratorError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposAddCollaboratorError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposAddCollaboratorErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ReposAddCollaboratorError403 extends ReposAddCollaboratorError {const ReposAddCollaboratorError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposAddCollaboratorError422 extends ReposAddCollaboratorError {const ReposAddCollaboratorError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposAddCollaboratorErrorUnknown extends ReposAddCollaboratorError {const ReposAddCollaboratorErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
