// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_unpin_comment_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesUnpinCommentError {const IssuesUnpinCommentError();

/// Decodes the payload for its declared status and content type.
static IssuesUnpinCommentError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return IssuesUnpinCommentError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return IssuesUnpinCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesUnpinCommentError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesUnpinCommentError410(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return IssuesUnpinCommentError503(IssuesUnpinCommentResponse503.fromJson(json as Map<String, dynamic>));
default:
return IssuesUnpinCommentErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class IssuesUnpinCommentError401 extends IssuesUnpinCommentError {const IssuesUnpinCommentError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class IssuesUnpinCommentError403 extends IssuesUnpinCommentError {const IssuesUnpinCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class IssuesUnpinCommentError404 extends IssuesUnpinCommentError {const IssuesUnpinCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 410 (application/json).
final class IssuesUnpinCommentError410 extends IssuesUnpinCommentError {const IssuesUnpinCommentError410(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class IssuesUnpinCommentError503 extends IssuesUnpinCommentError {const IssuesUnpinCommentError503(this.data);

/// The decoded response payload.
final IssuesUnpinCommentResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesUnpinCommentErrorUnknown extends IssuesUnpinCommentError {const IssuesUnpinCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
