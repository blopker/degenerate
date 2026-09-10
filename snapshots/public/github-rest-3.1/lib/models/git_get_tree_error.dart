// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitGetTreeError {const GitGetTreeError();

/// Decodes the payload for its declared status and content type.
static GitGetTreeError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return GitGetTreeError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return GitGetTreeError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitGetTreeError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GitGetTreeErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class GitGetTreeError404 extends GitGetTreeError {const GitGetTreeError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class GitGetTreeError409 extends GitGetTreeError {const GitGetTreeError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GitGetTreeError422 extends GitGetTreeError {const GitGetTreeError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitGetTreeErrorUnknown extends GitGetTreeError {const GitGetTreeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
