// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesRemoveSubIssueError {const IssuesRemoveSubIssueError();

/// Decodes the payload for its declared status and content type.
static IssuesRemoveSubIssueError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  IssuesRemoveSubIssueError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  IssuesRemoveSubIssueError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  IssuesRemoveSubIssueError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 404:
final json = jsonDecode(response.body);
return  IssuesRemoveSubIssueError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  IssuesRemoveSubIssueErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class IssuesRemoveSubIssueError400ApplicationJson extends IssuesRemoveSubIssueError {const IssuesRemoveSubIssueError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class IssuesRemoveSubIssueError400ApplicationScimJson extends IssuesRemoveSubIssueError {const IssuesRemoveSubIssueError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class IssuesRemoveSubIssueError404 extends IssuesRemoveSubIssueError {const IssuesRemoveSubIssueError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesRemoveSubIssueErrorUnknown extends IssuesRemoveSubIssueError {const IssuesRemoveSubIssueErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
