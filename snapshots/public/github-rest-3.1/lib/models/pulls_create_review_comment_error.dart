// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsCreateReviewCommentError {const PullsCreateReviewCommentError();

/// Decodes the payload for its declared status and content type.
static PullsCreateReviewCommentError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return PullsCreateReviewCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return PullsCreateReviewCommentError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return PullsCreateReviewCommentErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class PullsCreateReviewCommentError403 extends PullsCreateReviewCommentError {const PullsCreateReviewCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class PullsCreateReviewCommentError422 extends PullsCreateReviewCommentError {const PullsCreateReviewCommentError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PullsCreateReviewCommentErrorUnknown extends PullsCreateReviewCommentError {const PullsCreateReviewCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
