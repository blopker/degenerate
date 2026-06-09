// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/issues/{issue_number}/sub_issues`.
sealed class IssuesAddSubIssueError {const IssuesAddSubIssueError();

/// Parse the variant matching the response status code.
factory IssuesAddSubIssueError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => IssuesAddSubIssueError403.parse(response),
  404 => IssuesAddSubIssueError404.parse(response),
  410 => IssuesAddSubIssueError410.parse(response),
  422 => IssuesAddSubIssueError422.parse(response),
  _ => IssuesAddSubIssueError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class IssuesAddSubIssueError403 extends IssuesAddSubIssueError {const IssuesAddSubIssueError403(this.data);

factory IssuesAddSubIssueError403.parse(ApiResponse response) { return IssuesAddSubIssueError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddSubIssueError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddSubIssueError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesAddSubIssueError404 extends IssuesAddSubIssueError {const IssuesAddSubIssueError404(this.data);

factory IssuesAddSubIssueError404.parse(ApiResponse response) { return IssuesAddSubIssueError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddSubIssueError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddSubIssueError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesAddSubIssueError410 extends IssuesAddSubIssueError {const IssuesAddSubIssueError410(this.data);

factory IssuesAddSubIssueError410.parse(ApiResponse response) { return IssuesAddSubIssueError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddSubIssueError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddSubIssueError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesAddSubIssueError422 extends IssuesAddSubIssueError {const IssuesAddSubIssueError422(this.data);

factory IssuesAddSubIssueError422.parse(ApiResponse response) { return IssuesAddSubIssueError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddSubIssueError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddSubIssueError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesAddSubIssueError$Unknown extends IssuesAddSubIssueError {const IssuesAddSubIssueError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddSubIssueError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesAddSubIssueError.unknown($statusCode)'; } 
 }
