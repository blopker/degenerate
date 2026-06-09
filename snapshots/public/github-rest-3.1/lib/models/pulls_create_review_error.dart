// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls/{pull_number}/reviews`.
sealed class PullsCreateReviewError {const PullsCreateReviewError();

/// Parse the variant matching the response status code.
factory PullsCreateReviewError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsCreateReviewError403.parse(response),
  422 => PullsCreateReviewError422.parse(response),
  _ => PullsCreateReviewError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsCreateReviewError403 extends PullsCreateReviewError {const PullsCreateReviewError403(this.data);

factory PullsCreateReviewError403.parse(ApiResponse response) { return PullsCreateReviewError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateReviewError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsCreateReviewError422 extends PullsCreateReviewError {const PullsCreateReviewError422(this.data);

factory PullsCreateReviewError422.parse(ApiResponse response) { return PullsCreateReviewError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateReviewError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsCreateReviewError$Unknown extends PullsCreateReviewError {const PullsCreateReviewError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateReviewError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsCreateReviewError.unknown($statusCode)'; } 
 }
