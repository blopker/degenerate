// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/issues/comments/{comment_id}/pin`.
sealed class IssuesPinCommentError {const IssuesPinCommentError();

/// Parse the variant matching the response status code.
factory IssuesPinCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => IssuesPinCommentError401.parse(response),
  403 => IssuesPinCommentError403.parse(response),
  404 => IssuesPinCommentError404.parse(response),
  410 => IssuesPinCommentError410.parse(response),
  422 => IssuesPinCommentError422.parse(response),
  _ => IssuesPinCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class IssuesPinCommentError401 extends IssuesPinCommentError {const IssuesPinCommentError401(this.data);

factory IssuesPinCommentError401.parse(ApiResponse response) { return IssuesPinCommentError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesPinCommentError401($data)'; } 
 }
/// The `403` response.
@immutable final class IssuesPinCommentError403 extends IssuesPinCommentError {const IssuesPinCommentError403(this.data);

factory IssuesPinCommentError403.parse(ApiResponse response) { return IssuesPinCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesPinCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesPinCommentError404 extends IssuesPinCommentError {const IssuesPinCommentError404(this.data);

factory IssuesPinCommentError404.parse(ApiResponse response) { return IssuesPinCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesPinCommentError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesPinCommentError410 extends IssuesPinCommentError {const IssuesPinCommentError410(this.data);

factory IssuesPinCommentError410.parse(ApiResponse response) { return IssuesPinCommentError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesPinCommentError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesPinCommentError422 extends IssuesPinCommentError {const IssuesPinCommentError422(this.data);

factory IssuesPinCommentError422.parse(ApiResponse response) { return IssuesPinCommentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesPinCommentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesPinCommentError$Unknown extends IssuesPinCommentError {const IssuesPinCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesPinCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesPinCommentError.unknown($statusCode)'; } 
 }
