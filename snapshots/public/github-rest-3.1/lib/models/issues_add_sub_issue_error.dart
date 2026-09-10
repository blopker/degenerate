// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesAddSubIssueError {const IssuesAddSubIssueError();

/// Decodes the payload for its declared status and content type.
static IssuesAddSubIssueError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return IssuesAddSubIssueError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesAddSubIssueError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesAddSubIssueError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesAddSubIssueError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesAddSubIssueErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class IssuesAddSubIssueError403 extends IssuesAddSubIssueError {const IssuesAddSubIssueError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class IssuesAddSubIssueError404 extends IssuesAddSubIssueError {const IssuesAddSubIssueError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 410 (application/json).
final class IssuesAddSubIssueError410 extends IssuesAddSubIssueError {const IssuesAddSubIssueError410(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class IssuesAddSubIssueError422 extends IssuesAddSubIssueError {const IssuesAddSubIssueError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesAddSubIssueErrorUnknown extends IssuesAddSubIssueError {const IssuesAddSubIssueErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
