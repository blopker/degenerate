// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers`.
sealed class PullsRequestReviewersError {const PullsRequestReviewersError();

/// Parse the variant matching the response status code.
factory PullsRequestReviewersError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsRequestReviewersError403.parse(response),
  422 => PullsRequestReviewersError422.parse(response),
  _ => PullsRequestReviewersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsRequestReviewersError403 extends PullsRequestReviewersError {const PullsRequestReviewersError403(this.data);

factory PullsRequestReviewersError403.parse(ApiResponse response) { return PullsRequestReviewersError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsRequestReviewersError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsRequestReviewersError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsRequestReviewersError422 extends PullsRequestReviewersError {const PullsRequestReviewersError422();

factory PullsRequestReviewersError422.parse(ApiResponse _) { return const PullsRequestReviewersError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is PullsRequestReviewersError422; } 
@override int get hashCode { return (PullsRequestReviewersError422).hashCode; } 
@override String toString() { return 'PullsRequestReviewersError422()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsRequestReviewersError$Unknown extends PullsRequestReviewersError {const PullsRequestReviewersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsRequestReviewersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsRequestReviewersError.unknown($statusCode)'; } 
 }
