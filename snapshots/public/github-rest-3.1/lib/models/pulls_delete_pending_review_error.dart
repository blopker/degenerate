// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}`.
sealed class PullsDeletePendingReviewError {const PullsDeletePendingReviewError();

/// Parse the variant matching the response status code.
factory PullsDeletePendingReviewError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => PullsDeletePendingReviewError404.parse(response),
  422 => PullsDeletePendingReviewError422.parse(response),
  _ => PullsDeletePendingReviewError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class PullsDeletePendingReviewError404 extends PullsDeletePendingReviewError {const PullsDeletePendingReviewError404(this.data);

factory PullsDeletePendingReviewError404.parse(ApiResponse response) { return PullsDeletePendingReviewError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDeletePendingReviewError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsDeletePendingReviewError404($data)'; } 
 }
/// The `422` response.
@immutable final class PullsDeletePendingReviewError422 extends PullsDeletePendingReviewError {const PullsDeletePendingReviewError422(this.data);

factory PullsDeletePendingReviewError422.parse(ApiResponse response) { return PullsDeletePendingReviewError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDeletePendingReviewError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsDeletePendingReviewError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsDeletePendingReviewError$Unknown extends PullsDeletePendingReviewError {const PullsDeletePendingReviewError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDeletePendingReviewError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsDeletePendingReviewError.unknown($statusCode)'; } 
 }
