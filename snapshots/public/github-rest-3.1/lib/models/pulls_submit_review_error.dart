// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events`.
sealed class PullsSubmitReviewError {const PullsSubmitReviewError();

/// Parse the variant matching the response status code.
factory PullsSubmitReviewError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsSubmitReviewError403.parse(response),
  404 => PullsSubmitReviewError404.parse(response),
  422 => PullsSubmitReviewError422.parse(response),
  _ => PullsSubmitReviewError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsSubmitReviewError403 extends PullsSubmitReviewError {const PullsSubmitReviewError403(this.data);

factory PullsSubmitReviewError403.parse(ApiResponse response) { return PullsSubmitReviewError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsSubmitReviewError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsSubmitReviewError403($data)'; } 
 }
/// The `404` response.
@immutable final class PullsSubmitReviewError404 extends PullsSubmitReviewError {const PullsSubmitReviewError404(this.data);

factory PullsSubmitReviewError404.parse(ApiResponse response) { return PullsSubmitReviewError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsSubmitReviewError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsSubmitReviewError404($data)'; } 
 }
/// The `422` response.
@immutable final class PullsSubmitReviewError422 extends PullsSubmitReviewError {const PullsSubmitReviewError422(this.data);

factory PullsSubmitReviewError422.parse(ApiResponse response) { return PullsSubmitReviewError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsSubmitReviewError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsSubmitReviewError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsSubmitReviewError$Unknown extends PullsSubmitReviewError {const PullsSubmitReviewError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsSubmitReviewError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsSubmitReviewError.unknown($statusCode)'; } 
 }
