// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitCreateTagError {const GitCreateTagError();

/// Decodes the payload for its declared status and content type.
static GitCreateTagError parse(ApiResponse response) {switch (response.statusCode) {
case 409:
final json = jsonDecode(response.body);
return GitCreateTagError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitCreateTagError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GitCreateTagErrorUnknown(response);
}
}
}
/// Response for 409 (application/json).
final class GitCreateTagError409 extends GitCreateTagError {const GitCreateTagError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GitCreateTagError422 extends GitCreateTagError {const GitCreateTagError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitCreateTagErrorUnknown extends GitCreateTagError {const GitCreateTagErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
