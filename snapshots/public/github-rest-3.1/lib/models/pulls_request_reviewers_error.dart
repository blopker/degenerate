// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsRequestReviewersError {const PullsRequestReviewersError();

/// Decodes the payload for its declared status and content type.
static PullsRequestReviewersError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return PullsRequestReviewersError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const PullsRequestReviewersError422();
default:
return PullsRequestReviewersErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class PullsRequestReviewersError403 extends PullsRequestReviewersError {const PullsRequestReviewersError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class PullsRequestReviewersError422 extends PullsRequestReviewersError {const PullsRequestReviewersError422();

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsRequestReviewersErrorUnknown extends PullsRequestReviewersError {const PullsRequestReviewersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
