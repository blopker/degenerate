// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GitGetBlobError {const GitGetBlobError();

/// Decodes the payload for its declared status and content type.
static GitGetBlobError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return GitGetBlobError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GitGetBlobError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return GitGetBlobError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GitGetBlobError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GitGetBlobErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class GitGetBlobError403 extends GitGetBlobError {const GitGetBlobError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GitGetBlobError404 extends GitGetBlobError {const GitGetBlobError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class GitGetBlobError409 extends GitGetBlobError {const GitGetBlobError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GitGetBlobError422 extends GitGetBlobError {const GitGetBlobError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GitGetBlobErrorUnknown extends GitGetBlobError {const GitGetBlobErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
