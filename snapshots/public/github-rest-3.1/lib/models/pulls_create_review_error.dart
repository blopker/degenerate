// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsCreateReviewError {const PullsCreateReviewError();

/// Decodes the payload for its declared status and content type.
static PullsCreateReviewError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return PullsCreateReviewError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return PullsCreateReviewError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return PullsCreateReviewErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class PullsCreateReviewError403 extends PullsCreateReviewError {const PullsCreateReviewError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class PullsCreateReviewError422 extends PullsCreateReviewError {const PullsCreateReviewError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PullsCreateReviewErrorUnknown extends PullsCreateReviewError {const PullsCreateReviewErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
