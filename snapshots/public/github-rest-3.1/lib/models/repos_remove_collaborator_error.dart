// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError();

/// Decodes the payload for its declared status and content type.
static ReposRemoveCollaboratorError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ReposRemoveCollaboratorError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposRemoveCollaboratorError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposRemoveCollaboratorErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ReposRemoveCollaboratorError403 extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposRemoveCollaboratorError422 extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposRemoveCollaboratorErrorUnknown extends ReposRemoveCollaboratorError {const ReposRemoveCollaboratorErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
