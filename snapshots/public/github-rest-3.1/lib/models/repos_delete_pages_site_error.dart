// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposDeletePagesSiteError {const ReposDeletePagesSiteError();

/// Decodes the payload for its declared status and content type.
static ReposDeletePagesSiteError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposDeletePagesSiteError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ReposDeletePagesSiteError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposDeletePagesSiteError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposDeletePagesSiteErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ReposDeletePagesSiteError404 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposDeletePagesSiteError409 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposDeletePagesSiteError422 extends ReposDeletePagesSiteError {const ReposDeletePagesSiteError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposDeletePagesSiteErrorUnknown extends ReposDeletePagesSiteError {const ReposDeletePagesSiteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
