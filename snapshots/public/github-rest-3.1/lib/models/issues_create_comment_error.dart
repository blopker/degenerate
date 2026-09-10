// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesCreateCommentError {const IssuesCreateCommentError();

/// Decodes the payload for its declared status and content type.
static IssuesCreateCommentError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return IssuesCreateCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesCreateCommentError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesCreateCommentError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesCreateCommentError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesCreateCommentErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class IssuesCreateCommentError403 extends IssuesCreateCommentError {const IssuesCreateCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesCreateCommentError404 extends IssuesCreateCommentError {const IssuesCreateCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesCreateCommentError410 extends IssuesCreateCommentError {const IssuesCreateCommentError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesCreateCommentError422 extends IssuesCreateCommentError {const IssuesCreateCommentError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesCreateCommentErrorUnknown extends IssuesCreateCommentError {const IssuesCreateCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
