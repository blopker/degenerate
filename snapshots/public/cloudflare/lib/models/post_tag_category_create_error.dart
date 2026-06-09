// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tag_category_create_response400.dart';import 'post_tag_category_create_response409.dart';/// Error responses of `POST /accounts/{account_id}/cloudforce-one/events/tags/categories/create`.
sealed class PostTagCategoryCreateError {const PostTagCategoryCreateError();

/// Parse the variant matching the response status code.
factory PostTagCategoryCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PostTagCategoryCreateError400.parse(response),
  409 => PostTagCategoryCreateError409.parse(response),
  _ => PostTagCategoryCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PostTagCategoryCreateError400 extends PostTagCategoryCreateError {const PostTagCategoryCreateError400(this.data);

factory PostTagCategoryCreateError400.parse(ApiResponse response) { return PostTagCategoryCreateError400(PostTagCategoryCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostTagCategoryCreateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCategoryCreateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostTagCategoryCreateError400($data)'; } 
 }
/// The `409` response.
@immutable final class PostTagCategoryCreateError409 extends PostTagCategoryCreateError {const PostTagCategoryCreateError409(this.data);

factory PostTagCategoryCreateError409.parse(ApiResponse response) { return PostTagCategoryCreateError409(PostTagCategoryCreateResponse409.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostTagCategoryCreateResponse409 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCategoryCreateError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostTagCategoryCreateError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PostTagCategoryCreateError$Unknown extends PostTagCategoryCreateError {const PostTagCategoryCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCategoryCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PostTagCategoryCreateError.unknown($statusCode)'; } 
 }
