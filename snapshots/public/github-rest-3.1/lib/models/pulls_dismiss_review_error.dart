// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals`.
sealed class PullsDismissReviewError {const PullsDismissReviewError();

/// Parse the variant matching the response status code.
factory PullsDismissReviewError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => PullsDismissReviewError404.parse(response),
  422 => PullsDismissReviewError422.parse(response),
  _ => PullsDismissReviewError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class PullsDismissReviewError404 extends PullsDismissReviewError {const PullsDismissReviewError404(this.data);

factory PullsDismissReviewError404.parse(ApiResponse response) { return PullsDismissReviewError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDismissReviewError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsDismissReviewError404($data)'; } 
 }
/// The `422` response.
@immutable final class PullsDismissReviewError422 extends PullsDismissReviewError {const PullsDismissReviewError422(this.data);

factory PullsDismissReviewError422.parse(ApiResponse response) { return PullsDismissReviewError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDismissReviewError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsDismissReviewError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsDismissReviewError$Unknown extends PullsDismissReviewError {const PullsDismissReviewError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsDismissReviewError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsDismissReviewError.unknown($statusCode)'; } 
 }
