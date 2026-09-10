// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsSubmitReviewError {const PullsSubmitReviewError();

/// Decodes the payload for its declared status and content type.
static PullsSubmitReviewError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  PullsSubmitReviewError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  PullsSubmitReviewError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  PullsSubmitReviewError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  PullsSubmitReviewErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class PullsSubmitReviewError403 extends PullsSubmitReviewError {const PullsSubmitReviewError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class PullsSubmitReviewError404 extends PullsSubmitReviewError {const PullsSubmitReviewError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class PullsSubmitReviewError422 extends PullsSubmitReviewError {const PullsSubmitReviewError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsSubmitReviewErrorUnknown extends PullsSubmitReviewError {const PullsSubmitReviewErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
