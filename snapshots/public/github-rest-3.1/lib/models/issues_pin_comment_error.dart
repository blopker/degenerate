// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesPinCommentError {const IssuesPinCommentError();

/// Decodes the payload for its declared status and content type.
static IssuesPinCommentError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return IssuesPinCommentError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return IssuesPinCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesPinCommentError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesPinCommentError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesPinCommentError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesPinCommentErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class IssuesPinCommentError401 extends IssuesPinCommentError {const IssuesPinCommentError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class IssuesPinCommentError403 extends IssuesPinCommentError {const IssuesPinCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesPinCommentError404 extends IssuesPinCommentError {const IssuesPinCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesPinCommentError410 extends IssuesPinCommentError {const IssuesPinCommentError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesPinCommentError422 extends IssuesPinCommentError {const IssuesPinCommentError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesPinCommentErrorUnknown extends IssuesPinCommentError {const IssuesPinCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
