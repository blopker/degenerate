// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_reprioritize_sub_issue_response503.dart';import 'validation_error_simple.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/issues/{issue_number}/sub_issues/priority`.
sealed class IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError();

/// Parse the variant matching the response status code.
factory IssuesReprioritizeSubIssueError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => IssuesReprioritizeSubIssueError403.parse(response),
  404 => IssuesReprioritizeSubIssueError404.parse(response),
  422 => IssuesReprioritizeSubIssueError422.parse(response),
  503 => IssuesReprioritizeSubIssueError503.parse(response),
  _ => IssuesReprioritizeSubIssueError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class IssuesReprioritizeSubIssueError403 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError403(this.data);

factory IssuesReprioritizeSubIssueError403.parse(ApiResponse response) { return IssuesReprioritizeSubIssueError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesReprioritizeSubIssueError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesReprioritizeSubIssueError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesReprioritizeSubIssueError404 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError404(this.data);

factory IssuesReprioritizeSubIssueError404.parse(ApiResponse response) { return IssuesReprioritizeSubIssueError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesReprioritizeSubIssueError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesReprioritizeSubIssueError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesReprioritizeSubIssueError422 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError422(this.data);

factory IssuesReprioritizeSubIssueError422.parse(ApiResponse response) { return IssuesReprioritizeSubIssueError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesReprioritizeSubIssueError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesReprioritizeSubIssueError422($data)'; } 
 }
/// The `503` response.
@immutable final class IssuesReprioritizeSubIssueError503 extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError503(this.data);

factory IssuesReprioritizeSubIssueError503.parse(ApiResponse response) { return IssuesReprioritizeSubIssueError503(IssuesReprioritizeSubIssueResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final IssuesReprioritizeSubIssueResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesReprioritizeSubIssueError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesReprioritizeSubIssueError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesReprioritizeSubIssueError$Unknown extends IssuesReprioritizeSubIssueError {const IssuesReprioritizeSubIssueError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesReprioritizeSubIssueError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesReprioritizeSubIssueError.unknown($statusCode)'; } 
 }
