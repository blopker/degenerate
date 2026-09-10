// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitCreateTreeError {const GitCreateTreeError();

/// Decodes the payload for its declared status and content type.
static GitCreateTreeError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return GitCreateTreeError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GitCreateTreeError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return GitCreateTreeError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitCreateTreeError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GitCreateTreeErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class GitCreateTreeError403 extends GitCreateTreeError {const GitCreateTreeError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GitCreateTreeError404 extends GitCreateTreeError {const GitCreateTreeError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class GitCreateTreeError409 extends GitCreateTreeError {const GitCreateTreeError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GitCreateTreeError422 extends GitCreateTreeError {const GitCreateTreeError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitCreateTreeErrorUnknown extends GitCreateTreeError {const GitCreateTreeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
