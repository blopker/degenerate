// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/issues/{issue_number}/comments`.
sealed class IssuesCreateCommentError {const IssuesCreateCommentError();

/// Parse the variant matching the response status code.
factory IssuesCreateCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => IssuesCreateCommentError403.parse(response),
  404 => IssuesCreateCommentError404.parse(response),
  410 => IssuesCreateCommentError410.parse(response),
  422 => IssuesCreateCommentError422.parse(response),
  _ => IssuesCreateCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class IssuesCreateCommentError403 extends IssuesCreateCommentError {const IssuesCreateCommentError403(this.data);

factory IssuesCreateCommentError403.parse(ApiResponse response) { return IssuesCreateCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesCreateCommentError404 extends IssuesCreateCommentError {const IssuesCreateCommentError404(this.data);

factory IssuesCreateCommentError404.parse(ApiResponse response) { return IssuesCreateCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateCommentError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesCreateCommentError410 extends IssuesCreateCommentError {const IssuesCreateCommentError410(this.data);

factory IssuesCreateCommentError410.parse(ApiResponse response) { return IssuesCreateCommentError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateCommentError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateCommentError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesCreateCommentError422 extends IssuesCreateCommentError {const IssuesCreateCommentError422(this.data);

factory IssuesCreateCommentError422.parse(ApiResponse response) { return IssuesCreateCommentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateCommentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateCommentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesCreateCommentError$Unknown extends IssuesCreateCommentError {const IssuesCreateCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesCreateCommentError.unknown($statusCode)'; } 
 }
