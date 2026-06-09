// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/issues/comments`.
sealed class IssuesListCommentsForRepoError {const IssuesListCommentsForRepoError();

/// Parse the variant matching the response status code.
factory IssuesListCommentsForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => IssuesListCommentsForRepoError404.parse(response),
  422 => IssuesListCommentsForRepoError422.parse(response),
  _ => IssuesListCommentsForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class IssuesListCommentsForRepoError404 extends IssuesListCommentsForRepoError {const IssuesListCommentsForRepoError404(this.data);

factory IssuesListCommentsForRepoError404.parse(ApiResponse response) { return IssuesListCommentsForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListCommentsForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListCommentsForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesListCommentsForRepoError422 extends IssuesListCommentsForRepoError {const IssuesListCommentsForRepoError422(this.data);

factory IssuesListCommentsForRepoError422.parse(ApiResponse response) { return IssuesListCommentsForRepoError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListCommentsForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListCommentsForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesListCommentsForRepoError$Unknown extends IssuesListCommentsForRepoError {const IssuesListCommentsForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListCommentsForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesListCommentsForRepoError.unknown($statusCode)'; } 
 }
