// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls/{pull_number}/comments`.
sealed class PullsCreateReviewCommentError {const PullsCreateReviewCommentError();

/// Parse the variant matching the response status code.
factory PullsCreateReviewCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsCreateReviewCommentError403.parse(response),
  422 => PullsCreateReviewCommentError422.parse(response),
  _ => PullsCreateReviewCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsCreateReviewCommentError403 extends PullsCreateReviewCommentError {const PullsCreateReviewCommentError403(this.data);

factory PullsCreateReviewCommentError403.parse(ApiResponse response) { return PullsCreateReviewCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateReviewCommentError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsCreateReviewCommentError422 extends PullsCreateReviewCommentError {const PullsCreateReviewCommentError422(this.data);

factory PullsCreateReviewCommentError422.parse(ApiResponse response) { return PullsCreateReviewCommentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewCommentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateReviewCommentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsCreateReviewCommentError$Unknown extends PullsCreateReviewCommentError {const PullsCreateReviewCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsCreateReviewCommentError.unknown($statusCode)'; } 
 }
