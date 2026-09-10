// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitCreateRefError {const GitCreateRefError();

/// Decodes the payload for its declared status and content type.
static GitCreateRefError parse(ApiResponse response) {switch (response.statusCode) {
case 409:
final json = jsonDecode(response.body);
return  GitCreateRefError409(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  GitCreateRefError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  GitCreateRefErrorUnknown(response); }}
}
/// Response for 409 (application/json).
final class GitCreateRefError409 extends GitCreateRefError {const GitCreateRefError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GitCreateRefError422 extends GitCreateRefError {const GitCreateRefError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitCreateRefErrorUnknown extends GitCreateRefError {const GitCreateRefErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
