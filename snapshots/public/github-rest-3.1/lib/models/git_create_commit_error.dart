// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitCreateCommitError {const GitCreateCommitError();

/// Decodes the payload for its declared status and content type.
static GitCreateCommitError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return GitCreateCommitError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return GitCreateCommitError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitCreateCommitError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GitCreateCommitErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class GitCreateCommitError404 extends GitCreateCommitError {const GitCreateCommitError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class GitCreateCommitError409 extends GitCreateCommitError {const GitCreateCommitError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class GitCreateCommitError422 extends GitCreateCommitError {const GitCreateCommitError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GitCreateCommitErrorUnknown extends GitCreateCommitError {const GitCreateCommitErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
