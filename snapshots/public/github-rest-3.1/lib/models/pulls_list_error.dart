// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsListError {const PullsListError();

/// Decodes the payload for its declared status and content type.
static PullsListError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const PullsListError304();case 422:
final json = jsonDecode(response.body);
return  PullsListError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  PullsListErrorUnknown(response); }}
}
/// Response for 304.
final class PullsListError304 extends PullsListError {const PullsListError304();

}
/// Response for 422 (application/json).
final class PullsListError422 extends PullsListError {const PullsListError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsListErrorUnknown extends PullsListError {const PullsListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
