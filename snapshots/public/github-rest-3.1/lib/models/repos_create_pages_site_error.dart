// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreatePagesSiteError {const ReposCreatePagesSiteError();

/// Decodes the payload for its declared status and content type.
static ReposCreatePagesSiteError parse(ApiResponse response) {switch (response.statusCode) {
case 409:
final json = jsonDecode(response.body);
return ReposCreatePagesSiteError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreatePagesSiteError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreatePagesSiteErrorUnknown(response);
}
}
}
/// Response for 409 (application/json).
final class ReposCreatePagesSiteError409 extends ReposCreatePagesSiteError {const ReposCreatePagesSiteError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreatePagesSiteError422 extends ReposCreatePagesSiteError {const ReposCreatePagesSiteError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreatePagesSiteErrorUnknown extends ReposCreatePagesSiteError {const ReposCreatePagesSiteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
