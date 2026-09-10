// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsCreateError {const PullsCreateError();

/// Decodes the payload for its declared status and content type.
static PullsCreateError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  PullsCreateError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  PullsCreateError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  PullsCreateErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class PullsCreateError403 extends PullsCreateError {const PullsCreateError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class PullsCreateError422 extends PullsCreateError {const PullsCreateError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsCreateErrorUnknown extends PullsCreateError {const PullsCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
