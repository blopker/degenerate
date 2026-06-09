// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/personal-access-token-requests`.
sealed class OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError();

/// Parse the variant matching the response status code.
factory OrgsReviewPatGrantRequestsInBulkError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsReviewPatGrantRequestsInBulkError403.parse(response),
  404 => OrgsReviewPatGrantRequestsInBulkError404.parse(response),
  422 => OrgsReviewPatGrantRequestsInBulkError422.parse(response),
  500 => OrgsReviewPatGrantRequestsInBulkError500.parse(response),
  _ => OrgsReviewPatGrantRequestsInBulkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsReviewPatGrantRequestsInBulkError403 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError403(this.data);

factory OrgsReviewPatGrantRequestsInBulkError403.parse(ApiResponse response) { return OrgsReviewPatGrantRequestsInBulkError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestsInBulkError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestsInBulkError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsReviewPatGrantRequestsInBulkError404 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError404(this.data);

factory OrgsReviewPatGrantRequestsInBulkError404.parse(ApiResponse response) { return OrgsReviewPatGrantRequestsInBulkError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestsInBulkError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestsInBulkError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsReviewPatGrantRequestsInBulkError422 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError422(this.data);

factory OrgsReviewPatGrantRequestsInBulkError422.parse(ApiResponse response) { return OrgsReviewPatGrantRequestsInBulkError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestsInBulkError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestsInBulkError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsReviewPatGrantRequestsInBulkError500 extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError500(this.data);

factory OrgsReviewPatGrantRequestsInBulkError500.parse(ApiResponse response) { return OrgsReviewPatGrantRequestsInBulkError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestsInBulkError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestsInBulkError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsReviewPatGrantRequestsInBulkError$Unknown extends OrgsReviewPatGrantRequestsInBulkError {const OrgsReviewPatGrantRequestsInBulkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestsInBulkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsReviewPatGrantRequestsInBulkError.unknown($statusCode)'; } 
 }
