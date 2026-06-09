// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_unpin_comment_response503.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/issues/comments/{comment_id}/pin`.
sealed class IssuesUnpinCommentError {const IssuesUnpinCommentError();

/// Parse the variant matching the response status code.
factory IssuesUnpinCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => IssuesUnpinCommentError401.parse(response),
  403 => IssuesUnpinCommentError403.parse(response),
  404 => IssuesUnpinCommentError404.parse(response),
  410 => IssuesUnpinCommentError410.parse(response),
  503 => IssuesUnpinCommentError503.parse(response),
  _ => IssuesUnpinCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class IssuesUnpinCommentError401 extends IssuesUnpinCommentError {const IssuesUnpinCommentError401(this.data);

factory IssuesUnpinCommentError401.parse(ApiResponse response) { return IssuesUnpinCommentError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUnpinCommentError401($data)'; } 
 }
/// The `403` response.
@immutable final class IssuesUnpinCommentError403 extends IssuesUnpinCommentError {const IssuesUnpinCommentError403(this.data);

factory IssuesUnpinCommentError403.parse(ApiResponse response) { return IssuesUnpinCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUnpinCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesUnpinCommentError404 extends IssuesUnpinCommentError {const IssuesUnpinCommentError404(this.data);

factory IssuesUnpinCommentError404.parse(ApiResponse response) { return IssuesUnpinCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUnpinCommentError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesUnpinCommentError410 extends IssuesUnpinCommentError {const IssuesUnpinCommentError410(this.data);

factory IssuesUnpinCommentError410.parse(ApiResponse response) { return IssuesUnpinCommentError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUnpinCommentError410($data)'; } 
 }
/// The `503` response.
@immutable final class IssuesUnpinCommentError503 extends IssuesUnpinCommentError {const IssuesUnpinCommentError503(this.data);

factory IssuesUnpinCommentError503.parse(ApiResponse response) { return IssuesUnpinCommentError503(IssuesUnpinCommentResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final IssuesUnpinCommentResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUnpinCommentError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesUnpinCommentError$Unknown extends IssuesUnpinCommentError {const IssuesUnpinCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUnpinCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesUnpinCommentError.unknown($statusCode)'; } 
 }
