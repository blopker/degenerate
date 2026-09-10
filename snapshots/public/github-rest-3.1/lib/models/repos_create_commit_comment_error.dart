// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateCommitCommentError {const ReposCreateCommitCommentError();

/// Decodes the payload for its declared status and content type.
static ReposCreateCommitCommentError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ReposCreateCommitCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreateCommitCommentError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateCommitCommentErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ReposCreateCommitCommentError403 extends ReposCreateCommitCommentError {const ReposCreateCommitCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposCreateCommitCommentError422 extends ReposCreateCommitCommentError {const ReposCreateCommitCommentError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateCommitCommentErrorUnknown extends ReposCreateCommitCommentError {const ReposCreateCommitCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
