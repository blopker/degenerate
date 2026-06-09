// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/personal-access-token-requests/{pat_request_id}`.
sealed class OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError();

/// Parse the variant matching the response status code.
factory OrgsReviewPatGrantRequestError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsReviewPatGrantRequestError403.parse(response),
  404 => OrgsReviewPatGrantRequestError404.parse(response),
  422 => OrgsReviewPatGrantRequestError422.parse(response),
  500 => OrgsReviewPatGrantRequestError500.parse(response),
  _ => OrgsReviewPatGrantRequestError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsReviewPatGrantRequestError403 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError403(this.data);

factory OrgsReviewPatGrantRequestError403.parse(ApiResponse response) { return OrgsReviewPatGrantRequestError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsReviewPatGrantRequestError404 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError404(this.data);

factory OrgsReviewPatGrantRequestError404.parse(ApiResponse response) { return OrgsReviewPatGrantRequestError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsReviewPatGrantRequestError422 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError422(this.data);

factory OrgsReviewPatGrantRequestError422.parse(ApiResponse response) { return OrgsReviewPatGrantRequestError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestError422($data)'; } 
 }
/// The `500` response.
@immutable final class OrgsReviewPatGrantRequestError500 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError500(this.data);

factory OrgsReviewPatGrantRequestError500.parse(ApiResponse response) { return OrgsReviewPatGrantRequestError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsReviewPatGrantRequestError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsReviewPatGrantRequestError$Unknown extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsReviewPatGrantRequestError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsReviewPatGrantRequestError.unknown($statusCode)'; } 
 }
