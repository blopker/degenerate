// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_reprioritize_sub_issue_response503.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError();

/// Decodes the payload for its declared status and content type.
static IssuesReprioritizeSubIssueError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  IssuesReprioritizeSubIssueError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  IssuesReprioritizeSubIssueError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  IssuesReprioritizeSubIssueError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  IssuesReprioritizeSubIssueError503(IssuesReprioritizeSubIssueResponse503.fromJson(json as Map<String, dynamic>));default:
return  IssuesReprioritizeSubIssueErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class IssuesReprioritizeSubIssueError403 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesReprioritizeSubIssueError404 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesReprioritizeSubIssueError422 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// Response for 503 (application/json).
final class IssuesReprioritizeSubIssueError503 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError503(this.data);

/// The decoded response payload.
final IssuesReprioritizeSubIssueResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesReprioritizeSubIssueErrorUnknown extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
