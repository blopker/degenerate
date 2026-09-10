// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitDeleteRefError {const GitDeleteRefError();

/// Decodes the payload for its declared status and content type.
static GitDeleteRefError parse(ApiResponse response) {switch (response.statusCode) {
case 409:
final json = jsonDecode(response.body);
return GitDeleteRefError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const GitDeleteRefError422();
default:
return GitDeleteRefErrorUnknown(response);
}
}
}
/// Response for 409 (application/json).
final class GitDeleteRefError409 extends GitDeleteRefError {const GitDeleteRefError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class GitDeleteRefError422 extends GitDeleteRefError {const GitDeleteRefError422();

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitDeleteRefErrorUnknown extends GitDeleteRefError {const GitDeleteRefErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
