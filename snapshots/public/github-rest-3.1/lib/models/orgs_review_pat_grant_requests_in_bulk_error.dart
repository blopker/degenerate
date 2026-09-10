// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError();

/// Decodes the payload for its declared status and content type.
static OrgsReviewPatGrantRequestsInBulkError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  OrgsReviewPatGrantRequestsInBulkError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  OrgsReviewPatGrantRequestsInBulkError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  OrgsReviewPatGrantRequestsInBulkError422(ValidationError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  OrgsReviewPatGrantRequestsInBulkError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  OrgsReviewPatGrantRequestsInBulkErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class OrgsReviewPatGrantRequestsInBulkError403 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class OrgsReviewPatGrantRequestsInBulkError404 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsReviewPatGrantRequestsInBulkError422 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class OrgsReviewPatGrantRequestsInBulkError500 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsReviewPatGrantRequestsInBulkErrorUnknown extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
