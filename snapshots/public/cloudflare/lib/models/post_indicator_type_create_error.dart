// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_indicator_type_create_response400.dart';import 'post_indicator_type_create_response500.dart';/// Error responses of `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicatorTypes/create`.
sealed class PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError();

/// Parse the variant matching the response status code.
factory PostIndicatorTypeCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PostIndicatorTypeCreateError400.parse(response),
  500 => PostIndicatorTypeCreateError500.parse(response),
  _ => PostIndicatorTypeCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PostIndicatorTypeCreateError400 extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError400(this.data);

factory PostIndicatorTypeCreateError400.parse(ApiResponse response) { return PostIndicatorTypeCreateError400(PostIndicatorTypeCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostIndicatorTypeCreateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIndicatorTypeCreateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostIndicatorTypeCreateError400($data)'; } 
 }
/// The `500` response.
@immutable final class PostIndicatorTypeCreateError500 extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError500(this.data);

factory PostIndicatorTypeCreateError500.parse(ApiResponse response) { return PostIndicatorTypeCreateError500(PostIndicatorTypeCreateResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostIndicatorTypeCreateResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIndicatorTypeCreateError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostIndicatorTypeCreateError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PostIndicatorTypeCreateError$Unknown extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIndicatorTypeCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PostIndicatorTypeCreateError.unknown($statusCode)'; } 
 }
