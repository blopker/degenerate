// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'git_create_blob_response422.dart';import 'repository_rule_violation_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitCreateBlobError {const GitCreateBlobError();

/// Decodes the payload for its declared status and content type.
static GitCreateBlobError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return GitCreateBlobError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GitCreateBlobError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return GitCreateBlobError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitCreateBlobError422(OneOf2.parse(json, fromA: (v) => ValidationError.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryRuleViolationError.fromJson(v as Map<String, dynamic>),));
default:
return GitCreateBlobErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class GitCreateBlobError403 extends GitCreateBlobError {const GitCreateBlobError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class GitCreateBlobError404 extends GitCreateBlobError {const GitCreateBlobError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class GitCreateBlobError409 extends GitCreateBlobError {const GitCreateBlobError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class GitCreateBlobError422 extends GitCreateBlobError {const GitCreateBlobError422(this.data);

/// The decoded response payload.
final GitCreateBlobResponse422 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GitCreateBlobErrorUnknown extends GitCreateBlobError {const GitCreateBlobErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
